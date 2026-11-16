package com.android.tools.smali.dexlib2.builder;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class SwitchLabelElement {
    public final int key;

    @Nonnull
    public final Label target;

    public SwitchLabelElement(int i, @Nonnull Label label) {
        this.key = i;
        this.target = label;
    }
}
