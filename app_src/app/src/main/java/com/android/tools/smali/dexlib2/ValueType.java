package com.android.tools.smali.dexlib2;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes.dex */
public final class ValueType {
    public static final int ANNOTATION = 29;
    public static final int ARRAY = 28;
    public static final int BOOLEAN = 31;
    public static final int BYTE = 0;
    public static final int CHAR = 3;
    public static final int DOUBLE = 17;
    public static final int ENUM = 27;
    public static final int FIELD = 25;
    public static final int FLOAT = 16;
    public static final int INT = 4;
    public static final int LONG = 6;
    public static final int METHOD = 26;
    public static final int METHOD_HANDLE = 22;
    public static final int METHOD_TYPE = 21;
    public static final int NULL = 30;
    public static final int SHORT = 2;
    public static final int STRING = 23;
    public static final int TYPE = 24;

    private ValueType() {
    }

    public static String getValueTypeName(int i) {
        if (i == 0) {
            return "byte";
        }
        if (i == 6) {
            return "long";
        }
        if (i == 2) {
            return "short";
        }
        if (i == 3) {
            return "char";
        }
        if (i == 4) {
            return "int";
        }
        if (i == 16) {
            return TypedValues.Custom.S_FLOAT;
        }
        if (i == 17) {
            return "double";
        }
        switch (i) {
            case 21:
                return "method_type";
            case 22:
                return "method_handle";
            case 23:
                return TypedValues.Custom.S_STRING;
            case 24:
                return "type";
            case 25:
                return "field";
            case 26:
                return "method";
            case 27:
                return "enum";
            case 28:
                return "array";
            case 29:
                return "annotation";
            case 30:
                return "null";
            case 31:
                return TypedValues.Custom.S_BOOLEAN;
            default:
                throw new IllegalArgumentException("Unknown encoded value type: " + i);
        }
    }
}
