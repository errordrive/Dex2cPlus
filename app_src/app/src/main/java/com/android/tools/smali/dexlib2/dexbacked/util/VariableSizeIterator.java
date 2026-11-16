package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class VariableSizeIterator<T> implements Iterator<T> {
    private int index;

    @Nonnull
    private final DexReader<? extends DexBuffer> reader;
    protected final int size;

    protected abstract T readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i);

    protected VariableSizeIterator(@Nonnull DexBuffer dexBuffer, int i, int i2) {
        this.reader = dexBuffer.readerAt(i);
        this.size = i2;
    }

    protected VariableSizeIterator(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        this.reader = dexReader;
        this.size = i;
    }

    public int getReaderOffset() {
        return this.reader.getOffset();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.size;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.index;
        if (i >= this.size) {
            throw new NoSuchElementException();
        }
        DexReader<? extends DexBuffer> dexReader = this.reader;
        this.index = i + 1;
        return readNextItem(dexReader, i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
