package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.util.ArraySortedSet;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.IteratorUtils;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class PoolClassDef extends BaseTypeReference implements ClassDef {

    @Nonnull
    final ClassDef classDef;

    @Nonnull
    final SortedSet<PoolMethod> directMethods;

    @Nonnull
    final SortedSet<Field> instanceFields;

    @Nonnull
    final TypeListPool.Key<List<String>> interfaces;

    @Nonnull
    final SortedSet<Field> staticFields;

    @Nonnull
    final SortedSet<PoolMethod> virtualMethods;
    int classDefIndex = -1;
    int annotationDirectoryOffset = 0;

    PoolClassDef(@Nonnull ClassDef classDef) {
        this.classDef = classDef;
        this.interfaces = new TypeListPool.Key<>(Collections.unmodifiableList(new ArrayList(classDef.getInterfaces())));
        this.staticFields = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), IteratorUtils.toList(classDef.getStaticFields()));
        this.instanceFields = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), IteratorUtils.toList(classDef.getInstanceFields()));
        this.directMethods = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), (Collection) IteratorUtils.toList(classDef.getDirectMethods()).stream().map(PoolMethod.TRANSFORM).collect(Collectors.toList()));
        this.virtualMethods = ArraySortedSet.copyOf(CollectionUtils.naturalOrdering(), (Collection) IteratorUtils.toList(classDef.getVirtualMethods()).stream().map(PoolMethod.TRANSFORM).collect(Collectors.toList()));
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return this.classDef.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    public int getAccessFlags() {
        return this.classDef.getAccessFlags();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSuperclass() {
        return this.classDef.getSuperclass();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public List<String> getInterfaces() {
        return (List) this.interfaces.types;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSourceFile() {
        return this.classDef.getSourceFile();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends Annotation> getAnnotations() {
        return this.classDef.getAnnotations();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<Field> getStaticFields() {
        return this.staticFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<Field> getInstanceFields() {
        return this.instanceFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Collection<Field> getFields() {
        return new AbstractCollection<Field>() { // from class: com.android.tools.smali.dexlib2.writer.pool.PoolClassDef.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            @Nonnull
            public Iterator<Field> iterator() {
                ArrayList arrayList = new ArrayList(PoolClassDef.this.staticFields);
                arrayList.addAll(PoolClassDef.this.instanceFields);
                arrayList.sort(CollectionUtils.naturalOrdering());
                return arrayList.iterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return PoolClassDef.this.staticFields.size() + PoolClassDef.this.instanceFields.size();
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<PoolMethod> getDirectMethods() {
        return this.directMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public SortedSet<PoolMethod> getVirtualMethods() {
        return this.virtualMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Collection<PoolMethod> getMethods() {
        return new AbstractCollection<PoolMethod>() { // from class: com.android.tools.smali.dexlib2.writer.pool.PoolClassDef.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            @Nonnull
            public Iterator<PoolMethod> iterator() {
                ArrayList arrayList = new ArrayList(PoolClassDef.this.directMethods);
                arrayList.addAll(PoolClassDef.this.virtualMethods);
                arrayList.sort(CollectionUtils.naturalOrdering());
                return arrayList.iterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return PoolClassDef.this.directMethods.size() + PoolClassDef.this.virtualMethods.size();
            }
        };
    }
}
