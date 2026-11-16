package com.android.tools.smali.dexlib2.writer.io;

import com.android.tools.smali.util.InputStreamUtil;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class FileDeferredOutputStream extends DeferredOutputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;

    @Nonnull
    private final File backingFile;

    @Nonnull
    private final NakedBufferedOutputStream output;
    private int writtenBytes;

    public FileDeferredOutputStream(@Nonnull File file) throws FileNotFoundException {
        this(file, 4096);
    }

    public FileDeferredOutputStream(@Nonnull File file, int i) throws FileNotFoundException {
        this.backingFile = file;
        this.output = new NakedBufferedOutputStream(new FileOutputStream(file), i);
    }

    @Override // com.android.tools.smali.dexlib2.writer.io.DeferredOutputStream
    public void writeTo(@Nonnull OutputStream outputStream) throws IOException {
        byte[] buffer = this.output.getBuffer();
        int count = this.output.getCount();
        this.output.resetBuffer();
        this.output.close();
        if (count != this.writtenBytes) {
            InputStreamUtil.copy(new FileInputStream(this.backingFile), outputStream);
            this.backingFile.delete();
        }
        outputStream.write(buffer, 0, count);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.output.write(i);
        this.writtenBytes++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.output.write(bArr);
        this.writtenBytes += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.output.write(bArr, i, i2);
        this.writtenBytes += i2;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.output.flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.output.close();
    }

    private static class NakedBufferedOutputStream extends BufferedOutputStream {
        public NakedBufferedOutputStream(OutputStream outputStream) {
            super(outputStream);
        }

        public NakedBufferedOutputStream(OutputStream outputStream, int i) {
            super(outputStream, i);
        }

        public int getCount() {
            return this.count;
        }

        public void resetBuffer() {
            this.count = 0;
        }

        public byte[] getBuffer() {
            return this.buf;
        }
    }

    @Nonnull
    public static DeferredOutputStreamFactory getFactory(@Nullable File file) {
        return getFactory(file, 4096);
    }

    @Nonnull
    public static DeferredOutputStreamFactory getFactory(@Nullable final File file, final int i) {
        return new DeferredOutputStreamFactory() { // from class: com.android.tools.smali.dexlib2.writer.io.FileDeferredOutputStream.1
            @Override // com.android.tools.smali.dexlib2.writer.io.DeferredOutputStreamFactory
            public DeferredOutputStream makeDeferredOutputStream() throws IOException {
                return new FileDeferredOutputStream(File.createTempFile("dexlibtmp", null, file), i);
            }
        };
    }
}
