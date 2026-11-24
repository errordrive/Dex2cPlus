package com.dex2c.plus.engine;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public final class FastZipModifier {

    private FastZipModifier() {
    }

    public static class CountingOutputStream extends java.io.FilterOutputStream {
        private long count = 0;

        public CountingOutputStream(java.io.OutputStream out) {
            super(out);
        }

        @Override
        public void write(int b) throws java.io.IOException {
            this.out.write(b);
            this.count++;
        }

        @Override
        public void write(byte[] b, int off, int len) throws java.io.IOException {
            this.out.write(b, off, len);
            this.count += len;
        }

        public long getCount() {
            return this.count;
        }
    }

    public static byte[] cleanAlignmentExtra(byte[] extra) {
        if (extra == null || extra.length < 4) {
            return extra;
        }
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        int i = 0;
        while (i + 4 <= extra.length) {
            int tag = (extra[i] & 0xFF) | ((extra[i + 1] & 0xFF) << 8);
            int len = (extra[i + 2] & 0xFF) | ((extra[i + 3] & 0xFF) << 8);
            int total = 4 + len;
            if (i + total > extra.length) {
                break;
            }
            if (tag != 0xd935) {
                baos.write(extra, i, total);
            }
            i += total;
        }
        byte[] res = baos.toByteArray();
        return res.length > 0 ? res : null;
    }

    public static byte[] buildAlignedExtra(byte[] existingExtra, long curStreamOffset, String name, int alignment) {
        byte[] baseExtra = cleanAlignmentExtra(existingExtra);
        int baseExtraLen = (baseExtra != null ? baseExtra.length : 0);
        byte[] nameBytes = name.getBytes(StandardCharsets.UTF_8);
        long baseOffset = curStreamOffset + 30 + nameBytes.length + baseExtraLen;
        int padding = (int) ((alignment - (baseOffset % alignment)) % alignment);
        if (padding == 0) {
            return baseExtra;
        }
        if (padding < 4) {
            padding += alignment;
        }
        int dataLen = padding - 4;
        byte[] alignBlock = new byte[padding];
        alignBlock[0] = (byte) 0x35;
        alignBlock[1] = (byte) 0xd9;
        alignBlock[2] = (byte) (dataLen & 0xFF);
        alignBlock[3] = (byte) ((dataLen >> 8) & 0xFF);

        if (baseExtra == null || baseExtra.length == 0) {
            return alignBlock;
        }
        byte[] combined = new byte[baseExtra.length + padding];
        System.arraycopy(baseExtra, 0, combined, 0, baseExtra.length);
        System.arraycopy(alignBlock, 0, combined, baseExtra.length, padding);
        return combined;
    }

    public static boolean appendFilesNative(String zipPath, String[] filePairs) {
        if (zipPath == null || filePairs == null || filePairs.length == 0) {
            return false;
        }
        File origFile = new File(zipPath);
        File tempFile = new File(zipPath + ".tmp." + System.currentTimeMillis());

        Map<String, File> filesToAdd = new LinkedHashMap<>();
        if (filePairs.length % 2 == 0) {
            for (int i = 0; i < filePairs.length; i += 2) {
                String entryName = filePairs[i];
                String filePath = filePairs[i + 1];
                if (entryName != null && filePath != null) {
                    filesToAdd.put(entryName.replace('\\', '/'), new File(filePath));
                }
            }
        } else {
            for (String f : filePairs) {
                if (f != null) {
                    File file = new File(f);
                    filesToAdd.put(file.getName(), file);
                }
            }
        }

        try {
            CountingOutputStream cos = new CountingOutputStream(new BufferedOutputStream(new FileOutputStream(tempFile), 65536));
            try (ZipOutputStream zos = new ZipOutputStream(cos)) {
                Set<String> added = new HashSet<>();

                if (origFile.exists() && origFile.length() > 0) {
                    try (ZipFile zipFile = new ZipFile(origFile)) {
                        Enumeration<? extends ZipEntry> entries = zipFile.entries();
                        byte[] buffer = new byte[65536];
                        while (entries.hasMoreElements()) {
                            ZipEntry entry = entries.nextElement();
                            String name = entry.getName();
                            if (filesToAdd.containsKey(name) || ApkSignerHelper.isMetaInfSignature(name)) {
                                continue;
                            }
                            ZipEntry newEntry = new ZipEntry(name);
                            newEntry.setTime(entry.getTime());
                            if (entry.getComment() != null) newEntry.setComment(entry.getComment());
                            boolean isSo = (name.startsWith("lib/") || name.endsWith(".so"));
                            boolean isStored = isSo || (entry.getMethod() == ZipEntry.STORED);
                            if (isStored) {
                                newEntry.setMethod(ZipEntry.STORED);
                                newEntry.setSize(entry.getSize());
                                newEntry.setCompressedSize(entry.getSize());
                                newEntry.setCrc(entry.getCrc());
                                int align = isSo ? 4096 : 4;
                                newEntry.setExtra(buildAlignedExtra(entry.getExtra(), cos.getCount(), name, align));
                            } else {
                                newEntry.setMethod(ZipEntry.DEFLATED);
                                if (entry.getExtra() != null) {
                                    newEntry.setExtra(cleanAlignmentExtra(entry.getExtra()));
                                }
                            }
                            zos.putNextEntry(newEntry);
                            try (InputStream is = zipFile.getInputStream(entry)) {
                                int read;
                                while ((read = is.read(buffer)) != -1) {
                                    zos.write(buffer, 0, read);
                                }
                            }
                            zos.closeEntry();
                            added.add(name);
                        }
                    }
                }

                byte[] buffer = new byte[65536];
                for (Map.Entry<String, File> entry : filesToAdd.entrySet()) {
                    String entryName = entry.getKey();
                    File src = entry.getValue();
                    if (src.exists() && src.isFile()) {
                        ZipEntry zipEntry = new ZipEntry(entryName);
                        zipEntry.setTime(src.lastModified());
                        boolean isSo = (entryName.startsWith("lib/") || entryName.endsWith(".so"));
                        if (isSo) {
                            zipEntry.setMethod(ZipEntry.STORED);
                            zipEntry.setSize(src.length());
                            zipEntry.setCompressedSize(src.length());
                            java.util.zip.CRC32 crc = new java.util.zip.CRC32();
                            try (FileInputStream fis = new FileInputStream(src)) {
                                int read;
                                while ((read = fis.read(buffer)) != -1) {
                                    crc.update(buffer, 0, read);
                                }
                            }
                            zipEntry.setCrc(crc.getValue());
                            zipEntry.setExtra(buildAlignedExtra(null, cos.getCount(), entryName, 4096));
                        } else {
                            zipEntry.setMethod(ZipEntry.DEFLATED);
                        }
                        zos.putNextEntry(zipEntry);
                        try (FileInputStream fis = new FileInputStream(src)) {
                            int read;
                            while ((read = fis.read(buffer)) != -1) {
                                zos.write(buffer, 0, read);
                            }
                        }
                        zos.closeEntry();
                        added.add(entryName);
                    }
                }
                zos.finish();
            }
        } catch (Exception e) {
            if (tempFile.exists()) {
                tempFile.delete();
            }
            return false;
        }

        // Auto-sign APK with v1 + v2 scheme
        try {
            ApkSignerHelper.signApk(tempFile);
        } catch (Throwable ignored) {
        }

        if (origFile.exists()) {
            origFile.delete();
        }
        return tempFile.renameTo(origFile);
    }

    public static String applyRuleReplacementsNative(String text, String[] find, String[] repl) {
        if (text == null || find == null || repl == null) {
            return text;
        }
        int len = Math.min(find.length, repl.length);
        String result = text;
        for (int i = 0; i < len; i++) {
            if (find[i] != null && repl[i] != null) {
                result = result.replace(find[i], repl[i]);
            }
        }
        return result;
    }

    public static String bytesToHexNative(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format("%02x", b & 0xff));
        }
        return sb.toString();
    }

    public static byte[] hexToBytesNative(String s) {
        if (s == null || s.length() % 2 != 0) {
            return new byte[0];
        }
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i + 1), 16));
        }
        return data;
    }

    public static String computeFileSha256Native(String path) {
        if (path == null) {
            return "";
        }
        File file = new File(path);
        if (!file.exists() || !file.isFile()) {
            return "";
        }
        try (FileInputStream fis = new FileInputStream(file)) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] buffer = new byte[16384];
            int n;
            while ((n = fis.read(buffer)) != -1) {
                md.update(buffer, 0, n);
            }
            return bytesToHexNative(md.digest());
        } catch (Exception e) {
            return "";
        }
    }

    public static String computePackageSignatureNative(byte[][] certs, String[] extraStrings) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            if (certs != null) {
                for (byte[] cert : certs) {
                    if (cert != null) {
                        md.update(cert);
                    }
                }
            }
            if (extraStrings != null) {
                for (String str : extraStrings) {
                    if (str != null) {
                        md.update(str.getBytes(StandardCharsets.UTF_8));
                    }
                }
            }
            return bytesToHexNative(md.digest());
        } catch (Exception e) {
            return "";
        }
    }

    public static boolean copyFileNative(String src, String dst) {
        if (src == null || dst == null) {
            return false;
        }
        File srcFile = new File(src);
        if (!srcFile.exists() || !srcFile.isFile()) {
            return false;
        }
        File dstFile = new File(dst);
        File parent = dstFile.getParentFile();
        if (parent != null && !parent.exists()) {
            parent.mkdirs();
        }
        try (FileInputStream in = new FileInputStream(srcFile);
             FileOutputStream out = new FileOutputStream(dstFile)) {
            byte[] buf = new byte[16384];
            int n;
            while ((n = in.read(buf)) != -1) {
                out.write(buf, 0, n);
            }
            out.flush();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void deleteDirNative(String dirPath) {
        if (dirPath == null) {
            return;
        }
        File dir = new File(dirPath);
        if (!dir.exists()) {
            return;
        }
        if (dir.isDirectory()) {
            File[] children = dir.listFiles();
            if (children != null) {
                for (File child : children) {
                    deleteDirNative(child.getAbsolutePath());
                }
            }
        }
        dir.delete();
    }

    public static byte[] extractFileFromZipNative(String zipPath, String entry) {
        if (zipPath == null || entry == null) {
            return null;
        }
        try (ZipFile zip = new ZipFile(zipPath)) {
            ZipEntry ze = zip.getEntry(entry);
            if (ze == null) {
                return null;
            }
            try (InputStream is = zip.getInputStream(ze);
                 ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
                byte[] buf = new byte[16384];
                int n;
                while ((n = is.read(buf)) != -1) {
                    baos.write(buf, 0, n);
                }
                return baos.toByteArray();
            }
        } catch (Exception e) {
            return null;
        }
    }

    public static String normalizeClassDescriptorNative(String s) {
        if (s == null || s.isEmpty()) {
            return "";
        }
        String str = s.replace('.', '/').trim();
        if (!str.startsWith("L") && !str.startsWith("[")) {
            str = "L" + str;
        }
        if (!str.endsWith(";") && !str.startsWith("[")) {
            str = str + ";";
        }
        return str;
    }

    public static String normalizeLibRelativePathNative(String s) {
        if (s == null) {
            return "";
        }
        String str = s.replace('\\', '/').trim();
        while (str.startsWith("/")) {
            str = str.substring(1);
        }
        return str;
    }

    public static String resolveAssetsLibEntryPathNative(String path, String name) {
        String p = normalizeLibRelativePathNative(path);
        String n = normalizeLibRelativePathNative(name);
        if (p.isEmpty()) {
            return n;
        }
        if (n.isEmpty()) {
            return p;
        }
        if (p.endsWith("/")) {
            return p + n;
        }
        return p + "/" + n;
    }

    public static boolean sanitizeZipFakeEncryptionNative(String zipPath) {
        if (zipPath == null) {
            return false;
        }
        File file = new File(zipPath);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        try (RandomAccessFile raf = new RandomAccessFile(file, "rw")) {
            long length = raf.length();
            if (length < 22) {
                return false;
            }
            long maxComment = 65535;
            long searchStart = Math.max(0, length - 22 - maxComment);
            long eocdOffset = -1;
            for (long pos = length - 22; pos >= searchStart; pos--) {
                raf.seek(pos);
                byte b1 = raf.readByte();
                byte b2 = raf.readByte();
                byte b3 = raf.readByte();
                byte b4 = raf.readByte();
                if (b1 == 0x50 && b2 == 0x4b && b3 == 0x05 && b4 == 0x06) {
                    eocdOffset = pos;
                    break;
                }
            }
            if (eocdOffset == -1) {
                return false;
            }

            raf.seek(eocdOffset + 10);
            int totalEntries = Short.reverseBytes(raf.readShort()) & 0xffff;
            raf.seek(eocdOffset + 16);
            long cdOffset = ((long) Integer.reverseBytes(raf.readInt())) & 0xffffffffL;

            raf.seek(cdOffset);
            for (int i = 0; i < totalEntries; i++) {
                long entryHeaderPos = raf.getFilePointer();
                if (entryHeaderPos + 46 > length) break;
                int sig = Integer.reverseBytes(raf.readInt());
                if (sig != 0x02014b50) break;

                raf.seek(entryHeaderPos + 8);
                int flags = Short.reverseBytes(raf.readShort()) & 0xffff;
                if ((flags & 1) != 0) {
                    flags &= ~1;
                    raf.seek(entryHeaderPos + 8);
                    raf.writeShort(Short.reverseBytes((short) flags));
                }

                raf.seek(entryHeaderPos + 28);
                int nameLen = Short.reverseBytes(raf.readShort()) & 0xffff;
                int extraLen = Short.reverseBytes(raf.readShort()) & 0xffff;
                int commentLen = Short.reverseBytes(raf.readShort()) & 0xffff;

                raf.seek(entryHeaderPos + 42);
                long localHeaderOffset = ((long) Integer.reverseBytes(raf.readInt())) & 0xffffffffL;

                if (localHeaderOffset + 30 <= length) {
                    raf.seek(localHeaderOffset);
                    int localSig = Integer.reverseBytes(raf.readInt());
                    if (localSig == 0x04034b50) {
                        raf.seek(localHeaderOffset + 6);
                        int localFlags = Short.reverseBytes(raf.readShort()) & 0xffff;
                        if ((localFlags & 1) != 0) {
                            localFlags &= ~1;
                            raf.seek(localHeaderOffset + 6);
                            raf.writeShort(Short.reverseBytes((short) localFlags));
                        }
                    }
                }

                raf.seek(entryHeaderPos + 46 + nameLen + extraLen + commentLen);
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String toR8IdentifierNative(int i) {
        StringBuilder sb = new StringBuilder();
        int n = i;
        while (n >= 0) {
            sb.insert(0, (char) ('a' + (n % 26)));
            n = (n / 26) - 1;
        }
        return sb.toString();
    }

    public static boolean writeBytesNative(String path, byte[] data) {
        if (path == null || data == null) {
            return false;
        }
        File file = new File(path);
        File parent = file.getParentFile();
        if (parent != null && !parent.exists()) {
            parent.mkdirs();
        }
        try (FileOutputStream fos = new FileOutputStream(file)) {
            fos.write(data);
            fos.flush();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String[] parseAxmlTargetNative(String zipPath) {
        byte[] manifestData = extractFileFromZipNative(zipPath, "AndroidManifest.xml");
        if (manifestData == null || manifestData.length < 8) {
            return new String[0];
        }
        try {
            List<String> strings = new ArrayList<>();
            int stringCount = ((manifestData[19] & 0xFF) << 24) | ((manifestData[18] & 0xFF) << 16) | ((manifestData[17] & 0xFF) << 8) | (manifestData[16] & 0xFF);
            int stringsStart = ((manifestData[27] & 0xFF) << 24) | ((manifestData[26] & 0xFF) << 16) | ((manifestData[25] & 0xFF) << 8) | (manifestData[24] & 0xFF);
            int flags = ((manifestData[23] & 0xFF) << 24) | ((manifestData[22] & 0xFF) << 16) | ((manifestData[21] & 0xFF) << 8) | (manifestData[20] & 0xFF);
            boolean isUtf8 = (flags & 0x00000100) != 0;

            int stringOffsetsBase = 8 + 20;
            int poolDataStart = 8 + stringsStart;
            for (int i = 0; i < stringCount; i++) {
                int offPos = stringOffsetsBase + i * 4;
                if (offPos + 4 > manifestData.length) break;
                int strOffset = ((manifestData[offPos + 3] & 0xFF) << 24) | ((manifestData[offPos + 2] & 0xFF) << 16) | ((manifestData[offPos + 1] & 0xFF) << 8) | (manifestData[offPos] & 0xFF);
                int strStart = poolDataStart + strOffset;
                if (strStart >= manifestData.length) continue;
                if (isUtf8) {
                    int lenPos = strStart;
                    int charLen = manifestData[lenPos++] & 0xFF;
                    if ((charLen & 0x80) != 0) lenPos++;
                    int byteLen = manifestData[lenPos++] & 0xFF;
                    if ((byteLen & 0x80) != 0) byteLen = ((byteLen & 0x7F) << 8) | (manifestData[lenPos++] & 0xFF);
                    if (lenPos + byteLen <= manifestData.length) {
                        strings.add(new String(manifestData, lenPos, byteLen, StandardCharsets.UTF_8));
                    }
                } else {
                    int charLen = ((manifestData[strStart + 1] & 0xFF) << 8) | (manifestData[strStart] & 0xFF);
                    int sPos = strStart + 2;
                    if (charLen > 0 && sPos + charLen * 2 <= manifestData.length) {
                        strings.add(new String(manifestData, sPos, charLen * 2, StandardCharsets.UTF_16LE));
                    }
                }
            }
            return strings.toArray(new String[0]);
        } catch (Exception e) {
            return new String[0];
        }
    }
}
