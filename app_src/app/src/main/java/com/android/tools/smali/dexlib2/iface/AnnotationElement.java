package com.android.tools.smali.dexlib2.iface;

import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface AnnotationElement extends Comparable<AnnotationElement> {
    int compareTo(AnnotationElement annotationElement);

    boolean equals(@Nullable Object obj);

    @Nonnull
    String getName();

    @Nonnull
    EncodedValue getValue();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.AnnotationElement$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
