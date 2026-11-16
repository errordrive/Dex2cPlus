package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.util.CharSequenceUtils;
import com.android.tools.smali.util.CollectionUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMethodProtoReference extends BaseReference implements MethodProtoReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    public int hashCode() {
        return (getReturnType().hashCode() * 31) + getParameterTypes().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof MethodProtoReference) {
            MethodProtoReference methodProtoReference = (MethodProtoReference) obj;
            if (getReturnType().equals(methodProtoReference.getReturnType()) && CharSequenceUtils.listEquals(getParameterTypes(), methodProtoReference.getParameterTypes())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull MethodProtoReference methodProtoReference) {
        int iCompareTo = getReturnType().compareTo(methodProtoReference.getReturnType());
        return iCompareTo != 0 ? iCompareTo : CollectionUtils.compareAsIterable(CollectionUtils.usingToStringOrdering(), getParameterTypes(), methodProtoReference.getParameterTypes());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getMethodProtoDescriptor(this);
    }
}
