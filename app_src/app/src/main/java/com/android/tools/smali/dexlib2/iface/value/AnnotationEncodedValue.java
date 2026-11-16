package com.android.tools.smali.dexlib2.iface.value;

import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.BasicAnnotation;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface AnnotationEncodedValue extends EncodedValue, BasicAnnotation {
    int compareTo(@Nonnull EncodedValue encodedValue);

    boolean equals(@Nullable Object obj);

    @Nonnull
    Set<? extends AnnotationElement> getElements();

    @Nonnull
    String getType();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
