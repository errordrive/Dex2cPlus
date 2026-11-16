package com.android.tools.smali.dexlib2.iface.value;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface TypeEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    String getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
