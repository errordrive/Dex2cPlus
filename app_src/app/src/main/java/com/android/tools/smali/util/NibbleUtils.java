package com.android.tools.smali.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class NibbleUtils {
    public static int extractHighSignedNibble(int i) {
        return (i << 24) >> 28;
    }

    public static int extractHighUnsignedNibble(int i) {
        return (i & 240) >>> 4;
    }

    public static int extractLowSignedNibble(int i) {
        return (i << 28) >> 28;
    }

    public static int extractLowUnsignedNibble(int i) {
        return i & 15;
    }
}
