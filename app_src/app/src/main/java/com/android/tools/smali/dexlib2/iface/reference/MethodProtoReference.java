package com.android.tools.smali.dexlib2.iface.reference;

import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MethodProtoReference extends Reference, Comparable<MethodProtoReference> {
    int compareTo(@Nonnull MethodProtoReference methodProtoReference);

    boolean equals(@Nullable Object obj);

    @Nonnull
    List<? extends CharSequence> getParameterTypes();

    @Nonnull
    String getReturnType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
