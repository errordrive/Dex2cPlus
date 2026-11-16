package com.android.tools.smali.dexlib2.immutable.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.immutable.util.CharSequenceConverter;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableMethodProtoReference extends BaseMethodProtoReference implements ImmutableReference {

    @Nonnull
    protected final List<String> parameters;

    @Nonnull
    protected final String returnType;

    public ImmutableMethodProtoReference(@Nullable List<String> list, @Nonnull String str) {
        this.parameters = ImmutableUtils.nullToEmptyList(list);
        this.returnType = str;
    }

    public ImmutableMethodProtoReference(@Nullable Iterable<? extends CharSequence> iterable, @Nonnull String str) {
        this.parameters = CharSequenceConverter.immutableStringList(iterable);
        this.returnType = str;
    }

    @Nonnull
    public static ImmutableMethodProtoReference of(@Nonnull MethodProtoReference methodProtoReference) {
        if (methodProtoReference instanceof ImmutableMethodProtoReference) {
            return (ImmutableMethodProtoReference) methodProtoReference;
        }
        return new ImmutableMethodProtoReference(methodProtoReference.getParameterTypes(), methodProtoReference.getReturnType());
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    public List<? extends CharSequence> getParameterTypes() {
        return this.parameters;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    public String getReturnType() {
        return this.returnType;
    }
}
