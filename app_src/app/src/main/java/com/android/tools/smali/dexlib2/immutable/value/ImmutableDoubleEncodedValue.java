package com.android.tools.smali.dexlib2.immutable.value;

import com.android.tools.smali.dexlib2.base.value.BaseDoubleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.DoubleEncodedValue;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableDoubleEncodedValue extends BaseDoubleEncodedValue implements ImmutableEncodedValue {
    protected final double value;

    public ImmutableDoubleEncodedValue(double d) {
        this.value = d;
    }

    public static ImmutableDoubleEncodedValue of(DoubleEncodedValue doubleEncodedValue) {
        if (doubleEncodedValue instanceof ImmutableDoubleEncodedValue) {
            return (ImmutableDoubleEncodedValue) doubleEncodedValue;
        }
        return new ImmutableDoubleEncodedValue(doubleEncodedValue.getValue());
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.DoubleEncodedValue
    public double getValue() {
        return this.value;
    }
}
