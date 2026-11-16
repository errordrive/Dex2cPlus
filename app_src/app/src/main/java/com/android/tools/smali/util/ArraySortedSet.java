package com.android.tools.smali.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ArraySortedSet<T> implements SortedSet<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Nonnull
    private final Object[] arr;

    @Nonnull
    private final Comparator<? super T> comparator;

    private ArraySortedSet(@Nonnull Comparator<? super T> comparator, @Nonnull T[] tArr) {
        this.comparator = comparator;
        this.arr = tArr;
    }

    private ArraySortedSet(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection) {
        this.comparator = comparator;
        this.arr = collection.toArray();
    }

    public static <T> ArraySortedSet<T> of(@Nonnull Comparator<? super T> comparator, @Nonnull T[] tArr) {
        return new ArraySortedSet<>(comparator, tArr);
    }

    public static <T> ArraySortedSet<T> of(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection) {
        return new ArraySortedSet<>(comparator, collection);
    }

    public static <T> ArraySortedSet<T> copyOf(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection) {
        return new ArraySortedSet<>(comparator, ((List) collection.stream().distinct().sorted(comparator).collect(Collectors.toList())).toArray());
    }

    private boolean assertSorted() {
        for (int i = 1; i < this.arr.length; i++) {
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.arr.length;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.arr.length > 0;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return Arrays.binarySearch(this.arr, obj, this.comparator) >= 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return Arrays.asList(this.arr).iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return (Object[]) this.arr.clone();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int length = tArr.length;
        Object[] objArr = this.arr;
        if (length <= objArr.length) {
            System.arraycopy(objArr, 0, tArr, 0, objArr.length);
            return tArr;
        }
        return (T[]) Arrays.copyOf(objArr, objArr.length);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet
    public Comparator<? super T> comparator() {
        return this.comparator;
    }

    @Override // java.util.SortedSet
    public SortedSet<T> subSet(T t, T t2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet
    public SortedSet<T> headSet(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet
    public SortedSet<T> tailSet(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet
    public T first() {
        Object[] objArr = this.arr;
        if (objArr.length == 0) {
            throw new NoSuchElementException();
        }
        return (T) objArr[0];
    }

    @Override // java.util.SortedSet
    public T last() {
        Object[] objArr = this.arr;
        if (objArr.length == 0) {
            throw new NoSuchElementException();
        }
        return (T) objArr[objArr.length - 1];
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        int iHashCode = 0;
        for (Object obj : this.arr) {
            iHashCode += obj.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) obj;
            if (this.arr.length != sortedSet.size()) {
                return false;
            }
            return IteratorUtils.elementsEqual(iterator(), sortedSet.iterator());
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.arr.length != set.size()) {
            return false;
        }
        return containsAll(set);
    }
}
