package com.android.tools.smali.dexlib2;

import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.util.ExceptionWithContext;

/* JADX INFO: loaded from: classes.dex */
public final class ReferenceType {
    public static final int CALL_SITE = 5;
    public static final int FIELD = 2;
    public static final int METHOD = 3;
    public static final int METHOD_HANDLE = 6;
    public static final int METHOD_PROTO = 4;
    public static final int NONE = 7;
    public static final int STRING = 0;
    public static final int TYPE = 1;

    public static int getReferenceType(Reference reference) {
        if (reference instanceof StringReference) {
            return 0;
        }
        if (reference instanceof TypeReference) {
            return 1;
        }
        if (reference instanceof FieldReference) {
            return 2;
        }
        if (reference instanceof MethodReference) {
            return 3;
        }
        if (reference instanceof MethodProtoReference) {
            return 4;
        }
        if (reference instanceof CallSiteReference) {
            return 5;
        }
        if (reference instanceof MethodHandleReference) {
            return 6;
        }
        throw new IllegalStateException("Invalid reference");
    }

    public static void validateReferenceType(int i) {
        if (i < 0 || i > 4) {
            throw new InvalidReferenceTypeException(i);
        }
    }

    public static class InvalidReferenceTypeException extends ExceptionWithContext {
        private final int referenceType;

        public InvalidReferenceTypeException(int i) {
            super("Invalid reference type: %d", Integer.valueOf(i));
            this.referenceType = i;
        }

        public InvalidReferenceTypeException(int i, String str, Object... objArr) {
            super(str, objArr);
            this.referenceType = i;
        }

        public int getReferenceType() {
            return this.referenceType;
        }
    }

    private ReferenceType() {
    }
}
