package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class VariableSizeLookaheadIterator<T> implements Iterator<T> {
    private static final int STATE_DONE = 3;
    private static final int STATE_FAILED = 4;
    private static final int STATE_NOT_READY = 2;
    private static final int STATE_READY = 1;
    private T next;

    @Nonnull
    private final DexReader<? extends DexBuffer> reader;
    private int state = 2;

    @Nullable
    protected abstract T readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader);

    protected VariableSizeLookaheadIterator(@Nonnull DexBuffer dexBuffer, int i) {
        this.reader = dexBuffer.readerAt(i);
    }

    protected final T endOfData() {
        this.state = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.state;
        if (i == 1) {
            return true;
        }
        if (i != 3) {
            return tryToComputeNext();
        }
        return false;
    }

    private boolean tryToComputeNext() {
        this.state = 4;
        this.next = computeNext();
        if (this.state == 3) {
            return false;
        }
        this.state = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.state = 2;
        T t = this.next;
        this.next = null;
        return t;
    }

    protected T computeNext() {
        return readNextItem(this.reader);
    }

    public final int getReaderOffset() {
        return this.reader.getOffset();
    }
}
