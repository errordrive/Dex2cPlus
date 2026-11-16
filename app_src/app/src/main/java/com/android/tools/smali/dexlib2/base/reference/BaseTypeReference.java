package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTypeReference extends BaseReference implements TypeReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference
    public int hashCode() {
        return getType().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof TypeReference) {
            return getType().equals(((TypeReference) obj).getType());
        }
        if (obj instanceof CharSequence) {
            return getType().equals(obj.toString());
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull CharSequence charSequence) {
        return getType().compareTo(charSequence.toString());
    }

    @Override // java.lang.CharSequence
    public int length() {
        return getType().length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return getType().charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return getType().subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @Nonnull
    public String toString() {
        return DexFormatter.INSTANCE.getType(this);
    }
}
