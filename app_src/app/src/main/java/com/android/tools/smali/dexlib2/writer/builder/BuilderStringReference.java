package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.reference.BaseStringReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderStringReference extends BaseStringReference implements BuilderReference {
    int index = -1;

    @Nonnull
    final String string;

    BuilderStringReference(@Nonnull String str) {
        this.string = str;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.StringReference
    @Nonnull
    public String getString() {
        return this.string;
    }

    @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderReference
    public int getIndex() {
        return this.index;
    }

    @Override // com.android.tools.smali.dexlib2.writer.builder.BuilderReference
    public void setIndex(int i) {
        this.index = i;
    }
}
