package com.android.tools.smali.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.function.Predicate;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CollectionUtils {
    public static <T> int listHashCode(@Nonnull Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + it.next().hashCode();
        }
        return iHashCode;
    }

    public static <T> int lastIndexOf(@Nonnull Iterable<T> iterable, @Nonnull Predicate<? super T> predicate) {
        Iterator<T> it = iterable.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                i2 = i;
            }
            i++;
        }
        return i2;
    }

    public static <T extends Comparable<? super T>> int compareAsList(@Nonnull Collection<? extends T> collection, @Nonnull Collection<? extends T> collection2) {
        int iCompare = Integer.compare(collection.size(), collection2.size());
        if (iCompare != 0) {
            return iCompare;
        }
        Iterator<? extends T> it = collection2.iterator();
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            int iCompareTo = it2.next().compareTo(it.next());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return 0;
    }

    public static <T> int compareAsIterable(@Nonnull Comparator<? super T> comparator, @Nonnull Iterable<? extends T> iterable, @Nonnull Iterable<? extends T> iterable2) {
        Iterator<? extends T> it = iterable2.iterator();
        for (T t : iterable) {
            if (!it.hasNext()) {
                return 1;
            }
            int iCompare = comparator.compare(t, it.next());
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return it.hasNext() ? -1 : 0;
    }

    public static <T extends Comparable<? super T>> int compareAsIterable(@Nonnull Iterable<? extends T> iterable, @Nonnull Iterable<? extends T> iterable2) {
        Iterator<? extends T> it = iterable2.iterator();
        for (T t : iterable) {
            if (!it.hasNext()) {
                return 1;
            }
            int iCompareTo = t.compareTo(it.next());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return it.hasNext() ? -1 : 0;
    }

    public static <T> int compareAsList(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection, @Nonnull Collection<? extends T> collection2) {
        int iCompare = Integer.compare(collection.size(), collection2.size());
        if (iCompare != 0) {
            return iCompare;
        }
        Iterator<? extends T> it = collection2.iterator();
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            int iCompare2 = comparator.compare(it2.next(), it.next());
            if (iCompare2 != 0) {
                return iCompare2;
            }
        }
        return 0;
    }

    @Nonnull
    public static <T> Comparator<Collection<? extends T>> listComparator(@Nonnull final Comparator<? super T> comparator) {
        return new Comparator<Collection<? extends T>>() { // from class: com.android.tools.smali.util.CollectionUtils.1
            @Override // java.util.Comparator
            public int compare(Collection<? extends T> collection, Collection<? extends T> collection2) {
                return CollectionUtils.compareAsList(comparator, collection, collection2);
            }
        };
    }

    public static <T> boolean isNaturalSortedSet(@Nonnull Iterable<? extends T> iterable) {
        if (!(iterable instanceof SortedSet)) {
            return false;
        }
        Comparator comparator = ((SortedSet) iterable).comparator();
        return comparator == null || comparator.equals(NaturalOrdering.INSTANCE);
    }

    public static <T> boolean isSortedSet(@Nonnull Comparator<? extends T> comparator, @Nonnull Iterable<? extends T> iterable) {
        if (!(iterable instanceof SortedSet)) {
            return false;
        }
        Comparator comparator2 = ((SortedSet) iterable).comparator();
        if (comparator2 == null) {
            return comparator.equals(NaturalOrdering.INSTANCE);
        }
        return comparator.equals(comparator2);
    }

    @Nonnull
    private static <T> SortedSet<? extends T> toNaturalSortedSet(@Nonnull Collection<? extends T> collection) {
        if (isNaturalSortedSet(collection)) {
            return (SortedSet) collection;
        }
        return Collections.unmodifiableSortedSet(ArraySortedSet.of((Comparator) NaturalOrdering.INSTANCE, collection.toArray()));
    }

    @Nonnull
    private static <T> SortedSet<? extends T> toSortedSet(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection) {
        SortedSet<? extends T> sortedSet;
        Comparator<? super Object> comparator2;
        return ((collection instanceof SortedSet) && (comparator2 = (sortedSet = (SortedSet) collection).comparator()) != null && comparator2.equals(comparator)) ? sortedSet : Collections.unmodifiableSortedSet(ArraySortedSet.of((Comparator) comparator, (Collection) collection));
    }

    @Nonnull
    public static <T> Comparator<Collection<? extends T>> setComparator(@Nonnull final Comparator<? super T> comparator) {
        return new Comparator<Collection<? extends T>>() { // from class: com.android.tools.smali.util.CollectionUtils.2
            @Override // java.util.Comparator
            public int compare(Collection<? extends T> collection, Collection<? extends T> collection2) {
                return CollectionUtils.compareAsSet(comparator, collection, collection2);
            }
        };
    }

    public static <T extends Comparable<T>> int compareAsSet(@Nonnull Collection<? extends T> collection, @Nonnull Collection<? extends T> collection2) {
        int iCompare = Integer.compare(collection.size(), collection2.size());
        if (iCompare != 0) {
            return iCompare;
        }
        toNaturalSortedSet(collection);
        toNaturalSortedSet(collection2);
        Iterator<? extends T> it = collection2.iterator();
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            int iCompareTo = it2.next().compareTo(it.next());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return 0;
    }

    public static <T> int compareAsSet(@Nonnull Comparator<? super T> comparator, @Nonnull Collection<? extends T> collection, @Nonnull Collection<? extends T> collection2) {
        int iCompare = Integer.compare(collection.size(), collection2.size());
        if (iCompare != 0) {
            return iCompare;
        }
        SortedSet sortedSet = toSortedSet(comparator, collection);
        Iterator it = toSortedSet(comparator, collection2).iterator();
        Iterator it2 = sortedSet.iterator();
        while (it2.hasNext()) {
            int iCompare2 = comparator.compare((Object) it2.next(), (Object) it.next());
            if (iCompare2 != 0) {
                return iCompare2;
            }
        }
        return 0;
    }

    public static <T> List<T> immutableSortedCopy(@Nonnull Collection<T> collection, @Nonnull Comparator<? super T> comparator) {
        ArrayList arrayList = new ArrayList(collection);
        arrayList.sort(comparator);
        return Collections.unmodifiableList(arrayList);
    }

    public static <T> Comparator<? super T> usingToStringOrdering() {
        return UsingToStringOrdering.INSTANCE;
    }

    public static <T> Comparator<? super T> naturalOrdering() {
        return NaturalOrdering.INSTANCE;
    }

    public static final class UsingToStringOrdering<T> implements Comparator<T> {
        static final UsingToStringOrdering INSTANCE = new UsingToStringOrdering();

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return obj.toString().compareTo(obj2.toString());
        }

        private UsingToStringOrdering() {
        }
    }

    public static final class NaturalOrdering<T extends Comparable<? super T>> implements Comparator<T> {
        static final NaturalOrdering INSTANCE = new NaturalOrdering();

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            return t.compareTo(t2);
        }

        private NaturalOrdering() {
        }
    }
}
