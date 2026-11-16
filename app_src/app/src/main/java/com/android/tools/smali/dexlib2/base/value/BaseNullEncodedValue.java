package com.android.tools.smali.dexlib2.base.value;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.NullEncodedValue;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseNullEncodedValue implements NullEncodedValue {
    @Override // com.android.tools.smali.dexlib2.iface.value.EncodedValue
    public int getValueType() {
        return 30;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.NullEncodedValue
    public int hashCode() {
        return 0;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.NullEncodedValue
    public boolean equals(@Nullable Object obj) {
        return obj instanceof NullEncodedValue;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull EncodedValue encodedValue) {
        return Integer.compare(getValueType(), encodedValue.getValueType());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getEncodedValue(this);
    }
}
