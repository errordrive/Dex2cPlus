package com.android.tools.smali.dexlib2.analysis;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.util.ExceptionWithContext;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.Writer;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class RegisterType {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final byte BOOLEAN = 4;
    public static final byte BYTE = 5;
    public static final byte CHAR = 9;
    public static final byte CONFLICTED = 19;
    public static final byte DOUBLE_HI = 15;
    public static final byte DOUBLE_LO = 14;
    public static final byte FLOAT = 11;
    public static final byte INTEGER = 10;
    public static final byte LONG_HI = 13;
    public static final byte LONG_LO = 12;
    public static final byte NULL = 2;
    public static final byte ONE = 3;
    public static final byte POS_BYTE = 6;
    public static final byte POS_SHORT = 8;
    public static final byte REFERENCE = 18;
    public static final byte SHORT = 7;
    public static final byte UNINIT = 1;
    public static final byte UNINIT_REF = 16;
    public static final byte UNINIT_THIS = 17;
    public static final byte UNKNOWN = 0;
    public final byte category;

    @Nullable
    public final TypeProto type;
    public static final String[] CATEGORY_NAMES = {"Unknown", "Uninit", "Null", "One", "Boolean", "Byte", "PosByte", "Short", "PosShort", "Char", "Integer", "Float", "LongLo", "LongHi", "DoubleLo", "DoubleHi", "UninitRef", "UninitThis", "Reference", "Conflicted"};
    protected static byte[][] mergeTable = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19}, new byte[]{1, 1, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{2, 19, 2, 4, 4, 5, 6, 7, 8, 9, 10, 11, 19, 19, 19, 19, 19, 19, 18, 19}, new byte[]{3, 19, 4, 3, 4, 5, 6, 7, 8, 9, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{4, 19, 4, 4, 4, 5, 6, 7, 8, 9, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{5, 19, 5, 5, 5, 5, 5, 7, 7, 10, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{6, 19, 6, 6, 6, 5, 6, 7, 8, 9, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{7, 19, 7, 7, 7, 7, 7, 7, 7, 10, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{8, 19, 8, 8, 8, 7, 8, 7, 8, 9, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{9, 19, 9, 9, 9, 10, 9, 10, 9, 9, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{10, 19, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{11, 19, 11, 11, 11, 11, 11, 11, 11, 11, 10, 11, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{12, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 12, 19, 12, 19, 19, 19, 19, 19}, new byte[]{13, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 13, 19, 13, 19, 19, 19, 19}, new byte[]{14, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 12, 19, 14, 19, 19, 19, 19, 19}, new byte[]{15, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 13, 19, 15, 19, 19, 19, 19}, new byte[]{16, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19}, new byte[]{17, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 17, 19, 19}, new byte[]{18, 19, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 19}, new byte[]{19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19}};
    public static final RegisterType UNKNOWN_TYPE = new RegisterType((byte) 0, null);
    public static final RegisterType UNINIT_TYPE = new RegisterType((byte) 1, null);
    public static final RegisterType NULL_TYPE = new RegisterType((byte) 2, null);
    public static final RegisterType ONE_TYPE = new RegisterType((byte) 3, null);
    public static final RegisterType BOOLEAN_TYPE = new RegisterType((byte) 4, null);
    public static final RegisterType BYTE_TYPE = new RegisterType((byte) 5, null);
    public static final RegisterType POS_BYTE_TYPE = new RegisterType((byte) 6, null);
    public static final RegisterType SHORT_TYPE = new RegisterType((byte) 7, null);
    public static final RegisterType POS_SHORT_TYPE = new RegisterType((byte) 8, null);
    public static final RegisterType CHAR_TYPE = new RegisterType((byte) 9, null);
    public static final RegisterType INTEGER_TYPE = new RegisterType((byte) 10, null);
    public static final RegisterType FLOAT_TYPE = new RegisterType((byte) 11, null);
    public static final RegisterType LONG_LO_TYPE = new RegisterType((byte) 12, null);
    public static final RegisterType LONG_HI_TYPE = new RegisterType((byte) 13, null);
    public static final RegisterType DOUBLE_LO_TYPE = new RegisterType((byte) 14, null);
    public static final RegisterType DOUBLE_HI_TYPE = new RegisterType((byte) 15, null);
    public static final RegisterType CONFLICTED_TYPE = new RegisterType((byte) 19, null);

    private RegisterType(byte b, @Nullable TypeProto typeProto) {
        this.category = b;
        this.type = typeProto;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("(");
        sb.append(CATEGORY_NAMES[this.category]);
        if (this.type == null) {
            str = "";
        } else {
            str = "," + this.type;
        }
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }

    public void writeTo(Writer writer) throws IOException {
        writer.write(40);
        writer.write(CATEGORY_NAMES[this.category]);
        if (this.type != null) {
            writer.write(44);
            writer.write(this.type.getType());
        }
        writer.write(41);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            RegisterType registerType = (RegisterType) obj;
            byte b = this.category;
            if (b == registerType.category && b != 16 && b != 17) {
                TypeProto typeProto = this.type;
                TypeProto typeProto2 = registerType.type;
                if (typeProto != null) {
                    return typeProto.equals(typeProto2);
                }
                if (typeProto2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.category * Ascii.US;
        TypeProto typeProto = this.type;
        return i + (typeProto != null ? typeProto.hashCode() : 0);
    }

    @Nonnull
    public static RegisterType getWideRegisterType(@Nonnull CharSequence charSequence, boolean z) {
        char cCharAt = charSequence.charAt(0);
        if (cCharAt == 'D') {
            if (z) {
                return getRegisterType((byte) 14, (TypeProto) null);
            }
            return getRegisterType((byte) 15, (TypeProto) null);
        }
        if (cCharAt != 'J') {
            throw new ExceptionWithContext("Cannot use this method for narrow register type: %s", charSequence);
        }
        if (z) {
            return getRegisterType((byte) 12, (TypeProto) null);
        }
        return getRegisterType((byte) 13, (TypeProto) null);
    }

    @Nonnull
    public static RegisterType getRegisterType(@Nonnull ClassPath classPath, @Nonnull CharSequence charSequence) {
        char cCharAt = charSequence.charAt(0);
        if (cCharAt == 'F') {
            return FLOAT_TYPE;
        }
        if (cCharAt != 'L') {
            if (cCharAt == 'S') {
                return SHORT_TYPE;
            }
            if (cCharAt == 'I') {
                return INTEGER_TYPE;
            }
            if (cCharAt == 'J') {
                return LONG_LO_TYPE;
            }
            if (cCharAt == 'Z') {
                return BOOLEAN_TYPE;
            }
            if (cCharAt != '[') {
                switch (cCharAt) {
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                        return BYTE_TYPE;
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                        return CHAR_TYPE;
                    case HeaderItem.TYPE_START_OFFSET /* 68 */:
                        return DOUBLE_LO_TYPE;
                    default:
                        throw new AnalysisException("Invalid type: " + ((Object) charSequence), new Object[0]);
                }
            }
        }
        return getRegisterType((byte) 18, classPath.getClass(charSequence));
    }

    @Nonnull
    public static RegisterType getRegisterTypeForLiteral(int i) {
        if (i < -32768) {
            return INTEGER_TYPE;
        }
        if (i < -128) {
            return SHORT_TYPE;
        }
        if (i < 0) {
            return BYTE_TYPE;
        }
        if (i == 0) {
            return NULL_TYPE;
        }
        if (i == 1) {
            return ONE_TYPE;
        }
        if (i < 128) {
            return POS_BYTE_TYPE;
        }
        if (i < 32768) {
            return POS_SHORT_TYPE;
        }
        if (i < 65536) {
            return CHAR_TYPE;
        }
        return INTEGER_TYPE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        if (r1.equals(r4.type) != false) goto L29;
     */
    @javax.annotation.Nonnull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.tools.smali.dexlib2.analysis.RegisterType merge(@javax.annotation.Nonnull com.android.tools.smali.dexlib2.analysis.RegisterType r4) {
        /*
            r3 = this;
            boolean r0 = r4.equals(r3)
            if (r0 == 0) goto L7
            goto L39
        L7:
            byte[][] r0 = com.android.tools.smali.dexlib2.analysis.RegisterType.mergeTable
            byte r1 = r3.category
            r0 = r0[r1]
            byte r2 = r4.category
            r0 = r0[r2]
            r2 = 18
            if (r0 != r2) goto L25
            com.android.tools.smali.dexlib2.analysis.TypeProto r1 = r3.type
            if (r1 == 0) goto L22
            com.android.tools.smali.dexlib2.analysis.TypeProto r2 = r4.type
            if (r2 == 0) goto L2f
            com.android.tools.smali.dexlib2.analysis.TypeProto r1 = r1.getCommonSuperclass(r2)
            goto L2f
        L22:
            com.android.tools.smali.dexlib2.analysis.TypeProto r1 = r4.type
            goto L2f
        L25:
            r2 = 16
            if (r0 == r2) goto L48
            r2 = 17
            if (r0 != r2) goto L2e
            goto L48
        L2e:
            r1 = 0
        L2f:
            if (r1 == 0) goto L43
            com.android.tools.smali.dexlib2.analysis.TypeProto r2 = r3.type
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L3a
        L39:
            return r3
        L3a:
            com.android.tools.smali.dexlib2.analysis.TypeProto r2 = r4.type
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L43
            goto L4a
        L43:
            com.android.tools.smali.dexlib2.analysis.RegisterType r4 = getRegisterType(r0, r1)
            return r4
        L48:
            if (r1 != 0) goto L4b
        L4a:
            return r4
        L4b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.tools.smali.dexlib2.analysis.RegisterType.merge(com.android.tools.smali.dexlib2.analysis.RegisterType):com.android.tools.smali.dexlib2.analysis.RegisterType");
    }

    @Nonnull
    public static RegisterType getRegisterType(byte b, @Nullable TypeProto typeProto) {
        if (b != 19) {
            switch (b) {
                case 0:
                    return UNKNOWN_TYPE;
                case 1:
                    return UNINIT_TYPE;
                case 2:
                    return NULL_TYPE;
                case 3:
                    return ONE_TYPE;
                case 4:
                    return BOOLEAN_TYPE;
                case 5:
                    return BYTE_TYPE;
                case 6:
                    return POS_BYTE_TYPE;
                case 7:
                    return SHORT_TYPE;
                case 8:
                    return POS_SHORT_TYPE;
                case 9:
                    return CHAR_TYPE;
                case 10:
                    return INTEGER_TYPE;
                case 11:
                    return FLOAT_TYPE;
                case 12:
                    return LONG_LO_TYPE;
                case 13:
                    return LONG_HI_TYPE;
                case 14:
                    return DOUBLE_LO_TYPE;
                case 15:
                    return DOUBLE_HI_TYPE;
                default:
                    return new RegisterType(b, typeProto);
            }
        }
        return CONFLICTED_TYPE;
    }
}
