package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMethodHandleReference extends BaseReference implements MethodHandleReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
    public int hashCode() {
        return (getMethodHandleType() * 31) + getMemberReference().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof MethodHandleReference)) {
            MethodHandleReference methodHandleReference = (MethodHandleReference) obj;
            if (getMethodHandleType() == methodHandleReference.getMethodHandleType() && getMemberReference().equals(methodHandleReference.getMemberReference())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull MethodHandleReference methodHandleReference) {
        int iCompare = Integer.compare(getMethodHandleType(), methodHandleReference.getMethodHandleType());
        if (iCompare != 0) {
            return iCompare;
        }
        Reference memberReference = getMemberReference();
        if (memberReference instanceof FieldReference) {
            if (methodHandleReference.getMemberReference() instanceof FieldReference) {
                return ((FieldReference) memberReference).compareTo((FieldReference) methodHandleReference.getMemberReference());
            }
            return -1;
        }
        if (methodHandleReference.getMemberReference() instanceof MethodReference) {
            return ((MethodReference) memberReference).compareTo((MethodReference) methodHandleReference.getMemberReference());
        }
        return 1;
    }

    public String toString() {
        return DexFormatter.INSTANCE.getMethodHandle(this);
    }
}
