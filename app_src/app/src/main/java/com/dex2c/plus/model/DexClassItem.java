package com.dex2c.plus.model;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DexClassItem {
    public final String descriptor;
    public final String dexEntryName;
    public final String displayName;
    public final String lowerDexEntryName;
    public final String lowerDisplayName;
    public final int methodCount;
    public boolean selected;

    public DexClassItem(String str, String str2, int i) {
        str = str == null ? "" : str;
        this.dexEntryName = str;
        str2 = str2 == null ? "" : str2;
        this.descriptor = str2;
        String strDescriptorToJava = descriptorToJava(str2);
        this.displayName = strDescriptorToJava;
        this.lowerDisplayName = strDescriptorToJava.toLowerCase(Locale.US);
        this.lowerDexEntryName = str.toLowerCase(Locale.US);
        this.methodCount = i;
    }

    private static String descriptorToJava(String str) {
        if (str == null || !str.startsWith("L") || !str.endsWith(";") || str.length() <= 2) {
            return str != null ? str : "";
        }
        return str.substring(1, str.length() - 1).replace('/', '.');
    }
}
