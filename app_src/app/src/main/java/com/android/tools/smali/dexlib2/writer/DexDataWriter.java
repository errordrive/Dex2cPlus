package com.android.tools.smali.dexlib2.writer;

import com.android.tools.smali.util.ExceptionWithContext;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nonnull;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public class DexDataWriter extends BufferedOutputStream {
    private int filePosition;
    private byte[] tempBuf;
    private byte[] zeroBuf;

    public DexDataWriter(@Nonnull OutputStream outputStream, int i) {
        this(outputStream, i, 262144);
    }

    public DexDataWriter(@Nonnull OutputStream outputStream, int i, int i2) {
        super(outputStream, i2);
        this.tempBuf = new byte[8];
        this.zeroBuf = new byte[3];
        this.filePosition = i;
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.filePosition++;
        super.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.filePosition += i2;
        super.write(bArr, i, i2);
    }

    public void writeLong(long j) throws IOException {
        writeInt((int) j);
        writeInt((int) (j >> 32));
    }

    public static void writeInt(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i);
        outputStream.write(i >> 8);
        outputStream.write(i >> 16);
        outputStream.write(i >> 24);
    }

    public void writeInt(int i) throws IOException {
        writeInt(this, i);
    }

    public void writeShort(int i) throws IOException {
        if (i < -32768 || i > 32767) {
            throw new ExceptionWithContext("Short value out of range: %d", Integer.valueOf(i));
        }
        write(i);
        write(i >> 8);
    }

    public void writeUshort(int i) throws IOException {
        if (i < 0 || i > 65535) {
            throw new ExceptionWithContext("Unsigned short value out of range: %d", Integer.valueOf(i));
        }
        write(i);
        write(i >> 8);
    }

    public void writeUbyte(int i) throws IOException {
        if (i < 0 || i > 255) {
            throw new ExceptionWithContext("Unsigned byte value out of range: %d", Integer.valueOf(i));
        }
        write(i);
    }

    public static void writeUleb128(OutputStream outputStream, int i) throws IOException {
        while ((((long) i) & 4294967295L) > 127) {
            outputStream.write((i & WorkQueueKt.MASK) | 128);
            i >>>= 7;
        }
        outputStream.write(i);
    }

    public void writeUleb128(int i) throws IOException {
        writeUleb128(this, i);
    }

    public static void writeSleb128(OutputStream outputStream, int i) throws IOException {
        if (i >= 0) {
            while (i > 63) {
                outputStream.write((i & WorkQueueKt.MASK) | 128);
                i >>>= 7;
            }
            outputStream.write(i & WorkQueueKt.MASK);
            return;
        }
        while (i < -64) {
            outputStream.write((i & WorkQueueKt.MASK) | 128);
            i >>= 7;
        }
        outputStream.write(i & WorkQueueKt.MASK);
    }

    public void writeSleb128(int i) throws IOException {
        writeSleb128(this, i);
    }

    public void writeEncodedValueHeader(int i, int i2) throws IOException {
        write(i | (i2 << 5));
    }

    public void writeEncodedInt(int i, int i2) throws IOException {
        int i3 = 0;
        if (i2 >= 0) {
            while (i2 > 127) {
                this.tempBuf[i3] = (byte) i2;
                i2 >>= 8;
                i3++;
            }
        } else {
            while (i2 < -128) {
                this.tempBuf[i3] = (byte) i2;
                i2 >>= 8;
                i3++;
            }
        }
        this.tempBuf[i3] = (byte) i2;
        writeEncodedValueHeader(i, i3);
        write(this.tempBuf, 0, i3 + 1);
    }

    public void writeEncodedLong(int i, long j) throws IOException {
        int i2 = 0;
        if (j >= 0) {
            while (j > 127) {
                this.tempBuf[i2] = (byte) j;
                j >>= 8;
                i2++;
            }
        } else {
            while (j < -128) {
                this.tempBuf[i2] = (byte) j;
                j >>= 8;
                i2++;
            }
        }
        this.tempBuf[i2] = (byte) j;
        writeEncodedValueHeader(i, i2);
        write(this.tempBuf, 0, i2 + 1);
    }

    public void writeEncodedUint(int i, int i2) throws IOException {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            this.tempBuf[i3] = (byte) i2;
            i2 >>>= 8;
            if (i2 == 0) {
                writeEncodedValueHeader(i, i3);
                write(this.tempBuf, 0, i4);
                return;
            }
            i3 = i4;
        }
    }

    public void writeEncodedFloat(int i, float f) throws IOException {
        writeRightZeroExtendedInt(i, Float.floatToRawIntBits(f));
    }

    protected void writeRightZeroExtendedInt(int i, int i2) throws IOException {
        int i3 = 3;
        while (true) {
            int i4 = i3 - 1;
            this.tempBuf[i3] = (byte) (((-16777216) & i2) >>> 24);
            i2 <<= 8;
            if (i2 == 0) {
                writeEncodedValueHeader(i, 3 - i3);
                write(this.tempBuf, i3, 4 - i3);
                return;
            }
            i3 = i4;
        }
    }

    public void writeEncodedDouble(int i, double d) throws IOException {
        writeRightZeroExtendedLong(i, Double.doubleToRawLongBits(d));
    }

    protected void writeRightZeroExtendedLong(int i, long j) throws IOException {
        int i2 = 7;
        while (true) {
            int i3 = i2 - 1;
            this.tempBuf[i2] = (byte) (((-72057594037927936L) & j) >>> 56);
            j <<= 8;
            if (j == 0) {
                writeEncodedValueHeader(i, 7 - i2);
                write(this.tempBuf, i2, 8 - i2);
                return;
            }
            i2 = i3;
        }
    }

    public void writeString(String str) throws IOException {
        int length = str.length();
        if (this.tempBuf.length <= str.length() * 3) {
            this.tempBuf = new byte[str.length() * 3];
        }
        byte[] bArr = this.tempBuf;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt < 2048) {
                int i3 = i + 1;
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                i += 2;
                bArr[i3] = (byte) ((cCharAt & '?') | 128);
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | 224);
                int i4 = i + 2;
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                i += 3;
                bArr[i4] = (byte) ((cCharAt & '?') | 128);
            }
        }
        write(bArr, 0, i);
    }

    public void align() throws IOException {
        int i = (-getPosition()) & 3;
        if (i > 0) {
            write(this.zeroBuf, 0, i);
        }
    }

    public int getPosition() {
        return this.filePosition;
    }
}
