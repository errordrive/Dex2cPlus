package com.android.tools.smali.util;

import java.util.AbstractSequentialList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractForwardSequentialList<T> extends AbstractSequentialList<T> {
    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @Nonnull
    public abstract Iterator<T> iterator();

    /* JADX INFO: Access modifiers changed from: private */
    @Nonnull
    public Iterator<T> iterator(int i) {
        if (i < 0) {
            throw new NoSuchElementException();
        }
        Iterator<T> it = iterator();
        for (int i2 = 0; i2 < i; i2++) {
            it.next();
        }
        return it;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<T> listIterator(int i) {
        try {
            return new AbstractListIterator<T>(i, iterator(i)) { // from class: com.android.tools.smali.util.AbstractForwardSequentialList.1

                @Nullable
                private Iterator<T> forwardIterator;
                private int index;
                final /* synthetic */ int val$initialIndex;
                final /* synthetic */ Iterator val$initialIterator;

                {
                    this.val$initialIndex = i;
                    this.val$initialIterator = it;
                    this.index = i - 1;
                    this.forwardIterator = it;
                }

                @Nonnull
                private Iterator<T> getForwardIterator() {
                    if (this.forwardIterator == null) {
                        try {
                            this.forwardIterator = AbstractForwardSequentialList.this.iterator(this.index + 1);
                        } catch (IndexOutOfBoundsException unused) {
                            throw new NoSuchElementException();
                        }
                    }
                    return this.forwardIterator;
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return getForwardIterator().hasNext();
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator
                public boolean hasPrevious() {
                    return this.index >= 0;
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator, java.util.Iterator
                public T next() {
                    T next = getForwardIterator().next();
                    this.index++;
                    return next;
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator
                public int nextIndex() {
                    return this.index + 1;
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator
                public T previous() {
                    this.forwardIterator = null;
                    try {
                        AbstractForwardSequentialList abstractForwardSequentialList = AbstractForwardSequentialList.this;
                        int i2 = this.index;
                        this.index = i2 - 1;
                        return (T) abstractForwardSequentialList.iterator(i2).next();
                    } catch (IndexOutOfBoundsException unused) {
                        throw new NoSuchElementException();
                    }
                }

                @Override // com.android.tools.smali.util.AbstractListIterator, java.util.ListIterator
                public int previousIndex() {
                    return this.index;
                }
            };
        } catch (NoSuchElementException unused) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }
}
