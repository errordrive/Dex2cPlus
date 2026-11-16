package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CdexHeaderItem {
    public static final int DEBUG_INFO_BASE = 124;
    public static final int DEBUG_INFO_OFFSETS_POS_OFFSET = 116;
    public static final int DEBUG_INFO_OFFSETS_TABLE_OFFSET = 120;
    public static final int FEATURE_FLAGS_OFFSET = 112;
    private static final byte[] MAGIC_VALUE = {99, 100, 101, 120, 0, 0, 0, 0};
    private static final int[] SUPPORTED_CDEX_VERSIONS = {1};

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

    public static boolean isSupportedCdexVersion(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = SUPPORTED_CDEX_VERSIONS;
            if (i2 >= iArr.length) {
                return false;
            }
            if (iArr[i2] == i) {
                return true;
            }
            i2++;
        }
    }

    public static void annotateCdexHeaderFields(@Nonnull AnnotatedBytes annotatedBytes, DexBuffer dexBuffer) {
        annotatedBytes.annotate(4, "feature_flags: 0x%x", Integer.valueOf(dexBuffer.readInt(annotatedBytes.getCursor())));
        annotatedBytes.annotate(4, "debug_info_offsets_pos: 0x%x", Integer.valueOf(dexBuffer.readInt(annotatedBytes.getCursor())));
        annotatedBytes.annotate(4, "debug_info_offsets_table_offset: 0x%x", Integer.valueOf(dexBuffer.readInt(annotatedBytes.getCursor())));
        annotatedBytes.annotate(4, "debug_info_base: 0x%x", Integer.valueOf(dexBuffer.readInt(annotatedBytes.getCursor())));
    }
}
