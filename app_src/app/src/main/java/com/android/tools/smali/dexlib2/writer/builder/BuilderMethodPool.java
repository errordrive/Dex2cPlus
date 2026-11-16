package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.writer.MethodSection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
class BuilderMethodPool extends BaseBuilderPool implements MethodSection<BuilderStringReference, BuilderTypeReference, BuilderMethodProtoReference, BuilderMethodReference, BuilderMethod> {

    @Nonnull
    private final ConcurrentMap<MethodReference, BuilderMethodReference> internedItems;

    public BuilderMethodPool(@Nonnull DexBuilder dexBuilder) {
        super(dexBuilder);
        this.internedItems = new ConcurrentHashMap();
    }

    @Nonnull
    public BuilderMethodReference internMethod(@Nonnull MethodReference methodReference) {
        BuilderMethodReference builderMethodReference = this.internedItems.get(methodReference);
        if (builderMethodReference != null) {
            return builderMethodReference;
        }
        BuilderMethodReference builderMethodReference2 = new BuilderMethodReference(((BuilderTypePool) this.dexBuilder.typeSection).internType(methodReference.getDefiningClass()), ((BuilderStringPool) this.dexBuilder.stringSection).internString(methodReference.getName()), ((BuilderProtoPool) this.dexBuilder.protoSection).internMethodProto(methodReference));
        BuilderMethodReference builderMethodReferencePutIfAbsent = this.internedItems.putIfAbsent(builderMethodReference2, builderMethodReference2);
        return builderMethodReferencePutIfAbsent == null ? builderMethodReference2 : builderMethodReferencePutIfAbsent;
    }

    @Nonnull
    public BuilderMethodReference internMethod(@Nonnull String str, @Nonnull String str2, @Nonnull List<? extends CharSequence> list, @Nonnull String str3) {
        return internMethod(new MethodKey(str, str2, list, str3));
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    @Nonnull
    public BuilderMethodReference getMethodReference(@Nonnull BuilderMethod builderMethod) {
        return builderMethod.methodReference;
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    @Nonnull
    public BuilderTypeReference getDefiningClass(@Nonnull BuilderMethodReference builderMethodReference) {
        return builderMethodReference.definingClass;
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    @Nonnull
    public BuilderMethodProtoReference getPrototype(@Nonnull BuilderMethodReference builderMethodReference) {
        return builderMethodReference.proto;
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    @Nonnull
    public BuilderMethodProtoReference getPrototype(@Nonnull BuilderMethod builderMethod) {
        return builderMethod.methodReference.proto;
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    @Nonnull
    public BuilderStringReference getName(@Nonnull BuilderMethodReference builderMethodReference) {
        return builderMethodReference.name;
    }

    @Override // com.android.tools.smali.dexlib2.writer.MethodSection
    public int getMethodIndex(@Nonnull BuilderMethod builderMethod) {
        return builderMethod.methodReference.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemIndex(@Nonnull BuilderMethodReference builderMethodReference) {
        return builderMethodReference.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderMethodReference, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderMethodReference>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderMethodPool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderMethodReference builderMethodReference) {
                return builderMethodReference.index;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderMethodReference builderMethodReference, int i) {
                int i2 = builderMethodReference.index;
                builderMethodReference.index = i;
                return i2;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemCount() {
        return this.internedItems.size();
    }

    private static class MethodKey extends BaseMethodReference implements MethodReference {

        @Nonnull
        private final String definingClass;

        @Nonnull
        private final String name;

        @Nonnull
        private final List<? extends CharSequence> parameterTypes;

        @Nonnull
        private final String returnType;

        public MethodKey(@Nonnull String str, @Nonnull String str2, @Nonnull List<? extends CharSequence> list, @Nonnull String str3) {
            this.definingClass = str;
            this.name = str2;
            this.parameterTypes = list;
            this.returnType = str3;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getDefiningClass() {
            return this.definingClass;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getName() {
            return this.name;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
        @Nonnull
        public List<? extends CharSequence> getParameterTypes() {
            return this.parameterTypes;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
        @Nonnull
        public String getReturnType() {
            return this.returnType;
        }
    }
}
