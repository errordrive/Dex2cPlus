package com.android.tools.smali.dexlib2.rewriter;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public interface Rewriter<T> {
    @Nonnull
    T rewrite(@Nonnull T t);
}
