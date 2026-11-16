package com.android.tools.smali.dexlib2.writer.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class MemoryDataStore implements DexDataStore {
    private byte[] buf;
    private int size;

    @Override // com.android.tools.smali.dexlib2.writer.io.DexDataStore
    public void close() throws IOException {
    }

    public MemoryDataStore() {
        this(0);
    }

    public MemoryDataStore(int i) {
        this.size = 0;
        this.buf = new byte[i];
    }

    public byte[] getBuffer() {
        return this.buf;
    }

    public int getSize() {
        return this.size;
    }

    public byte[] getData() {
        return Arrays.copyOf(this.buf, this.size);
    }

    @Override // com.android.tools.smali.dexlib2.writer.io.DexDataStore
    @Nonnull
    public OutputStream outputAt(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        return new OutputStream(i) { // from class: com.android.tools.smali.dexlib2.writer.io.MemoryDataStore.1
            private int position;
            final /* synthetic */ int val$offset;

            {
                this.val$offset = i;
                this.position = i;
            }

            @Override // java.io.OutputStream
            public void write(int i2) throws IOException {
                MemoryDataStore.this.growBufferIfNeeded(this.position + 1);
                byte[] bArr = MemoryDataStore.this.buf;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr[i3] = (byte) i2;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                MemoryDataStore.this.growBufferIfNeeded(this.position + bArr.length);
                System.arraycopy(bArr, 0, MemoryDataStore.this.buf, this.position, bArr.length);
                this.position += bArr.length;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i2, int i3) throws IOException {
                MemoryDataStore.this.growBufferIfNeeded(this.position + i3);
                System.arraycopy(bArr, i2, MemoryDataStore.this.buf, this.position, i3);
                this.position += i3;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void growBufferIfNeeded(int i) {
        if (i > this.size) {
            byte[] bArr = this.buf;
            if (i > bArr.length) {
                int newBufferSize = getNewBufferSize(bArr.length, i);
                if (newBufferSize < i) {
                    throw new IndexOutOfBoundsException();
                }
                this.buf = Arrays.copyOf(this.buf, newBufferSize);
            }
            this.size = i;
        }
    }

    protected int getNewBufferSize(int i, int i2) {
        return Math.max(i2 + (i2 >> 2), i + 262144);
    }

    @Override // com.android.tools.smali.dexlib2.writer.io.DexDataStore
    @Nonnull
    public InputStream readAt(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        return new InputStream(i) { // from class: com.android.tools.smali.dexlib2.writer.io.MemoryDataStore.2
            private int mark;
            private int position;
            final /* synthetic */ int val$offset;

            @Override // java.io.InputStream
            public boolean markSupported() {
                return true;
            }

            {
                this.val$offset = i;
                this.position = i;
                this.mark = i;
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (this.position >= MemoryDataStore.this.size) {
                    return -1;
                }
                byte[] bArr = MemoryDataStore.this.buf;
                int i2 = this.position;
                this.position = i2 + 1;
                return bArr[i2];
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr) throws IOException {
                int iMin = Math.min(bArr.length, MemoryDataStore.this.size - this.position);
                if (iMin <= 0) {
                    return this.position >= MemoryDataStore.this.size ? -1 : 0;
                }
                System.arraycopy(MemoryDataStore.this.buf, this.position, bArr, 0, iMin);
                this.position += iMin;
                return iMin;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) throws IOException {
                int iMin = Math.min(i3, MemoryDataStore.this.size - this.position);
                if (iMin <= 0) {
                    return this.position >= MemoryDataStore.this.size ? -1 : 0;
                }
                System.arraycopy(MemoryDataStore.this.buf, this.position, bArr, i2, iMin);
                this.position += iMin;
                return iMin;
            }

            @Override // java.io.InputStream
            public long skip(long j) throws IOException {
                int iMax = (int) Math.max(0L, Math.min(j, MemoryDataStore.this.size - this.position));
                this.position += iMax;
                return iMax;
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                return Math.max(0, MemoryDataStore.this.size - this.position);
            }

            @Override // java.io.InputStream
            public void mark(int i2) {
                this.mark = this.position;
            }

            @Override // java.io.InputStream
            public void reset() throws IOException {
                this.position = this.mark;
            }
        };
    }
}
