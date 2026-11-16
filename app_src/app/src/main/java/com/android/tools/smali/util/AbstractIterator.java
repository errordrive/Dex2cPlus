package com.android.tools.smali.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractIterator<T> implements Iterator<T>, Iterable<T> {
    private static final int STATE_DONE = 3;
    private static final int STATE_FAILED = 4;
    private static final int STATE_NOT_READY = 2;
    private static final int STATE_READY = 1;
    private T next;
    private int state = 2;

    @Nullable
    protected abstract T computeNext();

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return this;
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
        if (i == 3) {
            return false;
        }
        if (i == 4) {
            throw new IllegalStateException();
        }
        return tryToComputeNext();
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
}
