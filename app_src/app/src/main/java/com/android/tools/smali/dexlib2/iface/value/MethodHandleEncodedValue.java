package com.android.tools.smali.dexlib2.iface.value;

import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MethodHandleEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    MethodHandleReference getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
