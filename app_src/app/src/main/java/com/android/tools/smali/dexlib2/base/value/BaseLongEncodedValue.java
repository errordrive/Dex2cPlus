package com.android.tools.smali.dexlib2.base.value;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.LongEncodedValue;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseLongEncodedValue implements LongEncodedValue {
    @Override // com.android.tools.smali.dexlib2.iface.value.EncodedValue
    public int getValueType() {
        return 6;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.LongEncodedValue
    public int hashCode() {
        long value = getValue();
        return (((int) value) * 31) + ((int) (value >>> 32));
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.LongEncodedValue
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof LongEncodedValue) && getValue() == ((LongEncodedValue) obj).getValue();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull EncodedValue encodedValue) {
        int iCompare = Integer.compare(getValueType(), encodedValue.getValueType());
        return iCompare != 0 ? iCompare : Long.compare(getValue(), ((LongEncodedValue) encodedValue).getValue());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getEncodedValue(this);
    }
}
