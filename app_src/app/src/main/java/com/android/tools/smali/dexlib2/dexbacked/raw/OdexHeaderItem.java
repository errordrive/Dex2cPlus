package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;

/* JADX INFO: loaded from: classes.dex */
public class OdexHeaderItem {
    public static final int AUX_LENGTH_OFFSET = 28;
    public static final int AUX_OFFSET = 24;
    public static final int DEPENDENCIES_LENGTH_OFFSET = 20;
    public static final int DEPENDENCIES_OFFSET = 16;
    public static final int DEX_LENGTH_OFFSET = 12;
    public static final int DEX_OFFSET = 8;
    public static final int FLAGS_OFFSET = 32;
    public static final int ITEM_SIZE = 40;
    public static final int MAGIC_LENGTH = 8;
    public static final int MAGIC_OFFSET = 0;
    private static final byte[] MAGIC_VALUE = {100, 101, 121, 10, 0, 0, 0, 0};
    private static final int[] SUPPORTED_ODEX_VERSIONS = {35, 36};

    public static boolean verifyMagic(byte[] bArr, int i) {
        if (bArr.length - i < 8) {
            return false;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= 4) {
                for (int i3 = 4; i3 < 7; i3++) {
                    byte b = bArr[i + i3];
                    if (b < 48 || b > 57) {
                        return false;
                    }
                }
                return bArr[i + 7] == MAGIC_VALUE[7];
            }
            if (bArr[i + i2] != MAGIC_VALUE[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static int getVersion(byte[] bArr, int i) {
        if (verifyMagic(bArr, i)) {
            return getVersionUnchecked(bArr, i);
        }
        return -1;
    }

    private static int getVersionUnchecked(byte[] bArr, int i) {
        return ((bArr[i + 4] - 48) * 100) + ((bArr[i + 5] - 48) * 10) + (bArr[i + 6] - 48);
    }

    public static boolean isSupportedOdexVersion(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = SUPPORTED_ODEX_VERSIONS;
            if (i2 >= iArr.length) {
                return false;
            }
            if (iArr[i2] == i) {
                return true;
            }
            i2++;
        }
    }

    public static int getDexOffset(byte[] bArr) {
        return new DexBuffer(bArr).readSmallUint(8);
    }

    public static int getDependenciesOffset(byte[] bArr) {
        return new DexBuffer(bArr).readSmallUint(16);
    }
}
