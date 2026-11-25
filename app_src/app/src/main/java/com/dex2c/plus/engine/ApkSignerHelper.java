package com.dex2c.plus.engine;

import com.dex2c.plus.model.ProjectState;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
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
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public final class ApkSignerHelper {

    private static final String KEY_B64 =
            "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAECggEBAJV5THRnp+dYULZnXBLsmF5cIsGIwE/86MHpHbJkMgQSRXjxZySi/+tYt0Quqwh5n9D+B0DjuYxU+h3Lr1PlpINPBoWAT4uZLdzwfph/s8f99J/Fqv5LiUhLt4qdY5B6GZfO9+sbKouM/5MZ+YNC1qJOevYeo7oA6xcFIahdrmEoVprtbZjB4wRimbpDqdAktePxXOfsGe8vCXYflt/kV+VwjZmnnggwh3t6rm2A5LutVz0Zb3e1rALyX3J2lo/JpFZ1wNW5vXa0ba8u963DAzoq2fFS3Ag+rP5Bt34KJ4a3GPaGAGQUuzrucNQxDhuRz1BDrvpqZc1DTC5onK+j6uUCgYEA63+xyyGJiWvJYERJgUcP3wcBKKCPMRkqr6XFzRsoWG/dvEgrOMlWX560M5M8klb71512rEePlEcFLu1tW6zFCnIzYTAC5w4QUxoW5cGtsY8gxphL+enjXwixkq8QoMUlWMlwu6VR1NkuBxJjpUkCGDfoKvx9YFIVaEy9rG6uXd8CgYEA5Tq/5nX4cLuBfgx2fc3Br+HVFCUx/fGtdoRVi8YhyneURgWkztRoFtiWU6FN7dm9pDMl2jM3AMLk77EKOMwVyU22zZGPfA7PxPvcTyAtMEbjPXcrgHHe0LXMV4+sq+O0/G3e2D8kRL6aRwwW+9/ZQ08cupZ86uLiB308aKT/b0MCgYB3PhEoabLagllVBT6y1uiSZVmQ2LuogLW8epPNZxLmtL3xuBkqh8fUYuebtdHVx3V9l52fXhy1V8CoIlBdOv4KbAjYDRdrJxPdADjX3Vm1rmNKK5NM18DpPd2sCDjDLw/aBSWv3eWxgMZtjkImTvFgke5c1bwmKWnthe4EgYaIwQKBgCTZL9X1Ks28ZpGDoVyRwcvrKpyFaibfPboqhbHlVLM+S7iB2b9hx6W8hVXGPUe509FcY35S80mNCs45EGKW8/2bH4KmHoGbw+xvbDfP/VOgYZEU4gpQw7ebMdD1iJVNEl/trX/njoX6ecRn/h3ZGwzF3+FipYwAksMPb7GGrIUPAoGAF/wYSoZSADP/mCaRhjvKEBr0+f8brCtmQhn7bCDLeaHnT9M5r2R/jzO30dCRSMxxepRb1e/N5IVAyIB3dKKo68mPn8SRL4DHbxzz4XoDebi5++4u8mwcsJXsddZZ0hWFQAxt6/P8Oodk2AnAySF1OZ0bE4hWiZRpQHjlG238G9s=";

    private static final String CERT_B64 =
            "MIICyDCCAbCgAwIBAgIENiws+DANBgkqhkiG9w0BAQsFADAlMQswCQYDVQQGEwJCRDEWMBQGA1UEAxMNTmF5ZW0gSG9zc2FpbjAgFw0yNTAyMjAxNjAxMjVaGA8yMTI1MDEyNzE2MDEyNVowJTELMAkGA1UEBhMCQkQxFjAUBgNVBAMTDU5heWVtIEhvc3NhaW4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAI6U/sw5Te1J14jM02aIkYqP7h6jkhMuyjexkimZUGBl/pNqFEVrlqRtiQ7HN/k4o7UigAd1Z9XleKS1UIo9XI6cPdgJx3FtO+z0t0knnBTfXKVWYuuUz57gOEbYvhBa+10DHlvTELhuLQxWIlTjssFTkIOCoj8aCS0xJBCNxd9hW2UKha4VygA8gACHEt2VbMJbrJ5R1rUYi5lx0F3R+vkioRFkwky68S7r9SjgjBXlHWihTxnQUQBkAMTfx3QD1FABAT48uYxgg9hG16RC71eLSpypeV4fm2KXcJCfF5CsI1KJZHSAbXQDL81RtwFi1dlEd2NXS5tbusyuymMCcbQ=";

    public static class SigningCredentials {
        public PrivateKey privateKey;
        public X509Certificate cert;
        public byte[] certDer;
        public byte[] pubKeyDer;
    }

    private ApkSignerHelper() {
    }

    public static SigningCredentials loadSigningCredentials(String customKeyPath) {
        File keyFile = null;
        if (customKeyPath != null && !customKeyPath.trim().isEmpty()) {
            File f = new File(customKeyPath.trim());
            if (f.exists() && f.isFile()) {
                keyFile = f;
            }
        }
        if (keyFile == null) {
            File defMt = new File("/storage/emulated/0/MT2/keys/signature.key");
            if (defMt.exists() && defMt.isFile()) {
                keyFile = defMt;
            }
        }

        if (keyFile != null) {
            try (DataInputStream dis = new DataInputStream(new FileInputStream(keyFile))) {
                int magic = dis.readInt();
                if (magic == 0xacd223ab) {
                    int certLen = dis.readInt();
                    byte[] certPemBytes = new byte[certLen];
                    dis.readFully(certPemBytes);
                    CertificateFactory cf = CertificateFactory.getInstance("X.509");
                    X509Certificate cert = (X509Certificate) cf.generateCertificate(new ByteArrayInputStream(certPemBytes));
                    int keyLen = dis.readInt();
                    byte[] keyBytes = new byte[keyLen];
                    dis.readFully(keyBytes);
                    PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(keyBytes);
                    KeyFactory kf = KeyFactory.getInstance("RSA");
                    PrivateKey priv = kf.generatePrivate(spec);

                    SigningCredentials creds = new SigningCredentials();
                    creds.privateKey = priv;
                    creds.cert = cert;
                    creds.certDer = cert.getEncoded();
                    creds.pubKeyDer = cert.getPublicKey().getEncoded();
                    return creds;
                }
            } catch (Throwable ignored) {
            }
        }

        try {
            byte[] keyBytes = base64Decode(KEY_B64);
            byte[] certBytes = base64Decode(CERT_B64);
            PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(keyBytes);
            KeyFactory kf = KeyFactory.getInstance("RSA");
            PrivateKey privateKey = kf.generatePrivate(keySpec);

            CertificateFactory cf = CertificateFactory.getInstance("X.509");
            X509Certificate cert = (X509Certificate) cf.generateCertificate(new ByteArrayInputStream(certBytes));

            SigningCredentials creds = new SigningCredentials();
            creds.privateKey = privateKey;
            creds.cert = cert;
            creds.certDer = cert.getEncoded();
            creds.pubKeyDer = cert.getPublicKey().getEncoded();
            return creds;
        } catch (Throwable t) {
            throw new RuntimeException("Failed to initialize built-in stealth signing credentials", t);
        }
    }

    public static boolean signApk(File apkFile) {
        ProjectState state = ProjectState.get();
        boolean s1 = (state != null) ? state.signV1 : true;
        boolean s2 = (state != null) ? state.signV2 : true;
        boolean s3 = (state != null) ? state.signV3 : true;
        String keyPath = (state != null) ? state.customKeyPath : "/storage/emulated/0/MT2/keys/signature.key";
        return signApk(apkFile, s1, s2, s3, keyPath);
    }

    public static boolean signApk(File apkFile, boolean signV1, boolean signV2, boolean signV3, String customKeyPath) {
        if (apkFile == null || !apkFile.exists() || apkFile.length() < 22) {
            return false;
        }

        if (!signV1 && !signV2 && !signV3) {
            signV1 = true;
            signV2 = true;
            signV3 = true;
        }

        File parentDir = apkFile.getParentFile();
        File v1SignedFile = new File(parentDir, apkFile.getName() + ".v1." + System.currentTimeMillis());
        File v2SignedFile = new File(parentDir, apkFile.getName() + ".v2." + System.currentTimeMillis());

        try {
            SigningCredentials creds = loadSigningCredentials(customKeyPath);
            PrivateKey privateKey = creds.privateKey;
            X509Certificate cert = creds.cert;
            byte[] certDer = creds.certDer;
            byte[] pubKeyDer = creds.pubKeyDer;

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

                FastZipModifier.CountingOutputStream cos = new FastZipModifier.CountingOutputStream(
                        new BufferedOutputStream(new FileOutputStream(v1SignedFile), 65536));
                try (ZipOutputStream zos = new ZipOutputStream(cos)) {
                    if (signV1) {
                        // 1. Generate MANIFEST.MF with zero Dex2c Plus traces
                        StringBuilder manifestSb = new StringBuilder();
                        manifestSb.append("Manifest-Version: 1.0\r\nCreated-By: 1.0 (Android SignApk)\r\n\r\n");

                        Map<String, String> manifestSections = new HashMap<>();
                        for (Map.Entry<String, String> entry : entryDigests.entrySet()) {
                            String sec = "Name: " + entry.getKey() + "\r\nSHA-256-Digest: " + entry.getValue() + "\r\n\r\n";
                            manifestSb.append(sec);
                            manifestSections.put(entry.getKey(), sec);
                        }
                        byte[] manifestBytes = manifestSb.toString().getBytes(StandardCharsets.UTF_8);

                        // 2. Generate CERT.SF
                        sha256.reset();
                        byte[] mfDigest = sha256.digest(manifestBytes);
                        String mfDigestB64 = base64Encode(mfDigest);

                        StringBuilder sfSb = new StringBuilder();
                        sfSb.append("Signature-Version: 1.0\r\nCreated-By: 1.0 (Android SignApk)\r\nSHA-256-Digest-Manifest: ")
                                .append(mfDigestB64)
                                .append("\r\n");

                        if (signV2 && signV3) {
                            sfSb.append("X-Android-APK-Signed: 2, 3\r\n\r\n");
                        } else if (signV2) {
                            sfSb.append("X-Android-APK-Signed: 2\r\n\r\n");
                        } else if (signV3) {
                            sfSb.append("X-Android-APK-Signed: 3\r\n\r\n");
                        } else {
                            sfSb.append("\r\n");
                        }

                        for (Map.Entry<String, String> entry : entryDigests.entrySet()) {
                            String sec = manifestSections.get(entry.getKey());
                            sha256.reset();
                            byte[] secDigest = sha256.digest(sec.getBytes(StandardCharsets.UTF_8));
                            String secB64 = base64Encode(secDigest);
                            sfSb.append("Name: ").append(entry.getKey()).append("\r\nSHA-256-Digest: ").append(secB64).append("\r\n\r\n");
                        }
                        byte[] sfBytes = sfSb.toString().getBytes(StandardCharsets.UTF_8);

                        // 3. Generate CERT.RSA
                        Signature rsaSigner = Signature.getInstance("SHA256withRSA");
                        rsaSigner.initSign(privateKey);
                        rsaSigner.update(sfBytes);
                        byte[] v1Signature = rsaSigner.sign();
                        byte[] pkcs7Der = createPkcs7SignedData(cert, certDer, v1Signature);

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
                    }

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

                        boolean isSo = (name.startsWith("lib/") || name.endsWith(".so"));
                        boolean isStored = isSo || (e.getMethod() == ZipEntry.STORED);
                        if (isStored) {
                            newEntry.setMethod(ZipEntry.STORED);
                            newEntry.setSize(e.getSize());
                            newEntry.setCompressedSize(e.getSize());
                            newEntry.setCrc(e.getCrc());
                            int align = isSo ? 4096 : 4;
                            newEntry.setExtra(FastZipModifier.buildAlignedExtra(e.getExtra(), cos.getCount(), name, align));
                        } else {
                            newEntry.setMethod(ZipEntry.DEFLATED);
                            if (e.getExtra() != null) {
                                newEntry.setExtra(FastZipModifier.cleanAlignmentExtra(e.getExtra()));
                            }
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

            applyApkSigningBlock(v1SignedFile, v2SignedFile, privateKey, certDer, pubKeyDer, signV2, signV3);

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

    private static void applyApkSigningBlock(File srcZip, File destApk, PrivateKey privateKey, byte[] certDer, byte[] pubKeyDer, boolean signV2, boolean signV3) throws Exception {
        if (!signV2 && !signV3) {
            try (InputStream in = new FileInputStream(srcZip); OutputStream out = new FileOutputStream(destApk)) {
                byte[] buf = new byte[65536];
                int r;
                while ((r = in.read(buf)) != -1) {
                    out.write(buf, 0, r);
                }
            }
            return;
        }

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

        byte[] pubKeySeq = prefixLength(pubKeyDer);

        Signature rsa = Signature.getInstance("SHA256withRSA");
        ByteArrayOutputStream pairsBaos = new ByteArrayOutputStream();

        // 1. APK Signature Scheme v2 (ID: 0x7109871a)
        if (signV2) {
            byte[] v2SignedData = concat(digestsSeq, certsSeq, attrsSeq);
            byte[] v2SignedDataPrefixed = prefixLength(v2SignedData);

            rsa.initSign(privateKey);
            rsa.update(v2SignedData);
            byte[] v2Sig = rsa.sign();

            ByteBuffer sigInner = ByteBuffer.allocate(4 + 4 + v2Sig.length).order(ByteOrder.LITTLE_ENDIAN);
            sigInner.putInt(0x0103);
            sigInner.putInt(v2Sig.length);
            sigInner.put(v2Sig);
            byte[] sigEntry = prefixLength(sigInner.array());
            byte[] sigsSeq = prefixLength(sigEntry);

            byte[] signer = concat(v2SignedDataPrefixed, sigsSeq, pubKeySeq);
            byte[] signerPrefixed = prefixLength(signer);
            byte[] signersSeq = prefixLength(signerPrefixed);

            ByteBuffer pairIdBuf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
            pairIdBuf.putInt(0x7109871a);
            byte[] v2Pair = concat(pairIdBuf.array(), signersSeq);

            ByteBuffer pairLenBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
            pairLenBuf.putLong(v2Pair.length);
            pairsBaos.write(concat(pairLenBuf.array(), v2Pair));
        }

        // 2. APK Signature Scheme v3 (ID: 0xf05368c0)
        if (signV3) {
            ByteBuffer sdkBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
            sdkBuf.putInt(24);          // minSdkVersion (Android 7.0+)
            sdkBuf.putInt(0x7fffffff);  // maxSdkVersion
            byte[] sdkBytes = sdkBuf.array();

            byte[] v3SignedData = concat(digestsSeq, certsSeq, sdkBytes, attrsSeq);
            byte[] v3SignedDataPrefixed = prefixLength(v3SignedData);

            rsa.initSign(privateKey);
            rsa.update(v3SignedData);
            byte[] v3Sig = rsa.sign();

            ByteBuffer sigInner = ByteBuffer.allocate(4 + 4 + v3Sig.length).order(ByteOrder.LITTLE_ENDIAN);
            sigInner.putInt(0x0103);
            sigInner.putInt(v3Sig.length);
            sigInner.put(v3Sig);
            byte[] sigEntry = prefixLength(sigInner.array());
            byte[] sigsSeq = prefixLength(sigEntry);

            byte[] v3Signer = concat(v3SignedDataPrefixed, sdkBytes, sigsSeq, pubKeySeq);
            byte[] v3SignerPrefixed = prefixLength(v3Signer);
            byte[] v3SignersSeq = prefixLength(v3SignerPrefixed);

            ByteBuffer pairIdBuf = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
            pairIdBuf.putInt(0xf05368c0);
            byte[] v3Pair = concat(pairIdBuf.array(), v3SignersSeq);

            ByteBuffer pairLenBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
            pairLenBuf.putLong(v3Pair.length);
            pairsBaos.write(concat(pairLenBuf.array(), v3Pair));
        }

        byte[] signingPairs = pairsBaos.toByteArray();
        long blockContentSize = signingPairs.length + 8 + 16;
        long fullBlockSize = 8 + blockContentSize;

        ByteBuffer blockContentSizeBuf = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        blockContentSizeBuf.putLong(blockContentSize);

        byte[] magic = "APK Sig Block 42".getBytes(StandardCharsets.US_ASCII);
        byte[] apkSigningBlock = concat(blockContentSizeBuf.array(), signingPairs, blockContentSizeBuf.array(), magic);

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
