package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.util.ExceptionWithContext;
import com.google.common.base.Ascii;
import java.util.Arrays;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBuffer {
    final int baseOffset;

    @Nonnull
    final byte[] buf;

    public DexBuffer(@Nonnull byte[] bArr) {
        this(bArr, 0);
    }

    public DexBuffer(@Nonnull byte[] bArr, int i) {
        this.buf = bArr;
        this.baseOffset = i;
    }

    public int readSmallUint(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        int i3 = (bArr[i2 + 3] << Ascii.CAN) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        if (i3 >= 0) {
            return i3;
        }
        throw new ExceptionWithContext("Encountered small uint that is out of range at offset 0x%x", Integer.valueOf(i2));
    }

    public int readOptionalUint(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        int i3 = (bArr[i2 + 3] << Ascii.CAN) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        if (i3 >= -1) {
            return i3;
        }
        throw new ExceptionWithContext("Encountered optional uint that is out of range at offset 0x%x", Integer.valueOf(i2));
    }

    public int readUshort(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
    }

    public int readUbyte(int i) {
        return this.buf[i + this.baseOffset] & 255;
    }

    public long readLong(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        return ((long) ((bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16))) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | (((long) bArr[i2 + 7]) << 56);
    }

    public int readLongAsSmallUint(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        long j = ((long) ((bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16))) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | (((long) bArr[i2 + 7]) << 56);
        if (j < 0 || j > 2147483647L) {
            throw new ExceptionWithContext("Encountered out-of-range ulong at offset 0x%x", Integer.valueOf(i2));
        }
        return (int) j;
    }

    public int readInt(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        return (bArr[i2 + 3] << Ascii.CAN) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public int readShort(int i) {
        byte[] bArr = this.buf;
        int i2 = i + this.baseOffset;
        return (bArr[i2 + 1] << 8) | (bArr[i2] & 255);
    }

    public int readByte(int i) {
        return this.buf[this.baseOffset + i];
    }

    @Nonnull
    public byte[] readByteRange(int i, int i2) {
        byte[] bArr = this.buf;
        int i3 = this.baseOffset;
        return Arrays.copyOfRange(bArr, i3 + i, i3 + i + i2);
    }

    @Nonnull
    public DexReader<? extends DexBuffer> readerAt(int i) {
        return new DexReader<>(this, i);
    }

    @Nonnull
    public byte[] getBuf() {
        return this.buf;
    }

    public int getBaseOffset() {
        return this.baseOffset;
    }
}
