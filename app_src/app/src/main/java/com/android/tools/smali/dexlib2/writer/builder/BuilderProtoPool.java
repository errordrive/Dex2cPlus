package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodProtoReference;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.dexlib2.writer.ProtoSection;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BuilderProtoPool extends BaseBuilderPool implements ProtoSection<BuilderStringReference, BuilderTypeReference, BuilderMethodProtoReference, BuilderTypeList> {

    @Nonnull
    private final ConcurrentMap<MethodProtoReference, BuilderMethodProtoReference> internedItems;

    public BuilderProtoPool(@Nonnull DexBuilder dexBuilder) {
        super(dexBuilder);
        this.internedItems = new ConcurrentHashMap();
    }

    @Nonnull
    public BuilderMethodProtoReference internMethodProto(@Nonnull MethodProtoReference methodProtoReference) {
        BuilderMethodProtoReference builderMethodProtoReference = this.internedItems.get(methodProtoReference);
        if (builderMethodProtoReference != null) {
            return builderMethodProtoReference;
        }
        BuilderMethodProtoReference builderMethodProtoReference2 = new BuilderMethodProtoReference(((BuilderStringPool) this.dexBuilder.stringSection).internString(MethodUtil.getShorty(methodProtoReference.getParameterTypes(), methodProtoReference.getReturnType())), ((BuilderTypeListPool) this.dexBuilder.typeListSection).internTypeList(methodProtoReference.getParameterTypes()), ((BuilderTypePool) this.dexBuilder.typeSection).internType(methodProtoReference.getReturnType()));
        BuilderMethodProtoReference builderMethodProtoReferencePutIfAbsent = this.internedItems.putIfAbsent(builderMethodProtoReference2, builderMethodProtoReference2);
        return builderMethodProtoReferencePutIfAbsent == null ? builderMethodProtoReference2 : builderMethodProtoReferencePutIfAbsent;
    }

    @Nonnull
    public BuilderMethodProtoReference internMethodProto(@Nonnull MethodReference methodReference) {
        return internMethodProto(new ImmutableMethodProtoReference(methodReference.getParameterTypes(), methodReference.getReturnType()));
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nonnull
    public BuilderStringReference getShorty(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
        return builderMethodProtoReference.shorty;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nonnull
    public BuilderTypeReference getReturnType(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
        return builderMethodProtoReference.returnType;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nullable
    public BuilderTypeList getParameters(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
        return builderMethodProtoReference.parameterTypes;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemIndex(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
        return builderMethodProtoReference.getIndex();
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderMethodProtoReference, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderMethodProtoReference>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderProtoPool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
                return builderMethodProtoReference.index;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderMethodProtoReference builderMethodProtoReference, int i) {
                int i2 = builderMethodProtoReference.index;
                builderMethodProtoReference.index = i;
                return i2;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemCount() {
        return this.internedItems.size();
    }
}
