package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.BaseAnnotationElement;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderAnnotationElement extends BaseAnnotationElement {

    @Nonnull
    final BuilderStringReference name;

    @Nonnull
    final BuilderEncodedValues.BuilderEncodedValue value;

    public BuilderAnnotationElement(@Nonnull BuilderStringReference builderStringReference, @Nonnull BuilderEncodedValues.BuilderEncodedValue builderEncodedValue) {
        this.name = builderStringReference;
        this.value = builderEncodedValue;
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public String getName() {
        return this.name.getString();
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public EncodedValue getValue() {
        return this.value;
    }
}
