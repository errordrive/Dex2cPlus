package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderMethodReference extends BaseMethodReference implements BuilderReference {

    @Nonnull
    final BuilderTypeReference definingClass;
    int index = -1;

    @Nonnull
    final BuilderStringReference name;

    @Nonnull
    final BuilderMethodProtoReference proto;

    BuilderMethodReference(@Nonnull BuilderTypeReference builderTypeReference, @Nonnull BuilderStringReference builderStringReference, @Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
        this.definingClass = builderTypeReference;
        this.name = builderStringReference;
        this.proto = builderMethodProtoReference;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getDefiningClass() {
        return this.definingClass.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getName() {
        return this.name.getString();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
    @Nonnull
    public BuilderTypeList getParameterTypes() {
        return this.proto.parameterTypes;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public String getReturnType() {
        return this.proto.returnType.getType();
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
