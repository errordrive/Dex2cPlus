package com.android.tools.smali.dexlib2.immutable.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.immutable.util.CharSequenceConverter;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableMethodReference extends BaseMethodReference implements ImmutableReference {

    @Nonnull
    protected final String definingClass;

    @Nonnull
    protected final String name;

    @Nonnull
    protected final List<String> parameters;

    @Nonnull
    protected final String returnType;

    public ImmutableMethodReference(@Nonnull String str, @Nonnull String str2, @Nullable Iterable<? extends CharSequence> iterable, @Nonnull String str3) {
        this.definingClass = str;
        this.name = str2;
        this.parameters = CharSequenceConverter.immutableStringList(iterable);
        this.returnType = str3;
    }

    public ImmutableMethodReference(@Nonnull String str, @Nonnull String str2, @Nullable List<String> list, @Nonnull String str3) {
        this.definingClass = str;
        this.name = str2;
        this.parameters = ImmutableUtils.nullToEmptyList(list);
        this.returnType = str3;
    }

    @Nonnull
    public static ImmutableMethodReference of(@Nonnull MethodReference methodReference) {
        if (methodReference instanceof ImmutableMethodReference) {
            return (ImmutableMethodReference) methodReference;
        }
        return new ImmutableMethodReference(methodReference.getDefiningClass(), methodReference.getName(), methodReference.getParameterTypes(), methodReference.getReturnType());
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
    public List<String> getParameterTypes() {
        return this.parameters;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public String getReturnType() {
        return this.returnType;
    }
}
