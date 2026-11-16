package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.analysis.util.TypeProtoUtils;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.dexlib2.util.TypeUtils;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class AnalyzedMethodUtil {
    public static boolean canAccess(@Nonnull TypeProto typeProto, @Nonnull Method method, boolean z, boolean z2, boolean z3) {
        if (z && MethodUtil.isPackagePrivate(method) && !TypeUtils.getPackage(method.getDefiningClass()).equals(TypeUtils.getPackage(typeProto.getType()))) {
            return false;
        }
        if (z2 && (method.getAccessFlags() & AccessFlags.PROTECTED.getValue()) != 0 && !TypeProtoUtils.extendsFrom(typeProto, method.getDefiningClass())) {
            return false;
        }
        if (z3) {
            return TypeUtils.canAccessClass(typeProto.getType(), typeProto.getClassPath().getClassDef(method.getDefiningClass()));
        }
        return true;
    }
}
