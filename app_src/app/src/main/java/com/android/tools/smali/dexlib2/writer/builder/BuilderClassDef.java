package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.util.ArraySortedSet;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.IteratorUtils;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderClassDef extends BaseTypeReference implements ClassDef {
    final int accessFlags;

    @Nonnull
    final BuilderAnnotationSet annotations;

    @Nonnull
    final SortedSet<BuilderMethod> directMethods;

    @Nonnull
    final SortedSet<BuilderField> instanceFields;

    @Nonnull
    final BuilderTypeList interfaces;

    @Nullable
    final BuilderStringReference sourceFile;

    @Nonnull
    final SortedSet<BuilderField> staticFields;

    @Nullable
    final BuilderEncodedValues.BuilderArrayEncodedValue staticInitializers;

    @Nullable
    final BuilderTypeReference superclass;

    @Nonnull
    final BuilderTypeReference type;

    @Nonnull
    final SortedSet<BuilderMethod> virtualMethods;
    int classDefIndex = -1;
    int annotationDirectoryOffset = 0;

    BuilderClassDef(@Nonnull BuilderTypeReference builderTypeReference, int i, @Nullable BuilderTypeReference builderTypeReference2, @Nonnull BuilderTypeList builderTypeList, @Nullable BuilderStringReference builderStringReference, @Nonnull BuilderAnnotationSet builderAnnotationSet, @Nullable SortedSet<BuilderField> sortedSet, @Nullable SortedSet<BuilderField> sortedSet2, @Nullable Iterable<? extends BuilderMethod> iterable, @Nullable BuilderEncodedValues.BuilderArrayEncodedValue builderArrayEncodedValue) {
        iterable = iterable == null ? Collections.EMPTY_LIST : iterable;
        sortedSet = sortedSet == null ? Collections.emptySortedSet() : sortedSet;
        sortedSet2 = sortedSet2 == null ? Collections.emptySortedSet() : sortedSet2;
        this.type = builderTypeReference;
        this.accessFlags = i;
        this.superclass = builderTypeReference2;
        this.interfaces = builderTypeList;
        this.sourceFile = builderStringReference;
        this.annotations = builderAnnotationSet;
        this.staticFields = sortedSet;
        this.instanceFields = sortedSet2;
        this.directMethods = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), IteratorUtils.toList((Iterator) IteratorUtils.filter(iterable, MethodUtil.METHOD_IS_DIRECT)));
        this.virtualMethods = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), IteratorUtils.toList((Iterator) IteratorUtils.filter(iterable, MethodUtil.METHOD_IS_VIRTUAL)));
        this.staticInitializers = builderArrayEncodedValue;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return this.type.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSuperclass() {
        BuilderTypeReference builderTypeReference = this.superclass;
        if (builderTypeReference == null) {
            return null;
        }
        return builderTypeReference.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSourceFile() {
        BuilderStringReference builderStringReference = this.sourceFile;
        if (builderStringReference == null) {
            return null;
        }
        return builderStringReference.getString();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public BuilderAnnotationSet getAnnotations() {
        return this.annotations;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<BuilderField> getStaticFields() {
        return this.staticFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<BuilderField> getInstanceFields() {
        return this.instanceFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<BuilderMethod> getDirectMethods() {
        return this.directMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<BuilderMethod> getVirtualMethods() {
        return this.virtualMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public List<String> getInterfaces() {
        return (List) this.interfaces.stream().map(new Function() { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderClassDef$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((BuilderTypeReference) obj).toString();
            }
        }).collect(Collectors.toList());
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Collection<BuilderField> getFields() {
        return new AbstractCollection<BuilderField>() { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderClassDef.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            @Nonnull
            public Iterator<BuilderField> iterator() {
                ArrayList arrayList = new ArrayList(BuilderClassDef.this.staticFields);
                arrayList.addAll(BuilderClassDef.this.instanceFields);
                Collections.sort(arrayList, CollectionUtils.naturalOrdering());
                return arrayList.iterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return BuilderClassDef.this.staticFields.size() + BuilderClassDef.this.instanceFields.size();
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Collection<BuilderMethod> getMethods() {
        return new AbstractCollection<BuilderMethod>() { // from class: com.android.tools.smali.dexlib2.writer.builder.BuilderClassDef.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            @Nonnull
            public Iterator<BuilderMethod> iterator() {
                ArrayList arrayList = new ArrayList(BuilderClassDef.this.directMethods);
                arrayList.addAll(BuilderClassDef.this.virtualMethods);
                Collections.sort(arrayList, CollectionUtils.naturalOrdering());
                return arrayList.iterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return BuilderClassDef.this.directMethods.size() + BuilderClassDef.this.virtualMethods.size();
            }
        };
    }
}
