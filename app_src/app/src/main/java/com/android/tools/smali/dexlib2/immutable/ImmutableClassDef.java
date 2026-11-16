package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.util.FieldUtil;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.util.ChainedIterable;
import com.android.tools.smali.util.ImmutableConverter;
import com.android.tools.smali.util.ImmutableUtils;
import com.android.tools.smali.util.IteratorUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableClassDef extends BaseTypeReference implements ClassDef {
    private static final ImmutableConverter<ImmutableClassDef, ClassDef> CONVERTER = new ImmutableConverter<ImmutableClassDef, ClassDef>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableClassDef.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull ClassDef classDef) {
            return classDef instanceof ImmutableClassDef;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableClassDef makeImmutable(@Nonnull ClassDef classDef) {
            return ImmutableClassDef.of(classDef);
        }
    };
    protected final int accessFlags;

    @Nonnull
    protected final Set<? extends ImmutableAnnotation> annotations;

    @Nonnull
    protected final SortedSet<? extends ImmutableMethod> directMethods;

    @Nonnull
    protected final SortedSet<? extends ImmutableField> instanceFields;

    @Nonnull
    protected final List<String> interfaces;

    @Nullable
    protected final String sourceFile;

    @Nonnull
    protected final SortedSet<? extends ImmutableField> staticFields;

    @Nullable
    protected final String superclass;

    @Nonnull
    protected final String type;

    @Nonnull
    protected final SortedSet<? extends ImmutableMethod> virtualMethods;

    public ImmutableClassDef(@Nonnull String str, int i, @Nullable String str2, @Nullable Collection<String> collection, @Nullable String str3, @Nullable Collection<? extends Annotation> collection2, @Nullable Iterable<? extends Field> iterable, @Nullable Iterable<? extends Method> iterable2) {
        iterable = iterable == null ? Collections.EMPTY_LIST : iterable;
        iterable2 = iterable2 == null ? Collections.EMPTY_LIST : iterable2;
        this.type = str;
        this.accessFlags = i;
        this.superclass = str2;
        this.interfaces = collection == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(new ArrayList(collection));
        this.sourceFile = str3;
        this.annotations = ImmutableAnnotation.immutableSetOf(collection2);
        this.staticFields = ImmutableField.immutableSetOf(IteratorUtils.filter(iterable, FieldUtil.FIELD_IS_STATIC));
        this.instanceFields = ImmutableField.immutableSetOf(IteratorUtils.filter(iterable, FieldUtil.FIELD_IS_INSTANCE));
        this.directMethods = ImmutableMethod.immutableSetOf(IteratorUtils.filter(iterable2, MethodUtil.METHOD_IS_DIRECT));
        this.virtualMethods = ImmutableMethod.immutableSetOf(IteratorUtils.filter(iterable2, MethodUtil.METHOD_IS_VIRTUAL));
    }

    public ImmutableClassDef(@Nonnull String str, int i, @Nullable String str2, @Nullable Collection<String> collection, @Nullable String str3, @Nullable Collection<? extends Annotation> collection2, @Nullable Iterable<? extends Field> iterable, @Nullable Iterable<? extends Field> iterable2, @Nullable Iterable<? extends Method> iterable3, @Nullable Iterable<? extends Method> iterable4) {
        this.type = str;
        this.accessFlags = i;
        this.superclass = str2;
        this.interfaces = collection == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(new ArrayList(collection));
        this.sourceFile = str3;
        this.annotations = ImmutableAnnotation.immutableSetOf(collection2);
        this.staticFields = ImmutableField.immutableSetOf(iterable);
        this.instanceFields = ImmutableField.immutableSetOf(iterable2);
        this.directMethods = ImmutableMethod.immutableSetOf(iterable3);
        this.virtualMethods = ImmutableMethod.immutableSetOf(iterable4);
    }

    public ImmutableClassDef(@Nonnull String str, int i, @Nullable String str2, @Nullable List<String> list, @Nullable String str3, @Nullable Set<? extends ImmutableAnnotation> set, @Nullable SortedSet<? extends ImmutableField> sortedSet, @Nullable SortedSet<? extends ImmutableField> sortedSet2, @Nullable SortedSet<? extends ImmutableMethod> sortedSet3, @Nullable SortedSet<? extends ImmutableMethod> sortedSet4) {
        this.type = str;
        this.accessFlags = i;
        this.superclass = str2;
        this.interfaces = ImmutableUtils.nullToEmptyList(list);
        this.sourceFile = str3;
        this.annotations = ImmutableUtils.nullToEmptySet(set);
        this.staticFields = ImmutableUtils.nullToEmptySortedSet(sortedSet);
        this.instanceFields = ImmutableUtils.nullToEmptySortedSet(sortedSet2);
        this.directMethods = ImmutableUtils.nullToEmptySortedSet(sortedSet3);
        this.virtualMethods = ImmutableUtils.nullToEmptySortedSet(sortedSet4);
    }

    public static ImmutableClassDef of(ClassDef classDef) {
        if (classDef instanceof ImmutableClassDef) {
            return (ImmutableClassDef) classDef;
        }
        return new ImmutableClassDef(classDef.getType(), classDef.getAccessFlags(), classDef.getSuperclass(), classDef.getInterfaces(), classDef.getSourceFile(), classDef.getAnnotations(), classDef.getStaticFields(), classDef.getInstanceFields(), classDef.getDirectMethods(), classDef.getVirtualMethods());
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSuperclass() {
        return this.superclass;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public List<String> getInterfaces() {
        return this.interfaces;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSourceFile() {
        return this.sourceFile;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends ImmutableAnnotation> getAnnotations() {
        return this.annotations;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends ImmutableField> getStaticFields() {
        return this.staticFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends ImmutableField> getInstanceFields() {
        return this.instanceFields;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends ImmutableMethod> getDirectMethods() {
        return this.directMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends ImmutableMethod> getVirtualMethods() {
        return this.virtualMethods;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends ImmutableField> getFields() {
        return new ChainedIterable(this.staticFields, this.instanceFields);
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends ImmutableMethod> getMethods() {
        return new ChainedIterable(this.directMethods, this.virtualMethods);
    }

    @Nonnull
    public static Set<ImmutableClassDef> immutableSetOf(@Nullable Iterable<? extends ClassDef> iterable) {
        return CONVERTER.toSet(iterable);
    }
}
