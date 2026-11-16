package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class UnknownClassProto implements TypeProto {

    @Nonnull
    protected final ClassPath classPath;

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public String getSuperclass() {
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean implementsInterface(@Nonnull String str) {
        return false;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean isInterface() {
        return false;
    }

    public UnknownClassProto(@Nonnull ClassPath classPath) {
        this.classPath = classPath;
    }

    public String toString() {
        return "Ujava/lang/Object;";
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public ClassPath getClassPath() {
        return this.classPath;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public TypeProto getCommonSuperclass(@Nonnull TypeProto typeProto) {
        if (typeProto.getType().equals("Ljava/lang/Object;")) {
            return typeProto;
        }
        return typeProto instanceof ArrayProto ? this.classPath.getClass("Ljava/lang/Object;") : this;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public String getType() {
        return "Ujava/lang/Object;";
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public FieldReference getFieldByOffset(int i) {
        return this.classPath.getClass("Ljava/lang/Object;").getFieldByOffset(i);
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public Method getMethodByVtableIndex(int i) {
        return this.classPath.getClass("Ljava/lang/Object;").getMethodByVtableIndex(i);
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public int findMethodIndexInVtable(@Nonnull MethodReference methodReference) {
        return this.classPath.getClass("Ljava/lang/Object;").findMethodIndexInVtable(methodReference);
    }
}
