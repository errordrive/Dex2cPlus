package com.android.tools.smali.dexlib2.iface;

import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public interface BasicAnnotation {
    @Nonnull
    Set<? extends AnnotationElement> getElements();

    @Nonnull
    String getType();
}
