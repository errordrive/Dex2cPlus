package com.android.tools.smali.dexlib2.iface.value;

import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface EnumEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    FieldReference getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.EnumEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
