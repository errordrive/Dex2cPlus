package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.dexlib2.writer.ProtoSection;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ProtoPool extends BaseIndexPool<MethodProtoReference> implements ProtoSection<CharSequence, CharSequence, MethodProtoReference, TypeListPool.Key<? extends Collection<? extends CharSequence>>> {
    public ProtoPool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull MethodProtoReference methodProtoReference) {
        if (((Integer) this.internedItems.put((Key) methodProtoReference, (Value) 0)) == null) {
            ((StringPool) this.dexPool.stringSection).intern(getShorty(methodProtoReference));
            ((TypePool) this.dexPool.typeSection).intern(methodProtoReference.getReturnType());
            ((TypeListPool) this.dexPool.typeListSection).intern(methodProtoReference.getParameterTypes());
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nonnull
    public CharSequence getShorty(@Nonnull MethodProtoReference methodProtoReference) {
        return MethodUtil.getShorty(methodProtoReference.getParameterTypes(), methodProtoReference.getReturnType());
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nonnull
    public CharSequence getReturnType(@Nonnull MethodProtoReference methodProtoReference) {
        return methodProtoReference.getReturnType();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ProtoSection
    @Nullable
    public TypeListPool.Key<List<? extends CharSequence>> getParameters(@Nonnull MethodProtoReference methodProtoReference) {
        return new TypeListPool.Key<>(methodProtoReference.getParameterTypes());
    }
}
