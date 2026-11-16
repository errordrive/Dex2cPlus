package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.writer.TypeSection;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BuilderTypePool extends BaseBuilderPool implements TypeSection<BuilderStringReference, BuilderTypeReference, BuilderTypeReference> {

    @Nonnull
    private final ConcurrentMap<String, BuilderTypeReference> internedItems;

    public BuilderTypePool(@Nonnull DexBuilder dexBuilder) {
        super(dexBuilder);
        this.internedItems = new ConcurrentHashMap();
    }

    @Nonnull
    public BuilderTypeReference internType(@Nonnull String str) {
        BuilderTypeReference builderTypeReference = this.internedItems.get(str);
        if (builderTypeReference != null) {
            return builderTypeReference;
        }
        BuilderTypeReference builderTypeReference2 = new BuilderTypeReference(((BuilderStringPool) this.dexBuilder.stringSection).internString(str));
        BuilderTypeReference builderTypeReferencePutIfAbsent = this.internedItems.putIfAbsent(str, builderTypeReference2);
        return builderTypeReferencePutIfAbsent == null ? builderTypeReference2 : builderTypeReferencePutIfAbsent;
    }

    @Nullable
    public BuilderTypeReference internNullableType(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return internType(str);
    }

    @Override // com.android.tools.smali.dexlib2.writer.TypeSection
    @Nonnull
    public BuilderStringReference getString(@Nonnull BuilderTypeReference builderTypeReference) {
        return builderTypeReference.stringReference;
    }

    @Override // com.android.tools.smali.dexlib2.writer.NullableIndexSection
    public int getNullableItemIndex(@Nullable BuilderTypeReference builderTypeReference) {
        if (builderTypeReference == null) {
            return -1;
        }
        return builderTypeReference.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemIndex(@Nonnull BuilderTypeReference builderTypeReference) {
        return builderTypeReference.getIndex();
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderTypeReference, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderTypeReference>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderTypePool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderTypeReference builderTypeReference) {
                return builderTypeReference.index;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderTypeReference builderTypeReference, int i) {
                int i2 = builderTypeReference.index;
                builderTypeReference.index = i;
                return i2;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemCount() {
        return this.internedItems.size();
    }
}
