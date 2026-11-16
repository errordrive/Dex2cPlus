package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.writer.AnnotationSetSection;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class BuilderAnnotationSetPool extends BaseBuilderPool implements AnnotationSetSection<BuilderAnnotation, BuilderAnnotationSet> {

    @Nonnull
    private final ConcurrentMap<Set<? extends Annotation>, BuilderAnnotationSet> internedItems;

    public BuilderAnnotationSetPool(@Nonnull DexBuilder dexBuilder) {
        super(dexBuilder);
        this.internedItems = new ConcurrentHashMap();
    }

    @Nonnull
    public BuilderAnnotationSet internAnnotationSet(@Nullable Set<? extends Annotation> set) {
        if (set == null) {
            return BuilderAnnotationSet.EMPTY;
        }
        BuilderAnnotationSet builderAnnotationSet = this.internedItems.get(set);
        if (builderAnnotationSet != null) {
            return builderAnnotationSet;
        }
        BuilderAnnotationSet builderAnnotationSet2 = new BuilderAnnotationSet(Collections.unmodifiableSet((Set) set.stream().map(new Function() { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderAnnotationSetPool$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.m273x9cd6debe((Annotation) obj);
            }
        }).collect(Collectors.toSet())));
        BuilderAnnotationSet builderAnnotationSetPutIfAbsent = this.internedItems.putIfAbsent(builderAnnotationSet2, builderAnnotationSet2);
        return builderAnnotationSetPutIfAbsent == null ? builderAnnotationSet2 : builderAnnotationSetPutIfAbsent;
    }

    /* JADX INFO: renamed from: lambda$internAnnotationSet$0$com-android-tools-smali-dexlib2-writer-builder-BuilderAnnotationSetPool, reason: not valid java name */
    /* synthetic */ BuilderAnnotation m273x9cd6debe(Annotation annotation) {
        return ((BuilderAnnotationPool) this.dexBuilder.annotationSection).internAnnotation(annotation);
    }

    @Override // com.android.tools.smali.dexlib2.writer.AnnotationSetSection
    @Nonnull
    public Collection<? extends BuilderAnnotation> getAnnotations(@Nonnull BuilderAnnotationSet builderAnnotationSet) {
        return builderAnnotationSet.annotations;
    }

    @Override // com.android.tools.smali.dexlib2.writer.NullableOffsetSection
    public int getNullableItemOffset(@Nullable BuilderAnnotationSet builderAnnotationSet) {
        if (builderAnnotationSet == null) {
            return 0;
        }
        return builderAnnotationSet.offset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.OffsetSection
    public int getItemOffset(@Nonnull BuilderAnnotationSet builderAnnotationSet) {
        return builderAnnotationSet.offset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.OffsetSection
    @Nonnull
    public Collection<? extends Map.Entry<? extends BuilderAnnotationSet, Integer>> getItems() {
        return new BuilderMapEntryCollection<BuilderAnnotationSet>(this.internedItems.values()) { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderAnnotationSetPool.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int getValue(@Nonnull BuilderAnnotationSet builderAnnotationSet) {
                return builderAnnotationSet.offset;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderMapEntryCollection
            public int setValue(@Nonnull BuilderAnnotationSet builderAnnotationSet, int i) {
                int i2 = builderAnnotationSet.offset;
                builderAnnotationSet.offset = i;
                return i2;
            }
        };
    }
}
