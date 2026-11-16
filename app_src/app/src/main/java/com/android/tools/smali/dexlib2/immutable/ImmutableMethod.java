package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.ImmutableConverter;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableMethod extends BaseMethodReference implements Method {
    private static final ImmutableConverter<ImmutableMethod, Method> CONVERTER = new ImmutableConverter<ImmutableMethod, Method>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableMethod.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull Method method) {
            return method instanceof ImmutableMethod;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableMethod makeImmutable(@Nonnull Method method) {
            return ImmutableMethod.of(method);
        }
    };
    protected final int accessFlags;

    @Nonnull
    protected final Set<? extends ImmutableAnnotation> annotations;

    @Nonnull
    protected final String definingClass;

    @Nonnull
    protected final Set<HiddenApiRestriction> hiddenApiRestrictions;

    @Nullable
    protected final ImmutableMethodImplementation methodImplementation;

    @Nonnull
    protected final String name;

    @Nonnull
    protected final List<? extends ImmutableMethodParameter> parameters;

    @Nonnull
    protected final String returnType;

    public ImmutableMethod(@Nonnull String str, @Nonnull String str2, @Nullable Iterable<? extends MethodParameter> iterable, @Nonnull String str3, int i, @Nullable Set<? extends Annotation> set, @Nullable Set<HiddenApiRestriction> set2, @Nullable MethodImplementation methodImplementation) {
        Set<HiddenApiRestriction> setUnmodifiableSet;
        this.definingClass = str;
        this.name = str2;
        this.parameters = ImmutableMethodParameter.immutableListOf(iterable);
        this.returnType = str3;
        this.accessFlags = i;
        this.annotations = ImmutableAnnotation.immutableSetOf(set);
        if (set2 == null) {
            setUnmodifiableSet = Collections.EMPTY_SET;
        } else {
            setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(set2));
        }
        this.hiddenApiRestrictions = setUnmodifiableSet;
        this.methodImplementation = ImmutableMethodImplementation.of(methodImplementation);
    }

    public ImmutableMethod(@Nonnull String str, @Nonnull String str2, @Nullable List<? extends ImmutableMethodParameter> list, @Nonnull String str3, int i, @Nullable Set<? extends ImmutableAnnotation> set, @Nullable Set<HiddenApiRestriction> set2, @Nullable ImmutableMethodImplementation immutableMethodImplementation) {
        this.definingClass = str;
        this.name = str2;
        this.parameters = ImmutableUtils.nullToEmptyList(list);
        this.returnType = str3;
        this.accessFlags = i;
        this.annotations = ImmutableUtils.nullToEmptySet(set);
        this.hiddenApiRestrictions = ImmutableUtils.nullToEmptySet(set2);
        this.methodImplementation = immutableMethodImplementation;
    }

    public static ImmutableMethod of(Method method) {
        if (method instanceof ImmutableMethod) {
            return (ImmutableMethod) method;
        }
        return new ImmutableMethod(method.getDefiningClass(), method.getName(), method.getParameters(), method.getReturnType(), method.getAccessFlags(), method.getAnnotations(), method.getHiddenApiRestrictions(), method.getImplementation());
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
        return this.parameters;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public List<? extends ImmutableMethodParameter> getParameters() {
        return this.parameters;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public String getReturnType() {
        return this.returnType;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends ImmutableAnnotation> getAnnotations() {
        return this.annotations;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
        return this.hiddenApiRestrictions;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nullable
    public ImmutableMethodImplementation getImplementation() {
        return this.methodImplementation;
    }

    @Nonnull
    public static SortedSet<ImmutableMethod> immutableSetOf(@Nullable Iterable<? extends Method> iterable) {
        return CONVERTER.toSortedSet(CollectionUtils.naturalOrdering(), iterable);
    }
}
