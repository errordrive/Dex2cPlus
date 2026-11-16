package com.android.tools.smali.dexlib2.immutable.value;

import com.android.tools.smali.dexlib2.base.value.BaseBooleanEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.BooleanEncodedValue;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableBooleanEncodedValue extends BaseBooleanEncodedValue implements ImmutableEncodedValue {
    protected final boolean value;
    public static final ImmutableBooleanEncodedValue TRUE_VALUE = new ImmutableBooleanEncodedValue(true);
    public static final ImmutableBooleanEncodedValue FALSE_VALUE = new ImmutableBooleanEncodedValue(false);

    private ImmutableBooleanEncodedValue(boolean z) {
        this.value = z;
    }

    public static ImmutableBooleanEncodedValue forBoolean(boolean z) {
        return z ? TRUE_VALUE : FALSE_VALUE;
    }

    public static ImmutableBooleanEncodedValue of(BooleanEncodedValue booleanEncodedValue) {
        return forBoolean(booleanEncodedValue.getValue());
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.BooleanEncodedValue
    public boolean getValue() {
        return this.value;
    }
}
