package com.android.tools.smali.dexlib2.immutable.value;

import com.android.tools.smali.dexlib2.base.value.BaseFloatEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FloatEncodedValue;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableFloatEncodedValue extends BaseFloatEncodedValue implements ImmutableEncodedValue {
    protected final float value;

    public ImmutableFloatEncodedValue(float f) {
        this.value = f;
    }

    public static ImmutableFloatEncodedValue of(FloatEncodedValue floatEncodedValue) {
        if (floatEncodedValue instanceof ImmutableFloatEncodedValue) {
            return (ImmutableFloatEncodedValue) floatEncodedValue;
        }
        return new ImmutableFloatEncodedValue(floatEncodedValue.getValue());
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.FloatEncodedValue
    public float getValue() {
        return this.value;
    }
}
