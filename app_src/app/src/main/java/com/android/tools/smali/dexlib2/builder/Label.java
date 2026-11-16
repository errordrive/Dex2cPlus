package com.android.tools.smali.dexlib2.builder;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class Label extends ItemWithLocation {
    Label() {
    }

    Label(MethodLocation methodLocation) {
        this.location = methodLocation;
    }

    public int getCodeAddress() {
        return getLocation().getCodeAddress();
    }

    @Nonnull
    public MethodLocation getLocation() {
        if (this.location == null) {
            throw new IllegalStateException("Cannot get the location of a label that hasn't been placed yet.");
        }
        return this.location;
    }
}
