package com.android.tools.smali.util;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableUtils {
    @Nonnull
    public static <T> List<T> nullToEmptyList(@Nullable List<T> list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        return Collections.unmodifiableList(list);
    }

    @Nonnull
    public static <T> Set<T> nullToEmptySet(@Nullable Set<T> set) {
        if (set == null) {
            return Collections.EMPTY_SET;
        }
        return Collections.unmodifiableSet(set);
    }

    @Nonnull
    public static <T> SortedSet<T> nullToEmptySortedSet(@Nullable SortedSet<T> sortedSet) {
        if (sortedSet == null) {
            return Collections.emptySortedSet();
        }
        return Collections.unmodifiableSortedSet(sortedSet);
    }
}
