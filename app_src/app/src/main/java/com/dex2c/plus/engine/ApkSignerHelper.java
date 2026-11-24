package com.dex2c.plus.engine;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public final class ApkSignerHelper {

    private static final String KEY_B64 =
            "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5+KuKKqeY6T67oypPYJKH8cCAsS5vNgVU"
            + "yng7r5wQ99arRwNuqa2UM2nJ7WU1n1TcOUE31iCE51sVG0VsAax0KHVZYe9cqcufL03x8OFHTUtY8C+TGzci"
            + "aNh0lyGodF1IN2k00k8ZsO3RT52isNrOr8n2+b8pztljHynNBAKJ4fyS3swrFDW4nYI/HQAN2wXyoBle898A"
            + "teVht6lj3V4wHuHyRCNt2amRaPZM/aRIQdRjiZaBYWysah5uYaA/dkoLAjiv7t7ak0LMDKErHZwfT0PxSZCq"
            + "Ig6oKhtp5z7BB2mG6IEbumM28rLi+wrEh7Wh+uUrzX0FRTuXNFL9iEW5AgMBAAECggEAEJrC2jHHyA/fUYqW"
            + "fwLc4nVz3imzvytAG5t+U7nwwdUXHjDXfhx5SpeylNx04m5I+ebEy3L7cVJk4AQQ1T1rA+4O2D21zPy+GQb0"
            + "uyrqOl8M4LKFVOmjqRdaaEKMN0m4gHeuFZDHjkAtY7hrlziaOMUaT8ppxpZY85A3P75haaUUVYB1SjEv21A0"
            + "praLJ49O7TZw50eN5n6b7DOcJj0XxahpZ9UljANG1FM9NYPEtpU2Wq0M6XpwG/GSbX6gV70/GH3RCmzp+sYv"
            + "Z85G3c6X2ZW6UoQvuINnHPFDN2hmpNG2u6MLo0RM1WlZn8H3IDTqSWeIYby/AKBn4HHDrVJV9wKBgQDiwhTN"
            + "ViOgjAO92Zl2KxukDI64RxnEZXAQ4GcXZEC6kS5SU52ckjU09qhlO5ZP3rrueHBQe3OikzEEnSy4SgSJLnh4"
            + "XWe7TxFjpUCeLLnQFHhu9UTSMaMXFSvMcI2ei6UpXONb1Kq5da0xxU7Mea+TF24wYMMUZXoFirx0Rx0i/wKB"
            + "gQDR9Bqc6fZgm/ZSGsf9jgdDbSDW8dBL0pJZ/jfQi4MWx8WTCxpnC45ICo0M2JL1uRau+VJMDzA9tjAufGVd"
            + "oPtrFIqPKMVgagKH7/iKhqCfscijqwmy/+UpCiwhDS9y9kJxR4nvYu6r7uTna1iZdW6+JOI+65WstDT5rlXI"
            + "qLlvRwKBgGYgGtZP0UPhS14Zvm/mAlDkBvMfso8tUEeJiWSTlkNwV3hkiDuX7bao0Danm47lNTNpssvMjcvO"
            + "lukJELb/PwO5ljA/gRRvC9ng9zVF13nLfmIavKAeEuG2ez9cAaxCIGR8nTkikrFsOlCMGG0m8NhCWTIYokNx"
            + "YH9WeIG19X1pAoGAWcO4LSaKxDtqUShKIUo8KMPbqoqwt/pLwFZEntFHNtIq0veITk5Ogtaf/8II8y4zWJQY"
            + "b5R+16Oxbe6ZmDJfzCR4KUURPmuUsXIUHYX53s0wL2nNN87Yt3c17tuoUcqgFba0brkpujDlhVwMAXCH7Jvw"
            + "b15iG/jgPXAgFS6uObkCgYAzpINGjchb06jU0JymKBqo/8+S55DGLib63FBunMTLU/LJ448q5yhE/OpJQzwF"
            + "5+CqCbZpJ9s6ZIJlFQviRxBnQL1DSd7I7wSTjkk9DVd0UMi3cE+lS2S89jULz+7wBZX0FAexWWPiBVW4Dhil"
            + "4T25842O97xr+rNrzzT7tohrIg==";

    private static final String CERT_B64 =
            "MIICzDCCAbSgAwIBAgICA+kwDQYJKoZIhvcNAQELBQAwKTETMBEGA1UEAwwKRGV4MmMgUGx1czESMBAGA1UE"
            + "CgwJRGV4MmNQbHVzMB4XDTI0MDEwMTAwMDAwMFoXDTQ5MDEwMTAwMDAwMFowKTETMBEGA1UEAwwKRGV4MmMg"
            + "UGx1czESMBAGA1UECgwJRGV4MmNQbHVzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAufiriiqn"
            + "mOk+u6MqT2CSh/HAgLEubzYFVMp4O6+cEPfWq0cDbqmtlDNpye1lNZ9U3DlBN9YghOdbFRtFbAGsdCh1WWHv"
            + "XKnLny9N8fDhR01LWPAvkxs3ImjYdJchqHRdSDdpNNJPGbDt0U+dorDazq/J9vm/Kc7ZYx8pzQQCieH8kt7M"
            + "KxQ1uJ2CPx0ADdsF8qAZXvPfALXlYbepY91eMB7h8kQjbdmpkWj2TP2kSEHUY4mWgWFsrGoebmGgP3ZKCwI4"
            + "r+7e2pNCzAyhKx2cH09D8UmQqiIOqCobaec+wQdphuiBG7pjNvKy4vsKxIe1ofrlK819BUU7lzRS/YhFuQID"
            + "AQABMA0GCSqGSIb3DQEBCwUAA4IBAQCQyT4Oaje8UjZPy3Dm+ohm+SgZG/X1qpFOqF+waiobs2ACk2DJtepF"
            + "6oQAyLrQ/a/6D761wvYLzgnmqDLUlpjPv20xZM8FDlgsBWDB7+PQJzOfT127NB1WpjSCTs0om8RHlMyN8vMJ"
            + "oesIVm2RGH7VyUp9AyXrv98N5/oqQeBAZPsYKFFJrV2iUq6lfcAWYsYvf6icgB1ZENsTj06GLr0XXeXtQ6cX"
            + "Fck5DzQatucF30s5Z55igqOqvQUlebO2xrsgzDFxX7AU2NC7hcT0S9BaDd4f2jYD62pmxBESEQSPuVIeXOHt"
            + "8KYFvu2bVpV2Iz2r/hHULW5NzvQB4pN97mmY";

    private ApkSignerHelper() {
    }

    public static boolean signApk(File apkFile) {
        if (apkFile == null || !apkFile.exists() || apkFile.length() < 22) {
            return false;
        }

        File parentDir = apkFile.getParentFile();
        File v1SignedFile = new File(parentDir, apkFile.getName() + ".v1." + System.currentTimeMillis());
        File v2SignedFile = new File(parentDir, apkFile.getName() + ".v2." + System.currentTimeMillis());

        try {
            byte[] keyBytes = base64Decode(KEY_B64);
            byte[] certBytes = base64Decode(CERT_B64);

            PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(keyBytes);
            KeyFactory kf = KeyFactory.getInstance("RSA");
            PrivateKey privateKey = kf.generatePrivate(keySpec);

            CertificateFactory cf = CertificateFactory.getInstance("X.509");
            X509Certificate cert = (X509Certificate) cf.generateCertificate(new ByteArrayInputStream(certBytes));
            byte[] certDer = cert.getEncoded();
            byte[] pubKeyDer = cert.getPublicKey().getEncoded();

            // 1. Calculate SHA-256 for all non-META-INF signature entries
            Map<String, String> entryDigests = new TreeMap<>();
            MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
            byte[] buffer = new byte[65536];

            try (ZipFile zipFile = new ZipFile(apkFile)) {
                Enumeration<? extends ZipEntry> en = zipFile.entries();
                while (en.hasMoreElements()) {
                    ZipEntry e = en.nextElement();
                    String name = e.getName();
                    if (isMetaInfSignature(name)) {
                        continue;
                    }
                    sha256.reset();
                    try (InputStream is = zipFile.getInputStream(e)) {
                        int r;
                        while ((r = is.read(buffer)) != -1) {
                            sha256.update(buffer, 0, r);
                        }
                    }
                    entryDigests.put(name, base64Encode(sha256.digest()));
                }

                // 2. Generate MANIFEST.MF
                StringBuilder manifestSb = new StringBuilder();
                manifestSb.append("Manifest-Version: 1.0\r\nCreated-By: 1.0 (Dex2c Plus)\r\n\r\n");

                Map<String, String> manifestSections = new HashMap<>();
                for (Map.Entry<String, String> entry : entryDigests.entrySet()) {
                    String sec = "Name: " + entry.getKey() + "\r\nSHA-256-Digest: " + entry.getValue() + "\r\n\r\n";
                    manifestSb.append(sec);
                    manifestSections.put(entry.getKey(), sec);
                }
                byte[] manifestBytes = manifestSb.toString().getBytes(StandardCharsets.UTF_8);

                // 3. Generate CERT.SF
                sha256.reset();
                byte[] mfDigest = sha256.digest(manifestBytes);
                String mfDigestB64 = base64Encode(mfDigest);

                StringBuilder sfSb = new StringBuilder();
                sfSb.append("Signature-Version: 1.0\r\nCreated-By: 1.0 (Dex2c Plus)\r\nSHA-256-Digest-Manifest: ")
                        .append(mfDigestB64)
                        .append("\r\nX-Android-APK-Signed: 2\r\n\r\n");

                for (Map.Entry<String, String> entry : entryDigests.entrySet()) {
                    String sec = manifestSections.get(entry.getKey());
                    sha256.reset();
                    byte[] secDigest = sha256.digest(sec.getBytes(StandardCharsets.UTF_8));
                    String secB64 = base64Encode(secDigest);
                    sfSb.append("Name: ").append(entry.getKey()).append("\r\nSHA-256-Digest: ").append(secB64).append("\r\n\r\n");
                }
                byte[] sfBytes = sfSb.toString().getBytes(StandardCharsets.UTF_8);

                // 4. Generate CERT.RSA
                Signature rsaSigner = Signature.getInstance("SHA256withRSA");
                rsaSigner.initSign(privateKey);
                rsaSigner.update(sfBytes);
                byte[] v1Signature = rsaSigner.sign();
                byte[] pkcs7Der = createPkcs7SignedData(cert, certDer, v1Signature);

                // 5. Re-write ZIP with v1 signature entries at beginning
                try (ZipOutputStream zos = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(v1SignedFile), 65536))) {
                    ZipEntry zeMf = new ZipEntry("META-INF/MANIFEST.MF");
                    zos.putNextEntry(zeMf);
                    zos.write(manifestBytes);
                    zos.closeEntry();

                    ZipEntry zeSf = new ZipEntry("META-INF/CERT.SF");
                    zos.putNextEntry(zeSf);
                    zos.write(sfBytes);
                    zos.closeEntry();

                    ZipEntry zeRsa = new ZipEntry("META-INF/CERT.RSA");
                    zos.putNextEntry(zeRsa);
                    zos.write(pkcs7Der);
                    zos.closeEntry();

                    en = zipFile.entries();
                    while (en.hasMoreElements()) {
                        ZipEntry e = en.nextElement();
                        String name = e.getName();
                        if (isMetaInfSignature(name)) {
                            continue;
                        }
                        ZipEntry newEntry = new ZipEntry(name);
                        newEntry.setTime(e.getTime());
                        if (e.getComment() != null) newEntry.setComment(e.getComment());
                        if (e.getExtra() != null) newEntry.setExtra(e.getExtra());

                        boolean shouldStore = (name.startsWith("lib/") || name.endsWith(".so"));
                        if (shouldStore || e.getMethod() == ZipEntry.STORED) {
                            newEntry.setMethod(ZipEntry.STORED);
                            newEntry.setSize(e.getSize());
                            newEntry.setCompressedSize(e.getSize());
                            newEntry.setCrc(e.getCrc());
                        }
                        zos.putNextEntry(newEntry);
                        try (InputStream is = zipFile.getInputStream(e)) {
                            int r;
                            while ((r = is.read(buffer)) != -1) {
                                zos.write(buffer, 0, r);
                            }
                        }
                        zos.closeEntry();
                    }
                    zos.finish();
                }
            }

            // 6. Apply APK Signature Scheme v2
            applyApkSigningBlockV2(v1SignedFile, v2SignedFile, privateKey, certDer, pubKeyDer);

            if (v1SignedFile.exists()) {
                v1SignedFile.delete();
            }
            if (apkFile.exists()) {
                apkFile.delete();
            }
            return v2SignedFile.renameTo(apkFile);

        } catch (Throwable t) {
            if (v1SignedFile.exists()) {
                v1SignedFile.delete();
            }
            if (v2SignedFile.exists()) {
                v2SignedFile.delete();
            }
            return false;
        }
    }

    public static boolean isMetaInfSignature(String name) {
        if (name == null || !name.startsWith("META-INF/")) {
            return false;
        }
        String upper = name.toUpperCase(Locale.ROOT);
        return upper.endsWith(".SF")
                || upper.endsWith(".RSA")
                || upper.endsWith(".DSA")
                || upper.endsWith(".EC")
                || upper.equals("META-INF/MANIFEST.MF")
                || upper.startsWith("META-INF/SIG-");
    }

    private static void applyApkSigningBlockV2(File srcZip, File destApk, PrivateKey privateKey, byte[] certDer, byte[] pubKeyDer) throws Exception {
        long fileLen = srcZip.length();
        if (fileLen < 22) {
            throw new IllegalStateException("ZIP too small");
        }

        int readLen = (int) Math.min(fileLen, 65536);
        byte[] tail = new byte[readLen];
        long tailOffset = fileLen - readLen;
        try (RandomAccessFile raf = new RandomAccessFile(srcZip, "r")) {
            raf.seek(tailOffset);
            raf.readFully(tail);
        }

        int eocdTailIdx = -1;
        for (int i = tail.length - 22; i >= 0; i--) {
            if (tail[i] == 0x50 && tail[i + 1] == 0x4b && tail[i + 2] == 0x05 && tail[i + 3] == 0x06) {
                eocdTailIdx = i;
                break;
            }
        }
        if (eocdTailIdx == -1) {
            throw new IllegalStateException("EOCD not found");
        }

        ByteBuffer tailBuf = ByteBuffer.wrap(tail).order(ByteOrder.LITTLE_ENDIAN);
        long cdSize = tailBuf.getInt(eocdTailIdx + 12) & 0xffffffffL;
        long cdOffset = tailBuf.getInt(eocdTailIdx + 16) & 0xffffffffL;

        byte[] eocdBytes = Arrays.copyOfRange(tail, eocdTailIdx, tail.length);
        ByteBuffer eocdMod = ByteBuffer.wrap(eocdBytes).order(ByteOrder.LITTLE_ENDIAN);
        eocdMod.putInt(16, (int) cdOffset);

        List<byte[]> digests = new ArrayList<>();
        try (RandomAccessFile raf = new RandomAccessFile(srcZip, "r")) {
            addFileRangeDigests(raf, 0, cdOffset, digests);
            addFileRangeDigests(raf, cdOffset, cdSize, digests);
            addMemoryDigests(eocdBytes, digests);
        }

        ByteArrayOutputStream topDigestBaos = new ByteArrayOutputStream();
        topDigestBaos.write(0x5a);
        ByteBuffer numBuf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        numBuf.putInt(digests.size());
        topDigestBaos.write(numBuf.array());
        for (byte[] d : digests) {
            topDigestBaos.write(d);
        }
        MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
        byte[] topDigest = sha256.digest(topDigestBaos.toByteArray());

        ByteBuffer digestInner = ByteBuffer.allocate(4 + 4 + topDigest.length).order(ByteOrder.LITTLE_ENDIAN);
        digestInner.putInt(0x0103);
        digestInner.putInt(topDigest.length);
        digestInner.put(topDigest);
        byte[] digestEntry = prefixLength(digestInner.array());
        byte[] digestsSeq = prefixLength(digestEntry);

        byte[] certEntry = prefixLength(certDer);
        byte[] certsSeq = prefixLength(certEntry);

        ByteBuffer attrsBuf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        attrsBuf.putInt(0);
        byte[] attrsSeq = attrsBuf.array();

        byte[] v2SignedData = concat(digestsSeq, certsSeq, attrsSeq);
        byte[] v2SignedDataPrefixed = prefixLength(v2SignedData);

        Signature rsa = Signature.getInstance("SHA256withRSA");
        rsa.initSign(privateKey);
        rsa.update(v2SignedData);
        byte[] v2Sig = rsa.sign();

        ByteBuffer sigInner = ByteBuffer.allocate(4 + 4 + v2Sig.length).order(ByteOrder.LITTLE_ENDIAN);
        sigInner.putInt(0x0103);
        sigInner.putInt(v2Sig.length);
        sigInner.put(v2Sig);
        byte[] sigEntry = prefixLength(sigInner.array());
        byte[] sigsSeq = prefixLength(sigEntry);

        byte[] pubKeySeq = prefixLength(pubKeyDer);

        byte[] signer = concat(v2SignedDataPrefixed, sigsSeq, pubKeySeq);
        byte[] signerPrefixed = prefixLength(signer);
        byte[] signersSeq = prefixLength(signerPrefixed);

        ByteBuffer pairIdBuf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        pairIdBuf.putInt(0x7109871a);
        byte[] v2Pair = concat(pairIdBuf.array(), signersSeq);

        ByteBuffer pairLenBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        pairLenBuf.putLong(v2Pair.length);
        byte[] v2PairPrefixed = concat(pairLenBuf.array(), v2Pair);

        long blockContentSize = v2PairPrefixed.length + 8 + 16;
        long fullBlockSize = 8 + blockContentSize;

        ByteBuffer blockContentSizeBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        blockContentSizeBuf.putLong(blockContentSize);

        byte[] magic = "APK Sig Block 42".getBytes(StandardCharsets.US_ASCII);
        byte[] apkSigningBlock = concat(blockContentSizeBuf.array(), v2PairPrefixed, blockContentSizeBuf.array(), magic);

        eocdMod.putInt(16, (int) (cdOffset + fullBlockSize));

        try (RandomAccessFile srcRaf = new RandomAccessFile(srcZip, "r");
             OutputStream fos = new BufferedOutputStream(new FileOutputStream(destApk), 65536)) {
            copyRange(srcRaf, 0, cdOffset, fos);
            fos.write(apkSigningBlock);
            copyRange(srcRaf, cdOffset, cdSize, fos);
            fos.write(eocdBytes);
        }
    }

    private static void copyRange(RandomAccessFile src, long offset, long len, OutputStream out) throws IOException {
        src.seek(offset);
        byte[] buf = new byte[65536];
        long remaining = len;
        while (remaining > 0) {
            int toRead = (int) Math.min(buf.length, remaining);
            int r = src.read(buf, 0, toRead);
            if (r == -1) break;
            out.write(buf, 0, r);
            remaining -= r;
        }
    }

    private static void addFileRangeDigests(RandomAccessFile raf, long offset, long length, List<byte[]> digests) throws Exception {
        MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
        raf.seek(offset);
        int chunkSize = 1048576;
        byte[] chunk = new byte[chunkSize];
        long remaining = length;
        while (remaining > 0) {
            int toRead = (int) Math.min(chunkSize, remaining);
            raf.readFully(chunk, 0, toRead);
            ByteBuffer prefix = ByteBuffer.allocate(5).order(ByteOrder.LITTLE_ENDIAN);
            prefix.put((byte) 0xa5);
            prefix.putInt(toRead);
            sha256.reset();
            sha256.update(prefix.array());
            sha256.update(chunk, 0, toRead);
            digests.add(sha256.digest());
            remaining -= toRead;
        }
    }

    private static void addMemoryDigests(byte[] section, List<byte[]> digests) throws Exception {
        MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
        int chunkSize = 1048576;
        for (int i = 0; i < section.length; i += chunkSize) {
            int len = Math.min(chunkSize, section.length - i);
            ByteBuffer prefix = ByteBuffer.allocate(5).order(ByteOrder.LITTLE_ENDIAN);
            prefix.put((byte) 0xa5);
            prefix.putInt(len);
            sha256.reset();
            sha256.update(prefix.array());
            sha256.update(section, i, len);
            digests.add(sha256.digest());
        }
    }

    private static byte[] createPkcs7SignedData(X509Certificate cert, byte[] certDer, byte[] signature) throws Exception {
        byte[] issuerDer = cert.getIssuerX500Principal().getEncoded();
        BigInteger serial = cert.getSerialNumber();

        byte[] sha256Alg = encodeTlv(0x30, hexToBytes("06096086480165030402010500"));
        byte[] rsaAlg = encodeTlv(0x30, hexToBytes("06092a864886f70d0101010500"));

        byte[] serialDer = encodeInteger(serial);
        byte[] issuerAndSerial = encodeTlv(0x30, concat(issuerDer, serialDer));
        byte[] encDigest = encodeTlv(0x04, signature);

        byte[] signerInfo = encodeTlv(0x30, concat(encodeInteger(BigInteger.ONE), issuerAndSerial, sha256Alg, rsaAlg, encDigest));
        byte[] signerInfos = encodeTlv(0x31, signerInfo);

        byte[] dataOid = hexToBytes("06092a864886f70d010701");
        byte[] contentInfo = encodeTlv(0x30, dataOid);
        byte[] certSet = encodeTlv(0xa0, certDer);

        byte[] signedDataContent = concat(encodeInteger(BigInteger.ONE), encodeTlv(0x31, sha256Alg), contentInfo, certSet, signerInfos);
        byte[] signedDataSeq = encodeTlv(0x30, signedDataContent);
        byte[] signedDataOid = hexToBytes("06092a864886f70d010702");

        return encodeTlv(0x30, concat(signedDataOid, encodeTlv(0xa0, signedDataSeq)));
    }

    private static byte[] prefixLength(byte[] data) {
        ByteBuffer buf = ByteBuffer.allocate(4 + data.length).order(ByteOrder.LITTLE_ENDIAN);
        buf.putInt(data.length);
        buf.put(data);
        return buf.array();
    }

    private static byte[] encodeInteger(BigInteger val) {
        byte[] b = val.toByteArray();
        return encodeTlv(0x02, b);
    }

    private static byte[] encodeTlv(int tag, byte[] val) {
        int l = val.length;
        byte[] header;
        if (l < 128) {
            header = new byte[]{(byte) tag, (byte) l};
        } else if (l < 256) {
            header = new byte[]{(byte) tag, (byte) 0x81, (byte) l};
        } else if (l < 65536) {
            header = new byte[]{(byte) tag, (byte) 0x82, (byte) ((l >> 8) & 0xff), (byte) (l & 0xff)};
        } else {
            header = new byte[]{(byte) tag, (byte) 0x83, (byte) ((l >> 16) & 0xff), (byte) ((l >> 8) & 0xff), (byte) (l & 0xff)};
        }
        return concat(header, val);
    }

    private static byte[] concat(byte[]... arrays) {
        int total = 0;
        for (byte[] a : arrays) total += a.length;
        byte[] res = new byte[total];
        int offset = 0;
        for (byte[] a : arrays) {
            System.arraycopy(a, 0, res, offset, a.length);
            offset += a.length;
        }
        return res;
    }

    private static byte[] hexToBytes(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i + 1), 16));
        }
        return data;
    }

    private static final char[] B64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    private static final byte[] B64_LOOKUP = new byte[256];

    static {
        Arrays.fill(B64_LOOKUP, (byte) -1);
        for (int i = 0; i < B64_CHARS.length; i++) {
            B64_LOOKUP[B64_CHARS[i]] = (byte) i;
        }
    }

    public static String base64Encode(byte[] data) {
        if (data == null || data.length == 0) return "";
        StringBuilder sb = new StringBuilder(((data.length + 2) / 3) * 4);
        int i = 0;
        while (i < data.length) {
            int b0 = data[i++] & 0xff;
            int b1 = (i < data.length) ? (data[i++] & 0xff) : -1;
            int b2 = (i < data.length) ? (data[i++] & 0xff) : -1;

            sb.append(B64_CHARS[b0 >>> 2]);
            if (b1 != -1) {
                sb.append(B64_CHARS[((b0 & 0x03) << 4) | (b1 >>> 4)]);
                if (b2 != -1) {
                    sb.append(B64_CHARS[((b1 & 0x0f) << 2) | (b2 >>> 6)]);
                    sb.append(B64_CHARS[b2 & 0x3f]);
                } else {
                    sb.append(B64_CHARS[(b1 & 0x0f) << 2]);
                    sb.append('=');
                }
            } else {
                sb.append(B64_CHARS[(b0 & 0x03) << 4]);
                sb.append("==");
            }
        }
        return sb.toString();
    }

    public static byte[] base64Decode(String str) {
        if (str == null || str.isEmpty()) return new byte[0];
        ByteArrayOutputStream baos = new ByteArrayOutputStream(str.length() * 3 / 4);
        int bits = 0;
        int bitCount = 0;
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (c >= 256) continue;
            int val = B64_LOOKUP[c];
            if (val >= 0) {
                bits = (bits << 6) | val;
                bitCount += 6;
                if (bitCount >= 8) {
                    bitCount -= 8;
                    baos.write((bits >>> bitCount) & 0xff);
                }
            }
        }
        return baos.toByteArray();
    }
}
