package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderTypeReference extends BaseTypeReference implements BuilderReference {
    int index = -1;

    @Nonnull
    final BuilderStringReference stringReference;

    BuilderTypeReference(@Nonnull BuilderStringReference builderStringReference) {
        this.stringReference = builderStringReference;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return this.stringReference.getString();
    }

    @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderReference
    public int getIndex() {
        return this.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderReference
    public void setIndex(int i) {
        this.index = i;
    }
}
