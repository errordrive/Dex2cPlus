package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.util.CharSequenceUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class MethodUtil {
    private static int directMask = (AccessFlags.STATIC.getValue() | AccessFlags.PRIVATE.getValue()) | AccessFlags.CONSTRUCTOR.getValue();
    public static Predicate<Method> METHOD_IS_DIRECT = new Predicate<Method>() { // from class: com.android.tools.smali.dexlib2.util.MethodUtil.1
        @Override // java.util.function.Predicate
        public boolean test(@Nullable Method method) {
            return method != null && MethodUtil.isDirect(method);
        }
    };
    public static Predicate<Method> METHOD_IS_VIRTUAL = new Predicate<Method>() { // from class: com.android.tools.smali.dexlib2.util.MethodUtil.2
        @Override // java.util.function.Predicate
        public boolean test(@Nullable Method method) {
            return (method == null || MethodUtil.isDirect(method)) ? false : true;
        }
    };

    public static boolean isDirect(@Nonnull Method method) {
        return (method.getAccessFlags() & directMask) != 0;
    }

    public static boolean isStatic(@Nonnull Method method) {
        return AccessFlags.STATIC.isSet(method.getAccessFlags());
    }

    public static boolean isConstructor(@Nonnull MethodReference methodReference) {
        return methodReference.getName().equals("<init>");
    }

    public static boolean isPackagePrivate(@Nonnull Method method) {
        return (method.getAccessFlags() & ((AccessFlags.PRIVATE.getValue() | AccessFlags.PROTECTED.getValue()) | AccessFlags.PUBLIC.getValue())) == 0;
    }

    public static int getParameterRegisterCount(@Nonnull Method method) {
        return getParameterRegisterCount(method, isStatic(method));
    }

    public static int getParameterRegisterCount(@Nonnull MethodReference methodReference, boolean z) {
        return getParameterRegisterCount(methodReference.getParameterTypes(), z);
    }

    public static int getParameterRegisterCount(@Nonnull Collection<? extends CharSequence> collection, boolean z) {
        Iterator<? extends CharSequence> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            char cCharAt = it.next().charAt(0);
            i = (cCharAt == 'J' || cCharAt == 'D') ? i + 2 : i + 1;
        }
        return !z ? i + 1 : i;
    }

    private static char getShortyType(CharSequence charSequence) {
        if (charSequence.length() > 1) {
            return 'L';
        }
        return charSequence.charAt(0);
    }

    public static String getShorty(Collection<? extends CharSequence> collection, String str) {
        StringBuilder sb = new StringBuilder(collection.size() + 1);
        sb.append(getShortyType(str));
        Iterator<? extends CharSequence> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(getShortyType(it.next()));
        }
        return sb.toString();
    }

    public static boolean methodSignaturesMatch(@Nonnull MethodReference methodReference, @Nonnull MethodReference methodReference2) {
        return methodReference.getName().equals(methodReference2.getName()) && methodReference.getReturnType().equals(methodReference2.getReturnType()) && CharSequenceUtils.listEquals(methodReference.getParameterTypes(), methodReference2.getParameterTypes());
    }

    private MethodUtil() {
    }
}
