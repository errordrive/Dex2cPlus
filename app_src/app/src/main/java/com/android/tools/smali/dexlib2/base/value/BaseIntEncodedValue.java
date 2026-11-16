package com.android.tools.smali.dexlib2.base.value;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.IntEncodedValue;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseIntEncodedValue implements IntEncodedValue {
    @Override // com.android.tools.smali.dexlib2.iface.value.EncodedValue
    public int getValueType() {
        return 4;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.IntEncodedValue
    public int hashCode() {
        return getValue();
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.IntEncodedValue
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof IntEncodedValue) && getValue() == ((IntEncodedValue) obj).getValue();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull EncodedValue encodedValue) {
        int iCompare = Integer.compare(getValueType(), encodedValue.getValueType());
        return iCompare != 0 ? iCompare : Integer.compare(getValue(), ((IntEncodedValue) encodedValue).getValue());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getEncodedValue(this);
    }
}
