package com.android.tools.smali.util;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ChainedIterable<T> implements Iterable<T> {
    Iterable<T> iterableA;
    Iterable<T> iterableB;

    public ChainedIterable(Iterable<T> iterable, Iterable<T> iterable2) {
        this.iterableA = iterable;
        this.iterableB = iterable2;
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return new ChainedIterator(this.iterableA.iterator(), this.iterableB.iterator());
    }

    public static class ChainedIterator<U> implements Iterator<U> {
        Iterator<U> iteratorA;
        Iterator<U> iteratorB;

        public ChainedIterator(Iterator<U> it, Iterator<U> it2) {
            this.iteratorA = it;
            this.iteratorB = it2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.iteratorA.hasNext() || this.iteratorB.hasNext();
        }

        @Override // java.util.Iterator
        public final U next() {
            if (this.iteratorA.hasNext()) {
                return this.iteratorA.next();
            }
            return this.iteratorB.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
