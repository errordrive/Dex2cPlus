package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.Utf8Utils;
import com.google.common.base.Ascii;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexReader<T extends DexBuffer> {

    @Nonnull
    public final T dexBuf;
    private int offset;

    public DexReader(@Nonnull T t, int i) {
        this.dexBuf = t;
        this.offset = i;
    }

    public int getOffset() {
        return this.offset;
    }

    public void setOffset(int i) {
        this.offset = i;
    }

    public int readSleb128() {
        int i;
        int i2 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i3 = i2 + 1;
        byte b = bArr[i2];
        int i4 = b & 255;
        if (i4 <= 127) {
            i = (i4 << 25) >> 25;
        } else {
            int i5 = i2 + 2;
            byte b2 = bArr[i3];
            int i6 = b2 & 255;
            int i7 = ((b2 & 127) << 7) | (b & 127);
            if (i6 <= 127) {
                i = (i7 << 18) >> 18;
            } else {
                int i8 = i2 + 3;
                byte b3 = bArr[i5];
                int i9 = i7 | ((b3 & 127) << 14);
                if ((b3 & 255) <= 127) {
                    i = (i9 << 11) >> 11;
                    i3 = i8;
                } else {
                    i5 = i2 + 4;
                    byte b4 = bArr[i8];
                    int i10 = i9 | ((b4 & 127) << 21);
                    if ((b4 & 255) <= 127) {
                        i = (i10 << 4) >> 4;
                    } else {
                        int i11 = i2 + 5;
                        int i12 = bArr[i5] & 255;
                        if (i12 > 127) {
                            throw new ExceptionWithContext("Invalid sleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        int i13 = (i12 << 28) | i10;
                        i3 = i11;
                        i = i13;
                    }
                }
            }
            i3 = i5;
        }
        this.offset = i3 - this.dexBuf.baseOffset;
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004a A[PHI: r3
      0x004a: PHI (r3v3 int) = (r3v2 int), (r3v6 int) binds: [B:5:0x001b, B:9:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    public int peekSleb128Size() {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        if ((bArr[i] & 255) > 127) {
            int i3 = i + 2;
            if ((bArr[i2] & 255) > 127) {
                i2 = i + 3;
                if ((bArr[i3] & 255) > 127) {
                    i3 = i + 4;
                    if ((bArr[i2] & 255) > 127) {
                        i2 = i + 5;
                        if ((bArr[i3] & 255) > 127) {
                            throw new ExceptionWithContext("Invalid sleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                    } else {
                        i2 = i3;
                    }
                }
            } else {
                i2 = i3;
            }
        }
        return i2 - (this.dexBuf.baseOffset + this.offset);
    }

    public int readSmallUleb128() {
        return readUleb128(false);
    }

    public int peekSmallUleb128Size() {
        return peekUleb128Size(false);
    }

    private int readUleb128(boolean z) {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = b & 255;
        if (i3 > 127) {
            int i4 = i + 2;
            byte b2 = bArr[i2];
            int i5 = b2 & 255;
            int i6 = ((b2 & 127) << 7) | (b & 127);
            if (i5 > 127) {
                int i7 = i + 3;
                byte b3 = bArr[i4];
                int i8 = b3 & 255;
                i3 = ((b3 & 127) << 14) | i6;
                if (i8 > 127) {
                    i2 = i + 4;
                    byte b4 = bArr[i7];
                    i3 |= (b4 & 127) << 21;
                    if ((b4 & 255) > 127) {
                        int i9 = i + 5;
                        byte b5 = bArr[i2];
                        if (b5 < 0) {
                            throw new ExceptionWithContext("Invalid uleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        if ((b5 & 15) > 7 && !z) {
                            throw new ExceptionWithContext("Encountered valid uleb128 that is out of range at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        i3 |= b5 << Ascii.FS;
                        i2 = i9;
                    }
                } else {
                    i2 = i7;
                }
            } else {
                i3 = i6;
                i2 = i4;
            }
        }
        this.offset = i2 - this.dexBuf.baseOffset;
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0061 A[PHI: r3
      0x0061: PHI (r3v3 int) = (r3v2 int), (r3v6 int) binds: [B:5:0x001b, B:9:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    private int peekUleb128Size(boolean z) {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        if ((bArr[i] & 255) > 127) {
            int i3 = i + 2;
            if ((bArr[i2] & 255) > 127) {
                i2 = i + 3;
                if ((bArr[i3] & 255) > 127) {
                    i3 = i + 4;
                    if ((bArr[i2] & 255) > 127) {
                        i2 = i + 5;
                        byte b = bArr[i3];
                        if (b < 0) {
                            throw new ExceptionWithContext("Invalid uleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        if ((b & 15) > 7 && !z) {
                            throw new ExceptionWithContext("Encountered valid uleb128 that is out of range at offset 0x%x", Integer.valueOf(this.offset));
                        }
                    } else {
                        i2 = i3;
                    }
                }
            } else {
                i2 = i3;
            }
        }
        return i2 - (this.dexBuf.baseOffset + this.offset);
    }

    public int readLargeUleb128() {
        return readUleb128(true);
    }

    public int readBigUleb128() {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = b & 255;
        if (i3 > 127) {
            int i4 = i + 2;
            byte b2 = bArr[i2];
            int i5 = b2 & 255;
            int i6 = ((b2 & 127) << 7) | (b & 127);
            if (i5 > 127) {
                int i7 = i + 3;
                byte b3 = bArr[i4];
                int i8 = b3 & 255;
                i3 = ((b3 & 127) << 14) | i6;
                if (i8 > 127) {
                    i2 = i + 4;
                    byte b4 = bArr[i7];
                    i3 |= (b4 & 127) << 21;
                    if ((b4 & 255) > 127) {
                        int i9 = i + 5;
                        byte b5 = bArr[i2];
                        if (b5 < 0) {
                            throw new ExceptionWithContext("Invalid uleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        i3 |= b5 << Ascii.FS;
                        i2 = i9;
                    }
                } else {
                    i2 = i7;
                }
            } else {
                i3 = i6;
                i2 = i4;
            }
        }
        this.offset = i2 - this.dexBuf.baseOffset;
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048 A[PHI: r3
      0x0048: PHI (r3v3 int) = (r3v2 int), (r3v6 int) binds: [B:5:0x001b, B:9:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    public int peekBigUleb128Size() {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        if ((bArr[i] & 255) > 127) {
            int i3 = i + 2;
            if ((bArr[i2] & 255) > 127) {
                i2 = i + 3;
                if ((bArr[i3] & 255) > 127) {
                    i3 = i + 4;
                    if ((bArr[i2] & 255) > 127) {
                        i2 = i + 5;
                        if (bArr[i3] < 0) {
                            throw new ExceptionWithContext("Invalid uleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                    } else {
                        i2 = i3;
                    }
                }
            } else {
                i2 = i3;
            }
        }
        return i2 - (this.dexBuf.baseOffset + this.offset);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e A[PHI: r3
      0x003e: PHI (r3v2 int) = (r3v1 int), (r3v4 int) binds: [B:5:0x0015, B:9:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    public void skipUleb128() {
        int i = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i2 = i + 1;
        if (bArr[i] < 0) {
            int i3 = i + 2;
            if (bArr[i2] < 0) {
                i2 = i + 3;
                if (bArr[i3] < 0) {
                    i3 = i + 4;
                    if (bArr[i2] < 0) {
                        i2 = i + 5;
                        if (bArr[i3] < 0) {
                            throw new ExceptionWithContext("Invalid uleb128 integer encountered at offset 0x%x", Integer.valueOf(this.offset));
                        }
                    } else {
                        i2 = i3;
                    }
                }
            } else {
                i2 = i3;
            }
        }
        this.offset = i2 - this.dexBuf.baseOffset;
    }

    public int readSmallUint() {
        int i = this.offset;
        int smallUint = this.dexBuf.readSmallUint(i);
        this.offset = i + 4;
        return smallUint;
    }

    public int readOptionalUint() {
        int i = this.offset;
        int optionalUint = this.dexBuf.readOptionalUint(i);
        this.offset = i + 4;
        return optionalUint;
    }

    public int peekUshort() {
        return this.dexBuf.readUshort(this.offset);
    }

    public int readUshort() {
        int i = this.offset;
        int ushort = this.dexBuf.readUshort(i);
        this.offset = i + 2;
        return ushort;
    }

    public int peekUbyte() {
        return this.dexBuf.readUbyte(this.offset);
    }

    public int readUbyte() {
        int i = this.offset;
        int ubyte = this.dexBuf.readUbyte(i);
        this.offset = i + 1;
        return ubyte;
    }

    public long readLong() {
        int i = this.offset;
        long j = this.dexBuf.readLong(i);
        this.offset = i + 8;
        return j;
    }

    public int readInt() {
        int i = this.offset;
        int i2 = this.dexBuf.readInt(i);
        this.offset = i + 4;
        return i2;
    }

    public int readShort() {
        int i = this.offset;
        int i2 = this.dexBuf.readShort(i);
        this.offset = i + 2;
        return i2;
    }

    public int readByte() {
        int i = this.offset;
        int i2 = this.dexBuf.readByte(i);
        this.offset = i + 1;
        return i2;
    }

    public void skipByte() {
        this.offset++;
    }

    public void moveRelative(int i) {
        this.offset += i;
    }

    public int readSmallUint(int i) {
        return this.dexBuf.readSmallUint(i);
    }

    public int readUshort(int i) {
        return this.dexBuf.readUshort(i);
    }

    public int readUbyte(int i) {
        return this.dexBuf.readUbyte(i);
    }

    public long readLong(int i) {
        return this.dexBuf.readLong(i);
    }

    public int readInt(int i) {
        return this.dexBuf.readInt(i);
    }

    public int readShort(int i) {
        return this.dexBuf.readShort(i);
    }

    public int readByte(int i) {
        return this.dexBuf.readByte(i);
    }

    public int readSizedInt(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        if (i != 1) {
            if (i == 2) {
                i3 = bArr[i5] & 255;
                i4 = bArr[i5 + 1] << 8;
            } else if (i == 3) {
                i3 = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8);
                i4 = bArr[i5 + 2] << 16;
            } else if (i == 4) {
                i3 = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16);
                i4 = bArr[i5 + 3] << 24;
            } else {
                throw new ExceptionWithContext("Invalid size %d for sized int at offset 0x%x", Integer.valueOf(i), Integer.valueOf(this.offset));
            }
            i2 = i4 | i3;
        } else {
            i2 = bArr[i5];
        }
        this.offset = (i5 + i) - this.dexBuf.baseOffset;
        return i2;
    }

    public int readSizedSmallUint(int i) {
        int i2 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        int i3 = 0;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        byte b = bArr[i2 + 3];
                        if (b < 0) {
                            throw new ExceptionWithContext("Encountered valid sized uint that is out of range at offset 0x%x", Integer.valueOf(this.offset));
                        }
                        i3 = b << Ascii.CAN;
                    } else {
                        throw new ExceptionWithContext("Invalid size %d for sized uint at offset 0x%x", Integer.valueOf(i), Integer.valueOf(this.offset));
                    }
                }
                i3 |= (bArr[i2 + 2] & 255) << 16;
            }
            i3 |= (bArr[i2 + 1] & 255) << 8;
        }
        int i4 = (bArr[i2] & 255) | i3;
        this.offset = (i2 + i) - this.dexBuf.baseOffset;
        return i4;
    }

    public int readSizedRightExtendedInt(int i) {
        int i2;
        int i3;
        byte b;
        int i4 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        if (i != 1) {
            if (i == 2) {
                i3 = (bArr[i4] & 255) << 16;
                b = bArr[i4 + 1];
            } else if (i == 3) {
                i3 = ((bArr[i4] & 255) << 8) | ((bArr[i4 + 1] & 255) << 16);
                b = bArr[i4 + 2];
            } else if (i == 4) {
                i3 = (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
                b = bArr[i4 + 3];
            } else {
                throw new ExceptionWithContext("Invalid size %d for sized, right extended int at offset 0x%x", Integer.valueOf(i), Integer.valueOf(this.offset));
            }
            i2 = (b << Ascii.CAN) | i3;
        } else {
            i2 = bArr[i4] << Ascii.CAN;
        }
        this.offset = (i4 + i) - this.dexBuf.baseOffset;
        return i2;
    }

    public long readSizedRightExtendedLong(int i) {
        long j;
        long j2;
        byte b;
        int i2 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        switch (i) {
            case 1:
                j = ((long) bArr[i2]) << 56;
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 2:
                j2 = (((long) bArr[i2]) & 255) << 48;
                b = bArr[i2 + 1];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 3:
                j2 = ((((long) bArr[i2]) & 255) << 40) | ((255 & ((long) bArr[i2 + 1])) << 48);
                b = bArr[i2 + 2];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 4:
                j2 = ((((long) bArr[i2]) & 255) << 32) | ((((long) bArr[i2 + 1]) & 255) << 40) | ((255 & ((long) bArr[i2 + 2])) << 48);
                b = bArr[i2 + 3];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 5:
                j2 = ((((long) bArr[i2 + 1]) & 255) << 32) | ((((long) bArr[i2]) & 255) << 24) | ((((long) bArr[i2 + 2]) & 255) << 40) | ((255 & ((long) bArr[i2 + 3])) << 48);
                b = bArr[i2 + 4];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 6:
                j2 = ((((long) bArr[i2 + 2]) & 255) << 32) | ((long) ((bArr[i2] & 255) << 16)) | ((((long) bArr[i2 + 1]) & 255) << 24) | ((((long) bArr[i2 + 3]) & 255) << 40) | ((255 & ((long) bArr[i2 + 4])) << 48);
                b = bArr[i2 + 5];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 7:
                j2 = ((((long) bArr[i2 + 3]) & 255) << 32) | ((long) (((bArr[i2] & 255) << 8) | ((bArr[i2 + 1] & 255) << 16))) | ((((long) bArr[i2 + 2]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 40) | ((255 & ((long) bArr[i2 + 5])) << 48);
                b = bArr[i2 + 6];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            case 8:
                j2 = ((((long) bArr[i2 + 4]) & 255) << 32) | ((long) ((bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16))) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((255 & ((long) bArr[i2 + 6])) << 48);
                b = bArr[i2 + 7];
                j = j2 | (((long) b) << 56);
                this.offset = (i2 + i) - this.dexBuf.baseOffset;
                return j;
            default:
                throw new ExceptionWithContext("Invalid size %d for sized, right extended long at offset 0x%x", Integer.valueOf(i), Integer.valueOf(this.offset));
        }
    }

    public long readSizedLong(int i) {
        int i2;
        int i3;
        int i4;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        int i5 = this.dexBuf.baseOffset + this.offset;
        byte[] bArr = this.dexBuf.buf;
        switch (i) {
            case 1:
                i2 = bArr[i5];
                j = i2;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 2:
                i3 = bArr[i5] & 255;
                i4 = bArr[i5 + 1] << 8;
                i2 = i4 | i3;
                j = i2;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 3:
                i3 = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8);
                i4 = bArr[i5 + 2] << 16;
                i2 = i4 | i3;
                j = i2;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 4:
                j2 = (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16);
                j3 = ((long) bArr[i5 + 3]) << 24;
                j = j2 | j3;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 5:
                j2 = ((long) ((bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16))) | ((255 & ((long) bArr[i5 + 3])) << 24);
                j3 = ((long) bArr[i5 + 4]) << 32;
                j = j2 | j3;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 6:
                j4 = ((255 & ((long) bArr[i5 + 4])) << 32) | ((long) ((bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16))) | ((((long) bArr[i5 + 3]) & 255) << 24);
                j5 = ((long) bArr[i5 + 5]) << 40;
                j = j5 | j4;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 7:
                j4 = ((((long) bArr[i5 + 4]) & 255) << 32) | ((long) ((bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16))) | ((((long) bArr[i5 + 3]) & 255) << 24) | ((255 & ((long) bArr[i5 + 5])) << 40);
                j5 = ((long) bArr[i5 + 6]) << 48;
                j = j5 | j4;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            case 8:
                j2 = ((255 & ((long) bArr[i5 + 6])) << 48) | ((((long) bArr[i5 + 4]) & 255) << 32) | ((long) ((bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16))) | ((((long) bArr[i5 + 3]) & 255) << 24) | ((((long) bArr[i5 + 5]) & 255) << 40);
                j3 = ((long) bArr[i5 + 7]) << 56;
                j = j2 | j3;
                this.offset = (i5 + i) - this.dexBuf.baseOffset;
                return j;
            default:
                throw new ExceptionWithContext("Invalid size %d for sized long at offset 0x%x", Integer.valueOf(i), Integer.valueOf(this.offset));
        }
    }

    public String readString(int i) {
        int[] iArr = new int[1];
        String strUtf8BytesWithUtf16LengthToString = Utf8Utils.utf8BytesWithUtf16LengthToString(this.dexBuf.buf, this.dexBuf.baseOffset + this.offset, i, iArr);
        this.offset += iArr[0];
        return strUtf8BytesWithUtf16LengthToString;
    }

    public int peekStringLength(int i) {
        int[] iArr = new int[1];
        Utf8Utils.utf8BytesWithUtf16LengthToString(this.dexBuf.buf, this.dexBuf.baseOffset + this.offset, i, iArr);
        return iArr[0];
    }
}
