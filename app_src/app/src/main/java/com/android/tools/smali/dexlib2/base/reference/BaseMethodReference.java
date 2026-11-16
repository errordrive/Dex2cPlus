package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.util.CharSequenceUtils;
import com.android.tools.smali.util.CollectionUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMethodReference extends BaseReference implements MethodReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
    public int hashCode() {
        return (((((getDefiningClass().hashCode() * 31) + getName().hashCode()) * 31) + getReturnType().hashCode()) * 31) + getParameterTypes().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
    public boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof MethodReference)) {
            MethodReference methodReference = (MethodReference) obj;
            if (getDefiningClass().equals(methodReference.getDefiningClass()) && getName().equals(methodReference.getName()) && getReturnType().equals(methodReference.getReturnType()) && CharSequenceUtils.listEquals(getParameterTypes(), methodReference.getParameterTypes())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull MethodReference methodReference) {
        int iCompareTo = getDefiningClass().compareTo(methodReference.getDefiningClass());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iCompareTo2 = getName().compareTo(methodReference.getName());
        if (iCompareTo2 != 0) {
            return iCompareTo2;
        }
        int iCompareTo3 = getReturnType().compareTo(methodReference.getReturnType());
        return iCompareTo3 != 0 ? iCompareTo3 : CollectionUtils.compareAsIterable(CollectionUtils.usingToStringOrdering(), getParameterTypes(), methodReference.getParameterTypes());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getMethodDescriptor(this);
    }
}
