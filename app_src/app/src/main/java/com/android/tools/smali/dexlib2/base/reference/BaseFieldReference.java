package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseFieldReference extends BaseReference implements FieldReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.FieldReference
    public int hashCode() {
        return (((getDefiningClass().hashCode() * 31) + getName().hashCode()) * 31) + getType().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.FieldReference
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference) obj;
            if (getDefiningClass().equals(fieldReference.getDefiningClass()) && getName().equals(fieldReference.getName()) && getType().equals(fieldReference.getType())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull FieldReference fieldReference) {
        int iCompareTo = getDefiningClass().compareTo(fieldReference.getDefiningClass());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iCompareTo2 = getName().compareTo(fieldReference.getName());
        return iCompareTo2 != 0 ? iCompareTo2 : getType().compareTo(fieldReference.getType());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getFieldDescriptor(this);
    }
}
