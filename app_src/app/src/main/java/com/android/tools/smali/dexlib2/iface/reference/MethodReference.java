package com.android.tools.smali.dexlib2.iface.reference;

import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MethodReference extends Reference, Comparable<MethodReference> {
    int compareTo(@Nonnull MethodReference methodReference);

    boolean equals(@Nullable Object obj);

    @Nonnull
    String getDefiningClass();

    @Nonnull
    String getName();

    @Nonnull
    List<? extends CharSequence> getParameterTypes();

    @Nonnull
    String getReturnType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.reference.MethodReference$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
