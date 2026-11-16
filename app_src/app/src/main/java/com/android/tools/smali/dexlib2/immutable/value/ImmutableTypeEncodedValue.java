package com.android.tools.smali.dexlib2.immutable.value;

import com.android.tools.smali.dexlib2.base.value.BaseTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableTypeEncodedValue extends BaseTypeEncodedValue implements ImmutableEncodedValue {

    @Nonnull
    protected final String value;

    public ImmutableTypeEncodedValue(@Nonnull String str) {
        this.value = str;
    }

    public static ImmutableTypeEncodedValue of(@Nonnull TypeEncodedValue typeEncodedValue) {
        if (typeEncodedValue instanceof ImmutableTypeEncodedValue) {
            return (ImmutableTypeEncodedValue) typeEncodedValue;
        }
        return new ImmutableTypeEncodedValue(typeEncodedValue.getValue());
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue
    @Nonnull
    public String getValue() {
        return this.value;
    }
}
