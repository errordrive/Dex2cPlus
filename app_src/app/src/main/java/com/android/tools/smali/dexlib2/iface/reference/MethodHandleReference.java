package com.android.tools.smali.dexlib2.iface.reference;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MethodHandleReference extends Reference, Comparable<MethodHandleReference> {
    int compareTo(@Nonnull MethodHandleReference methodHandleReference);

    boolean equals(@Nullable Object obj);

    @Nonnull
    Reference getMemberReference();

    int getMethodHandleType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
