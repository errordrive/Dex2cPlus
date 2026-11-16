package com.dex2c.plus.engine;

/* JADX INFO: loaded from: classes.dex */
public final class FastZipModifier {
    public static native boolean appendFilesNative(String str, String[] strArr);

    public static native String applyRuleReplacementsNative(String str, String[] strArr, String[] strArr2);

    public static native String bytesToHexNative(byte[] bArr);

    public static native String computeFileSha256Native(String str);

    public static native String computePackageSignatureNative(byte[][] bArr, String[] strArr);

    public static native boolean copyFileNative(String str, String str2);

    public static native void deleteDirNative(String str);

    public static native byte[] extractFileFromZipNative(String str, String str2);

    public static native byte[] hexToBytesNative(String str);

    public static native String normalizeClassDescriptorNative(String str);

    public static native String normalizeLibRelativePathNative(String str);

    public static native String[] parseAxmlTargetNative(String str);

    public static native String resolveAssetsLibEntryPathNative(String str, String str2);

    public static native boolean sanitizeZipFakeEncryptionNative(String str);

    public static native String toR8IdentifierNative(int i);

    public static native boolean writeBytesNative(String str, byte[] bArr);

    static {
        try {
            System.loadLibrary("dex2cplus");
        } catch (Throwable unused) {
        }
    }

    private FastZipModifier() {
    }
}
