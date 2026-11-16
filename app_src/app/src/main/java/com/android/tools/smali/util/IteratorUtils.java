package com.android.tools.smali.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class IteratorUtils {
    public static <T> T getLast(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> AbstractIterator<T> filter(Iterable<T> iterable, Predicate<? super T> predicate) {
        return filter(iterable.iterator(), predicate);
    }

    public static <T> AbstractIterator<T> filter(final Iterator<T> it, final Predicate<? super T> predicate) {
        return new AbstractIterator<T>() { // from class: com.android.tools.smali.util.IteratorUtils.1
            @Override // com.android.tools.smali.util.AbstractIterator
            protected T computeNext() {
                while (it.hasNext()) {
                    T t = (T) it.next();
                    if (predicate.test(t)) {
                        return t;
                    }
                }
                return endOfData();
            }
        };
    }

    public static <T> List<T> toList(Iterable<T> iterable) {
        return toList(iterable.iterator());
    }

    public static <T> List<T> toList(Iterator<T> it) {
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static <T> void addAll(Collection<T> collection, Iterator<T> it) {
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static int size(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            i++;
            it.next();
        }
        return i;
    }
}
