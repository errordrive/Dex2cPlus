package com.android.tools.smali.util;

import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
public class UnmodifiableRangeMap<K extends Comparable<?>, V> {
    private static final UnmodifiableRangeMap<Comparable<?>, Object> EMPTY = new UnmodifiableRangeMap<>(Collections.EMPTY_LIST, Collections.EMPTY_LIST);
    private final transient List<Range<K>> ranges;
    private final transient List<V> values;

    public static <K extends Comparable<?>, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    public static <K extends Comparable<?>, V> UnmodifiableRangeMap<K, V> of() {
        return (UnmodifiableRangeMap<K, V>) EMPTY;
    }

    public static final class Builder<K extends Comparable<?>, V> {
        private final List<Map.Entry<Range<K>, V>> entries = new ArrayList();

        public Builder<K, V> put(Range<K> range, V v) {
            if (range == null || v == null) {
                throw new NullPointerException("Both range and value must be non-null");
            }
            if (range.isEmpty()) {
                throw new IllegalArgumentException("Ranges cannot be empty");
            }
            this.entries.add(new UnmodifiableEntry(range, v));
            return this;
        }

        public UnmodifiableRangeMap<K, V> build() {
            Collections.sort(this.entries, new Comparator() { // from class: com.android.tools.smali.util.UnmodifiableRangeMap$Builder$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Range.RANGE_LEX_COMPARATOR.compare((Range) ((Map.Entry) obj).getKey(), (Range) ((Map.Entry) obj2).getKey());
                }
            });
            ArrayList arrayList = new ArrayList(this.entries.size());
            ArrayList arrayList2 = new ArrayList(this.entries.size());
            for (int i = 0; i < this.entries.size(); i++) {
                Range<K> key = this.entries.get(i).getKey();
                if (i > 0) {
                    Range<K> key2 = this.entries.get(i - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + key2 + " overlaps with entry " + key);
                    }
                }
                arrayList.add(key);
                arrayList2.add(this.entries.get(i).getValue());
            }
            return new UnmodifiableRangeMap<>(arrayList, arrayList2);
        }
    }

    private UnmodifiableRangeMap(List<Range<K>> list, List<V> list2) {
        this.ranges = Collections.unmodifiableList(list);
        this.values = Collections.unmodifiableList(list2);
    }

    @CheckForNull
    public V get(K k) {
        int iRangeBinarySearch;
        if (k == null || (iRangeBinarySearch = rangeBinarySearch(this.ranges, k)) == -1 || !this.ranges.get(iRangeBinarySearch).contains(k)) {
            return null;
        }
        return this.values.get(iRangeBinarySearch);
    }

    @CheckForNull
    public Map.Entry<Range<K>, V> getEntry(K k) {
        int iRangeBinarySearch;
        if (k == null || (iRangeBinarySearch = rangeBinarySearch(this.ranges, k)) == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(iRangeBinarySearch);
        if (range.contains(k)) {
            return new UnmodifiableEntry(range, this.values.get(iRangeBinarySearch));
        }
        return null;
    }

    private static <T extends Comparable> int rangeBinarySearch(List<Range<T>> list, T t) {
        int size = list.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            Range<T> range = list.get(i2);
            if (!range.contains(t)) {
                int iCompareTo = range.hasLowerBound() ? t.compareTo(range.getLowerBound()) : t.compareTo(range.getUpperBound());
                if (iCompareTo > 0) {
                    i = i2 + 1;
                } else if (iCompareTo < 0) {
                    size = i2 - 1;
                }
            }
            return i2;
        }
        return -1;
    }

    public static class UnmodifiableEntry<K, V> implements Map.Entry<K, V> {
        private final K key;
        private final V value;

        public UnmodifiableEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }
    }
}
