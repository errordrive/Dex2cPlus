package com.android.tools.smali.dexlib2.dexbacked.util;

import java.util.AbstractList;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class FixedSizeList<T> extends AbstractList<T> {
    @Nonnull
    public abstract T readItem(int i);

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        return readItem(i);
    }
}
