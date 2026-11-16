package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class VariableSizeListIterator<T> implements ListIterator<T> {
    private int index;

    @Nonnull
    private DexReader<? extends DexBuffer> reader;
    protected final int size;
    private final int startOffset;

    protected abstract T readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i);

    protected VariableSizeListIterator(@Nonnull DexBuffer dexBuffer, int i, int i2) {
        this.reader = dexBuffer.readerAt(i);
        this.startOffset = i;
        this.size = i2;
    }

    public int getReaderOffset() {
        return this.reader.getOffset();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.index < this.size;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public T next() {
        int i = this.index;
        if (i >= this.size) {
            throw new NoSuchElementException();
        }
        DexReader<? extends DexBuffer> dexReader = this.reader;
        this.index = i + 1;
        return readNextItem(dexReader, i);
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.index > 0;
    }

    @Override // java.util.ListIterator
    public T previous() {
        int i = this.index - 1;
        this.reader.setOffset(this.startOffset);
        this.index = 0;
        while (true) {
            int i2 = this.index;
            if (i2 < i) {
                DexReader<? extends DexBuffer> dexReader = this.reader;
                this.index = i2 + 1;
                readNextItem(dexReader, i2);
            } else {
                DexReader<? extends DexBuffer> dexReader2 = this.reader;
                this.index = i2 + 1;
                return readNextItem(dexReader2, i2);
            }
        }
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }
}
