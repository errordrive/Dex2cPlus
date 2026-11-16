package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.writer.StringSection;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BuilderStringPool implements StringSection<BuilderStringReference, BuilderStringReference> {

    @Nonnull
    private final ConcurrentMap<String, BuilderStringReference> internedItems = new ConcurrentHashMap();

    BuilderStringPool() {
    }

    @Nonnull
    BuilderStringReference internString(@Nonnull String str) {
        BuilderStringReference builderStringReference = this.internedItems.get(str);
        if (builderStringReference != null) {
            return builderStringReference;
        }
        BuilderStringReference builderStringReference2 = new BuilderStringReference(str);
        BuilderStringReference builderStringReferencePutIfAbsent = this.internedItems.putIfAbsent(str, builderStringReference2);
        return builderStringReferencePutIfAbsent == null ? builderStringReference2 : builderStringReferencePutIfAbsent;
    }

    @Nullable
    BuilderStringReference internNullableString(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return internString(str);
    }

    @Override // com.android.tools.smali.dexlib2.writer.NullableIndexSection
    public int getNullableItemIndex(@Nullable BuilderStringReference builderStringReference) {
        if (builderStringReference == null) {
            return -1;
        }
        return builderStringReference.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemIndex(@Nonnull BuilderStringReference builderStringReference) {
        return builderStringReference.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.StringSection
    public boolean hasJumboIndexes() {
        return this.internedItems.size() > 65536;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderStringReference, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderStringReference>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderStringPool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderStringReference builderStringReference) {
                return builderStringReference.index;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderStringReference builderStringReference, int i) {
                int i2 = builderStringReference.index;
                builderStringReference.index = i;
                return i2;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemCount() {
        return this.internedItems.size();
    }
}
