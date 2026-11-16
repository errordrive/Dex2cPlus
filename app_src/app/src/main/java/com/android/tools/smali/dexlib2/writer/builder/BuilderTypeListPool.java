package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.writer.TypeListSection;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BuilderTypeListPool extends BaseBuilderPool implements TypeListSection<BuilderTypeReference, BuilderTypeList> {

    @Nonnull
    private final ConcurrentMap<List<? extends CharSequence>, BuilderTypeList> internedItems;

    public BuilderTypeListPool(@Nonnull DexBuilder dexBuilder) {
        super(dexBuilder);
        this.internedItems = new ConcurrentHashMap();
    }

    @Nonnull
    public BuilderTypeList internTypeList(@Nullable List<? extends CharSequence> list) {
        if (list == null || list.size() == 0) {
            return BuilderTypeList.EMPTY;
        }
        BuilderTypeList builderTypeList = this.internedItems.get(list);
        if (builderTypeList != null) {
            return builderTypeList;
        }
        BuilderTypeList builderTypeList2 = new BuilderTypeList(Collections.unmodifiableList((List) list.stream().map(new Function() { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderTypeListPool$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.m274x5f078422((CharSequence) obj);
            }
        }).collect(Collectors.toList())));
        BuilderTypeList builderTypeListPutIfAbsent = this.internedItems.putIfAbsent(builderTypeList2, builderTypeList2);
        return builderTypeListPutIfAbsent == null ? builderTypeList2 : builderTypeListPutIfAbsent;
    }

    /* JADX INFO: renamed from: lambda$internTypeList$0$com-android-tools-smali-dexlib2-writer-builder-BuilderTypeListPool, reason: not valid java name */
    /* synthetic */ BuilderTypeReference m274x5f078422(CharSequence charSequence) {
        return ((BuilderTypePool) this.dexBuilder.typeSection).internType(charSequence.toString());
    }

    @Override // com.android.tools.smali.dexlib2.writer.TypeListSection, com.android.tools.smali.dexlib2.writer.NullableOffsetSection
    public int getNullableItemOffset(@Nullable BuilderTypeList builderTypeList) {
        if (builderTypeList == null || builderTypeList.size() == 0) {
            return 0;
        }
        return builderTypeList.offset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.TypeListSection
    @Nonnull
    public Collection<? extends BuilderTypeReference> getTypes(@Nullable BuilderTypeList builderTypeList) {
        return builderTypeList == null ? BuilderTypeList.EMPTY : builderTypeList.types;
    }

    @Override // com.android.tools.smali.dexlib2.writer.OffsetSection
    public int getItemOffset(@Nonnull BuilderTypeList builderTypeList) {
        return builderTypeList.offset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.OffsetSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderTypeList, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderTypeList>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderTypeListPool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderTypeList builderTypeList) {
                return builderTypeList.offset;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderTypeList builderTypeList, int i) {
                int i2 = builderTypeList.offset;
                builderTypeList.offset = i;
                return i2;
            }
        };
    }
}
