package com.android.tools.smali.dexlib2.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class AlignmentUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static int alignOffset(int i, int i2) {
        int i3 = i2 - 1;
        return (i + i3) & (~i3);
    }

    public static boolean isAligned(int i, int i2) {
        return i % i2 == 0;
    }
}
