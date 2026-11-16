package com.android.tools.smali.dexlib2.iface.reference;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface FieldReference extends Reference, Comparable<FieldReference> {
    int compareTo(@Nonnull FieldReference fieldReference);

    boolean equals(@Nullable Object obj);

    @Nonnull
    String getDefiningClass();

    @Nonnull
    String getName();

    @Nonnull
    String getType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.reference.FieldReference$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
