package com.android.tools.smali.dexlib2.iface.value;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface DoubleEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    double getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.DoubleEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
