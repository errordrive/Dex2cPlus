package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableFieldReference;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.StringUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ArrayProto implements TypeProto {
    private static final String BRACKETS = StringUtils.repeat("[", 256);
    protected final ClassPath classPath;
    protected final int dimensions;
    protected final String elementType;

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean isInterface() {
        return false;
    }

    public ArrayProto(@Nonnull ClassPath classPath, @Nonnull String str) {
        this.classPath = classPath;
        int i = 0;
        while (str.charAt(i) == '[') {
            i++;
            if (i == str.length()) {
                throw new ExceptionWithContext("Invalid array type: %s", str);
            }
        }
        if (i == 0) {
            throw new ExceptionWithContext("Invalid array type: %s", str);
        }
        this.dimensions = i;
        this.elementType = str.substring(i);
    }

    public String toString() {
        return getType();
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public ClassPath getClassPath() {
        return this.classPath;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nonnull
    public String getType() {
        return makeArrayType(this.elementType, this.dimensions);
    }

    public int getDimensions() {
        return this.dimensions;
    }

    @Nonnull
    public String getElementType() {
        return this.elementType;
    }

    @Nonnull
    public String getImmediateElementType() {
        int i = this.dimensions;
        if (i > 1) {
            return makeArrayType(this.elementType, i - 1);
        }
        return this.elementType;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    public boolean implementsInterface(@Nonnull String str) {
        return str.equals("Ljava/lang/Cloneable;") || str.equals("Ljava/io/Serializable;");
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public String getSuperclass() {
        return "Ljava/lang/Object;";
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005e  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008e, code lost:
    
        if (implementsInterface(r5.getType()) != false) goto L33;
     */
    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @javax.annotation.Nonnull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.tools.smali.dexlib2.analysis.TypeProto getCommonSuperclass(@javax.annotation.Nonnull com.android.tools.smali.dexlib2.analysis.TypeProto r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.android.tools.smali.dexlib2.analysis.ArrayProto
            java.lang.String r1 = "Ljava/lang/Object;"
            if (r0 == 0) goto L7c
            java.lang.String r0 = r4.getElementType()
            boolean r0 = com.android.tools.smali.dexlib2.util.TypeUtils.isPrimitiveType(r0)
            if (r0 != 0) goto L5e
            r0 = r5
            com.android.tools.smali.dexlib2.analysis.ArrayProto r0 = (com.android.tools.smali.dexlib2.analysis.ArrayProto) r0
            java.lang.String r2 = r0.getElementType()
            boolean r2 = com.android.tools.smali.dexlib2.util.TypeUtils.isPrimitiveType(r2)
            if (r2 == 0) goto L1e
            goto L5e
        L1e:
            int r2 = r4.dimensions
            int r3 = r0.dimensions
            if (r2 != r3) goto L4f
            com.android.tools.smali.dexlib2.analysis.ClassPath r1 = r4.classPath
            java.lang.String r2 = r4.elementType
            com.android.tools.smali.dexlib2.analysis.TypeProto r1 = r1.getClass(r2)
            com.android.tools.smali.dexlib2.analysis.ClassPath r2 = r4.classPath
            java.lang.String r0 = r0.elementType
            com.android.tools.smali.dexlib2.analysis.TypeProto r0 = r2.getClass(r0)
            com.android.tools.smali.dexlib2.analysis.TypeProto r2 = r1.getCommonSuperclass(r0)
            if (r1 != r2) goto L3b
            goto L74
        L3b:
            if (r0 != r2) goto L3e
            goto L90
        L3e:
            com.android.tools.smali.dexlib2.analysis.ClassPath r5 = r4.classPath
            java.lang.String r0 = r2.getType()
            int r1 = r4.dimensions
            java.lang.String r0 = makeArrayType(r0, r1)
            com.android.tools.smali.dexlib2.analysis.TypeProto r5 = r5.getClass(r0)
            return r5
        L4f:
            int r5 = java.lang.Math.min(r2, r3)
            com.android.tools.smali.dexlib2.analysis.ClassPath r0 = r4.classPath
            java.lang.String r5 = makeArrayType(r1, r5)
            com.android.tools.smali.dexlib2.analysis.TypeProto r5 = r0.getClass(r5)
            return r5
        L5e:
            int r0 = r4.dimensions
            com.android.tools.smali.dexlib2.analysis.ArrayProto r5 = (com.android.tools.smali.dexlib2.analysis.ArrayProto) r5
            int r2 = r5.dimensions
            if (r0 != r2) goto L75
            java.lang.String r0 = r4.getElementType()
            java.lang.String r5 = r5.getElementType()
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L75
        L74:
            return r4
        L75:
            com.android.tools.smali.dexlib2.analysis.ClassPath r5 = r4.classPath
            com.android.tools.smali.dexlib2.analysis.TypeProto r5 = r5.getClass(r1)
            return r5
        L7c:
            boolean r0 = r5 instanceof com.android.tools.smali.dexlib2.analysis.ClassProto
            if (r0 == 0) goto L98
            boolean r0 = r5.isInterface()     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L91
            if (r0 == 0) goto L91
            java.lang.String r0 = r5.getType()     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L91
            boolean r0 = r4.implementsInterface(r0)     // Catch: com.android.tools.smali.dexlib2.analysis.UnresolvedClassException -> L91
            if (r0 == 0) goto L91
        L90:
            return r5
        L91:
            com.android.tools.smali.dexlib2.analysis.ClassPath r5 = r4.classPath
            com.android.tools.smali.dexlib2.analysis.TypeProto r5 = r5.getClass(r1)
            return r5
        L98:
            com.android.tools.smali.dexlib2.analysis.TypeProto r5 = r5.getCommonSuperclass(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.tools.smali.dexlib2.analysis.ArrayProto.getCommonSuperclass(com.android.tools.smali.dexlib2.analysis.TypeProto):com.android.tools.smali.dexlib2.analysis.TypeProto");
    }

    @Nonnull
    private static String makeArrayType(@Nonnull String str, int i) {
        return BRACKETS.substring(0, i) + str;
    }

    @Override // com.android.tools.smali.dexlib2.analysis.TypeProto
    @Nullable
    public FieldReference getFieldByOffset(int i) {
        if (i == 8) {
            return new ImmutableFieldReference(getType(), "length", "int");
        }
        return null;
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
