package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.BaseAnnotation;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
class BuilderAnnotation extends BaseAnnotation {

    @Nonnull
    final Set<? extends BuilderAnnotationElement> elements;
    int offset = 0;

    @Nonnull
    final BuilderTypeReference type;
    int visibility;

    public BuilderAnnotation(int i, @Nonnull BuilderTypeReference builderTypeReference, @Nonnull Set<? extends BuilderAnnotationElement> set) {
        this.visibility = i;
        this.type = builderTypeReference;
        this.elements = set;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation
    public int getVisibility() {
        return this.visibility;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public String getType() {
        return this.type.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public Set<? extends BuilderAnnotationElement> getElements() {
        return this.elements;
    }
}
