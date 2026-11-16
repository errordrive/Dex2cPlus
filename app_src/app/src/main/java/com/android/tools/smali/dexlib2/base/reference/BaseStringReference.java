package com.android.tools.smali.dexlib2.base.reference;

import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseStringReference extends BaseReference implements StringReference {
    @Override // com.android.tools.smali.dexlib2.iface.reference.StringReference
    public int hashCode() {
        return getString().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.StringReference
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof StringReference)) {
            return false;
        }
        return getString().equals(((StringReference) obj).getString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull CharSequence charSequence) {
        return getString().compareTo(charSequence.toString());
    }

    @Override // java.lang.CharSequence
    public int length() {
        return getString().length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return getString().charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return getString().subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @Nonnull
    public String toString() {
        return getString();
    }
}
