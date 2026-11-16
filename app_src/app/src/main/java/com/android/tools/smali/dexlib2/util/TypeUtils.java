package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public final class TypeUtils {
    public static boolean isWideType(@Nonnull String str) {
        char cCharAt = str.charAt(0);
        return cCharAt == 'J' || cCharAt == 'D';
    }

    public static boolean isWideType(@Nonnull TypeReference typeReference) {
        return isWideType(typeReference.getType());
    }

    public static boolean isPrimitiveType(String str) {
        return str.length() == 1;
    }

    @Nonnull
    public static String getPackage(@Nonnull String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0) {
            return "";
        }
        return str.substring(1, iLastIndexOf);
    }

    public static boolean canAccessClass(@Nonnull String str, @Nonnull ClassDef classDef) {
        if (AccessFlags.PUBLIC.isSet(classDef.getAccessFlags())) {
            return true;
        }
        return getPackage(classDef.getType()).equals(getPackage(str));
    }

    private TypeUtils() {
    }
}
