package com.android.tools.smali.dexlib2.iface.value;

import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MethodTypeEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    MethodProtoReference getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
