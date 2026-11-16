package com.android.tools.smali.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class RandomAccessFileInputStream extends InputStream {
    private int filePosition;

    @Nonnull
    private final RandomAccessFile raf;

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public RandomAccessFileInputStream(@Nonnull RandomAccessFile randomAccessFile, int i) {
        this.filePosition = i;
        this.raf = randomAccessFile;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        this.raf.seek(this.filePosition);
        this.filePosition++;
        return this.raf.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        this.raf.seek(this.filePosition);
        int i = this.raf.read(bArr);
        this.filePosition += i;
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.raf.seek(this.filePosition);
        int i3 = this.raf.read(bArr, i, i2);
        this.filePosition += i3;
        return i3;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        int iMin = Math.min((int) j, available());
        this.filePosition += iMin;
        return iMin;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return ((int) this.raf.length()) - this.filePosition;
    }
}
