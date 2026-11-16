package com.android.tools.smali.dexlib2.iface;

import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface Annotation extends BasicAnnotation, Comparable<Annotation> {
    int compareTo(Annotation annotation);

    boolean equals(@Nullable Object obj);

    @Override // com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    Set<? extends AnnotationElement> getElements();

    @Override // com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    String getType();

    int getVisibility();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.Annotation$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
