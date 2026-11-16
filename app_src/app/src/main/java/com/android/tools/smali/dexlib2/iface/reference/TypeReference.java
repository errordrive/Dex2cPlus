package com.android.tools.smali.dexlib2.iface.reference;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface TypeReference extends Reference, CharSequence, Comparable<CharSequence> {
    int compareTo(@Nonnull CharSequence charSequence);

    boolean equals(@Nullable Object obj);

    @Nonnull
    String getType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.reference.TypeReference$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
