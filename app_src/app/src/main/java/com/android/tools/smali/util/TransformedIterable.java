package com.android.tools.smali.util;

import java.util.Iterator;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class TransformedIterable<F, T> implements Iterable<T> {
    final Iterable<? extends F> backingIterable;
    final Function<F, T> transformFunction;

    public TransformedIterable(Iterable<? extends F> iterable, Function<F, T> function) {
        this.backingIterable = iterable;
        this.transformFunction = function;
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return new TransformedIterator(this.backingIterable.iterator(), this.transformFunction);
    }

    public static class TransformedIterator<G, U> implements Iterator<U> {
        final Iterator<? extends G> backingIterator;
        final Function<G, U> transformFunction;

        public TransformedIterator(Iterable<? extends G> iterable, Function<G, U> function) {
            this.backingIterator = iterable.iterator();
            this.transformFunction = function;
        }

        public TransformedIterator(Iterator<? extends G> it, Function<G, U> function) {
            this.backingIterator = it;
            this.transformFunction = function;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.backingIterator.hasNext();
        }

        @Override // java.util.Iterator
        public final U next() {
            return (U) this.transformFunction.apply(this.backingIterator.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.backingIterator.remove();
        }
    }
}
