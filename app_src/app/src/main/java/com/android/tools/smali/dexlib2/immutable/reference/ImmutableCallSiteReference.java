package com.android.tools.smali.dexlib2.immutable.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseCallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValueFactory;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableCallSiteReference extends BaseCallSiteReference implements ImmutableReference {

    @Nonnull
    protected final List<? extends ImmutableEncodedValue> extraArguments;

    @Nonnull
    protected final ImmutableMethodHandleReference methodHandle;

    @Nonnull
    protected final String methodName;

    @Nonnull
    protected final ImmutableMethodProtoReference methodProto;

    @Nonnull
    protected final String name;

    public ImmutableCallSiteReference(@Nonnull String str, @Nonnull MethodHandleReference methodHandleReference, @Nonnull String str2, @Nonnull MethodProtoReference methodProtoReference, @Nonnull Iterable<? extends EncodedValue> iterable) {
        this.name = str;
        this.methodHandle = ImmutableMethodHandleReference.of(methodHandleReference);
        this.methodName = str2;
        this.methodProto = ImmutableMethodProtoReference.of(methodProtoReference);
        this.extraArguments = ImmutableEncodedValueFactory.immutableListOf(iterable);
    }

    public ImmutableCallSiteReference(@Nonnull String str, @Nonnull ImmutableMethodHandleReference immutableMethodHandleReference, @Nonnull String str2, @Nonnull ImmutableMethodProtoReference immutableMethodProtoReference, @Nullable List<? extends ImmutableEncodedValue> list) {
        this.name = str;
        this.methodHandle = immutableMethodHandleReference;
        this.methodName = str2;
        this.methodProto = immutableMethodProtoReference;
        this.extraArguments = ImmutableUtils.nullToEmptyList(list);
    }

    @Nonnull
    public static ImmutableCallSiteReference of(@Nonnull CallSiteReference callSiteReference) {
        if (callSiteReference instanceof ImmutableCallSiteReference) {
            return (ImmutableCallSiteReference) callSiteReference;
        }
        return new ImmutableCallSiteReference(callSiteReference.getName(), ImmutableMethodHandleReference.of(callSiteReference.getMethodHandle()), callSiteReference.getMethodName(), ImmutableMethodProtoReference.of(callSiteReference.getMethodProto()), (List<? extends ImmutableEncodedValue>) ImmutableEncodedValueFactory.immutableListOf(callSiteReference.getExtraArguments()));
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public String getName() {
        return this.name;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public MethodHandleReference getMethodHandle() {
        return this.methodHandle;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public String getMethodName() {
        return this.methodName;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public MethodProtoReference getMethodProto() {
        return this.methodProto;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.CallSiteReference
    @Nonnull
    public List<? extends EncodedValue> getExtraArguments() {
        return this.extraArguments;
    }
}
