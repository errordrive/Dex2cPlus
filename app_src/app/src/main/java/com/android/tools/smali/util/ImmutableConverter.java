package com.android.tools.smali.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableConverter<ImmutableItem, Item> {
    protected abstract boolean isImmutable(@Nonnull Item item);

    @Nonnull
    protected abstract ImmutableItem makeImmutable(@Nonnull Item item);

    @Nonnull
    public List<ImmutableItem> toList(@Nullable Iterable<? extends Item> iterable) {
        if (iterable == null) {
            return Collections.EMPTY_LIST;
        }
        if (iterable instanceof List) {
            Iterator<? extends Item> it = iterable.iterator();
            while (it.hasNext()) {
                if (!isImmutable(it.next())) {
                }
            }
            return Collections.unmodifiableList((List) iterable);
        }
        Iterator<? extends Item> it2 = iterable.iterator();
        ArrayList arrayList = new ArrayList();
        while (it2.hasNext()) {
            arrayList.add(makeImmutable(it2.next()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Nonnull
    public Set<ImmutableItem> toSet(@Nullable Iterable<? extends Item> iterable) {
        if (iterable == null) {
            return Collections.EMPTY_SET;
        }
        if (iterable instanceof Set) {
            Iterator<? extends Item> it = iterable.iterator();
            while (it.hasNext()) {
                if (!isImmutable(it.next())) {
                }
            }
            return Collections.unmodifiableSet((Set) iterable);
        }
        Iterator<? extends Item> it2 = iterable.iterator();
        HashSet hashSet = new HashSet();
        while (it2.hasNext()) {
            hashSet.add(makeImmutable(it2.next()));
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Nonnull
    public SortedSet<ImmutableItem> toSortedSet(@Nonnull Comparator<? super ImmutableItem> comparator, @Nullable Iterable<? extends Item> iterable) {
        if (iterable == null) {
            return Collections.emptySortedSet();
        }
        if ((iterable instanceof SortedSet) && ((SortedSet) iterable).comparator().equals(comparator)) {
            Iterator<? extends Item> it = iterable.iterator();
            while (it.hasNext()) {
                if (!isImmutable(it.next())) {
                }
            }
            return Collections.unmodifiableSortedSet((SortedSet) iterable);
        }
        Iterator<? extends Item> it2 = iterable.iterator();
        TreeSet treeSet = new TreeSet(comparator);
        while (it2.hasNext()) {
            treeSet.add(makeImmutable(it2.next()));
        }
        return Collections.unmodifiableSortedSet(treeSet);
    }
}
