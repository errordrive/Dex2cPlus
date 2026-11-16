package com.android.tools.smali.dexlib2.analysis.util;

import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class MemoizingSupplier<T> implements Supplier<T> {
    private volatile Supplier<T> delegate;
    private T value;

    private MemoizingSupplier(Supplier<T> supplier) {
        if (supplier == null) {
            throw new NullPointerException("delegate == null");
        }
        this.delegate = supplier;
    }

    @Override // java.util.function.Supplier
    public T get() {
        if (this.delegate != null) {
            synchronized (this) {
                if (this.delegate != null) {
                    this.value = (T) this.delegate.get();
                    this.delegate = null;
                }
            }
        }
        return this.value;
    }

    public static <T> MemoizingSupplier<T> memoize(Supplier<T> supplier) {
        if (supplier instanceof MemoizingSupplier) {
            return (MemoizingSupplier) supplier;
        }
        return new MemoizingSupplier<>(supplier);
    }
}
