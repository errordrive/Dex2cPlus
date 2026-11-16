package com.android.tools.smali.dexlib2.writer;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class DebugInfoCache {
    private final byte[] data;
    private final int threshold = 128;

    public DebugInfoCache(byte[] bArr) {
        this.data = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.data, ((DebugInfoCache) obj).data);
    }

    public int hashCode() {
        int iMin = Math.min(this.data.length, 128);
        int i = 0;
        for (int i2 = 0; i2 < iMin; i2++) {
            i = (i * 31) + this.data[i2];
        }
        return i;
    }
}
