package com.android.tools.smali.dexlib2.writer.io;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class MemoryDeferredOutputStream extends DeferredOutputStream {
    private static final int DEFAULT_BUFFER_SIZE = 16384;
    private final List<byte[]> buffers;
    private byte[] currentBuffer;
    private int currentPosition;

    public MemoryDeferredOutputStream() {
        this(16384);
    }

    public MemoryDeferredOutputStream(int i) {
        this.buffers = new ArrayList();
        this.currentBuffer = new byte[i];
    }

    @Override // com.android.tools.smali.dexlib2.writer.io.DeferredOutputStream
    public void writeTo(OutputStream outputStream) throws IOException {
        Iterator<byte[]> it = this.buffers.iterator();
        while (it.hasNext()) {
            outputStream.write(it.next());
        }
        int i = this.currentPosition;
        if (i > 0) {
            outputStream.write(this.currentBuffer, 0, i);
        }
        this.buffers.clear();
        this.currentPosition = 0;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (remaining() == 0) {
            this.buffers.add(this.currentBuffer);
            this.currentBuffer = new byte[this.currentBuffer.length];
            this.currentPosition = 0;
        }
        byte[] bArr = this.currentBuffer;
        int i2 = this.currentPosition;
        this.currentPosition = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int iRemaining = remaining();
        int i3 = 0;
        while (true) {
            int i4 = i2 - i3;
            if (i4 <= 0) {
                return;
            }
            int iMin = Math.min(iRemaining, i4);
            System.arraycopy(bArr, i + i3, this.currentBuffer, this.currentPosition, iMin);
            i3 += iMin;
            this.currentPosition += iMin;
            iRemaining = remaining();
            if (iRemaining == 0) {
                this.buffers.add(this.currentBuffer);
                byte[] bArr2 = new byte[this.currentBuffer.length];
                this.currentBuffer = bArr2;
                this.currentPosition = 0;
                iRemaining = bArr2.length;
            }
        }
    }

    private int remaining() {
        return this.currentBuffer.length - this.currentPosition;
    }

    @Nonnull
    public static DeferredOutputStreamFactory getFactory() {
        return getFactory(16384);
    }

    @Nonnull
    public static DeferredOutputStreamFactory getFactory(final int i) {
        return new DeferredOutputStreamFactory() { // from class: com.android.tools.smali.dexlib2.writer.io.MemoryDeferredOutputStream.1
            @Override // com.android.tools.smali.dexlib2.writer.io.DeferredOutputStreamFactory
            public DeferredOutputStream makeDeferredOutputStream() {
                return new MemoryDeferredOutputStream(i);
            }
        };
    }
}
