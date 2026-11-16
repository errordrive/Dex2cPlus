package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.BaseMethodParameter;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderMethodParameter extends BaseMethodParameter {

    @Nonnull
    final BuilderAnnotationSet annotations;

    @Nullable
    final BuilderStringReference name;

    @Nonnull
    final BuilderTypeReference type;

    public BuilderMethodParameter(@Nonnull BuilderTypeReference builderTypeReference, @Nullable BuilderStringReference builderStringReference, @Nonnull BuilderAnnotationSet builderAnnotationSet) {
        this.type = builderTypeReference;
        this.name = builderStringReference;
        this.annotations = builderAnnotationSet;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return this.type.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodParameter, com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getName() {
        BuilderStringReference builderStringReference = this.name;
        if (builderStringReference == null) {
            return null;
        }
        return builderStringReference.getString();
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodParameter
    @Nonnull
    public BuilderAnnotationSet getAnnotations() {
        return this.annotations;
    }
}
