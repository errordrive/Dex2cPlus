package com.android.tools.smali.dexlib2.iface.value;

import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface ArrayEncodedValue extends EncodedValue {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    List<? extends EncodedValue> getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
