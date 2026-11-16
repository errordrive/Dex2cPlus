package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.WideLiteralInstruction;
import com.google.common.base.Ascii;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class SyntheticAccessorFSM {
    public static final int ADD = 7;
    public static final int AND = 12;
    public static final int DIV = 10;
    public static final int DOUBLE = 3;
    public static final int FLOAT = 2;
    public static final int INT = 0;
    public static final int LONG = 1;
    public static final int MUL = 9;
    public static final int NEGATIVE_ONE = -1;
    public static final int OR = 13;
    public static final int OTHER = 0;
    public static final int POSITIVE_ONE = 1;
    public static final int REM = 11;
    public static final int SHL = 15;
    public static final int SHR = 16;
    public static final int SUB = 8;
    static final int SyntheticAccessorFSM_en_main = 1;
    static final int SyntheticAccessorFSM_error = 0;
    static final int SyntheticAccessorFSM_first_final = 17;
    static final int SyntheticAccessorFSM_start = 1;
    public static final int USHR = 17;
    public static final int XOR = 14;

    @Nonnull
    private final Opcodes opcodes;
    private static final byte[] _SyntheticAccessorFSM_actions = init__SyntheticAccessorFSM_actions_0();
    private static final short[] _SyntheticAccessorFSM_key_offsets = init__SyntheticAccessorFSM_key_offsets_0();
    private static final short[] _SyntheticAccessorFSM_trans_keys = init__SyntheticAccessorFSM_trans_keys_0();
    private static final byte[] _SyntheticAccessorFSM_single_lengths = init__SyntheticAccessorFSM_single_lengths_0();
    private static final byte[] _SyntheticAccessorFSM_range_lengths = init__SyntheticAccessorFSM_range_lengths_0();
    private static final short[] _SyntheticAccessorFSM_index_offsets = init__SyntheticAccessorFSM_index_offsets_0();
    private static final byte[] _SyntheticAccessorFSM_indicies = init__SyntheticAccessorFSM_indicies_0();
    private static final byte[] _SyntheticAccessorFSM_trans_targs = init__SyntheticAccessorFSM_trans_targs_0();
    private static final byte[] _SyntheticAccessorFSM_trans_actions = init__SyntheticAccessorFSM_trans_actions_0();

    private static byte[] init__SyntheticAccessorFSM_actions_0() {
        return new byte[]{0, 1, 0, 1, 1, 1, 2, 1, 13, 1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, Ascii.DC4, 1, Ascii.NAK, 1, Ascii.EM, 2, 3, 7, 2, 4, 7, 2, 5, 7, 2, 6, 7, 2, 8, 12, 2, 9, 12, 2, 10, 12, 2, 11, 12, 2, Ascii.SYN, Ascii.ETB, 2, Ascii.SYN, Ascii.CAN, 2, Ascii.SYN, Ascii.EM, 2, Ascii.SYN, Ascii.SUB, 2, Ascii.SYN, Ascii.ESC, 2, Ascii.SYN, Ascii.FS};
    }

    private static short[] init__SyntheticAccessorFSM_key_offsets_0() {
        return new short[]{0, 0, 12, 82, 98, 102, 104, 166, 172, 174, 180, 184, 190, 192, 196, 198, 201, 203};
    }

    private static short[] init__SyntheticAccessorFSM_trans_keys_0() {
        return new short[]{82, 88, 89, 95, 96, 102, 103, 109, 110, 114, 116, 120, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 177, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 201, 202, 203, 204, 206, 207, 208, 216, 15, 17, 18, 25, 129, 143, 144, 176, 178, 205, 144, 145, 155, 156, 166, 167, 171, 172, 176, 177, 187, 188, 198, 199, 203, 204, 89, 95, 103, 109, 15, 17, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 177, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 201, 202, 203, 204, 206, 207, 144, 176, 178, 205, 89, 95, 103, 109, 129, 143, 15, 17, 89, 95, 103, 109, 129, 143, 89, 95, 103, 109, 89, 95, 103, 109, 129, 143, 15, 17, 89, 95, 103, 109, 15, 17, 14, 10, 12, 15, 17, 0};
    }

    private static byte[] init__SyntheticAccessorFSM_single_lengths_0() {
        return new byte[]{0, 0, 60, 16, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0};
    }

    private static byte[] init__SyntheticAccessorFSM_range_lengths_0() {
        return new byte[]{0, 6, 5, 0, 2, 1, 2, 3, 1, 3, 2, 3, 1, 2, 1, 1, 1, 0};
    }

    private static short[] init__SyntheticAccessorFSM_index_offsets_0() {
        return new short[]{0, 0, 7, 73, 90, 93, 95, 156, 160, 162, 166, 169, 173, 175, 178, 180, 183, 185};
    }

    private static byte[] init__SyntheticAccessorFSM_indicies_0() {
        return new byte[]{0, 2, 0, 2, 3, 3, 1, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 9, 10, 11, 12, 13, 14, 15, 16, 17, Ascii.DC4, Ascii.NAK, 9, 10, 11, Ascii.SYN, Ascii.ETB, 9, 10, 11, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 10, 11, 12, 13, 14, 15, 16, 17, Ascii.DC4, Ascii.NAK, 10, 11, Ascii.SYN, Ascii.ETB, 10, 11, Ascii.CAN, Ascii.CAN, 4, 5, 6, 7, 9, 1, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 1, 33, 33, 1, 34, 1, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 9, 10, 11, 12, 13, 14, 15, 16, 17, Ascii.DC4, Ascii.NAK, 9, 10, 11, Ascii.SYN, Ascii.ETB, 9, 10, 11, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 10, 11, 12, 13, 14, 15, 16, 17, Ascii.DC4, Ascii.NAK, 10, 11, Ascii.SYN, Ascii.ETB, 10, 11, 7, 9, 1, 35, 35, 36, 1, 37, 1, 35, 35, 38, 1, 35, 35, 1, 39, 39, 40, 1, 41, 1, 39, 39, 1, 42, 1, 44, 43, 1, 45, 1, 1, 0};
    }

    private static byte[] init__SyntheticAccessorFSM_trans_targs_0() {
        return new byte[]{2, 0, 14, 15, 17, 3, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 11, 4, 4, 4, 4, 4, 4, 4, 4, 5, 17, 8, 9, 17, 10, 12, 13, 17, 17, 16, 17, 17};
    }

    private static byte[] init__SyntheticAccessorFSM_trans_actions_0() {
        return new byte[]{0, 0, 1, 0, 51, 3, 0, Ascii.ESC, 39, 7, 9, 11, 13, 15, 17, 19, Ascii.NAK, Ascii.ETB, Ascii.RS, 42, 33, 45, 36, 48, 5, Ascii.ESC, 39, Ascii.RS, 42, 33, 45, 36, 48, 1, 63, 1, 0, 66, 0, 1, 0, 60, 54, 0, Ascii.EM, 57};
    }

    public SyntheticAccessorFSM(@Nonnull Opcodes opcodes) {
        this.opcodes = opcodes;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x019c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0105  */
    /* JADX WARN: Code duplicated, block: B:45:0x0111  */
    /* JADX WARN: Code duplicated, block: B:49:0x0127  */
    /* JADX WARN: Code duplicated, block: B:50:0x012d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0149  */
    /* JADX WARN: Code duplicated, block: B:57:0x0154  */
    /* JADX WARN: Code duplicated, block: B:58:0x0157  */
    /* JADX WARN: Code duplicated, block: B:59:0x015a  */
    /* JADX WARN: Code duplicated, block: B:60:0x015d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0160  */
    /* JADX WARN: Code duplicated, block: B:62:0x0163  */
    /* JADX WARN: Code duplicated, block: B:63:0x0166  */
    /* JADX WARN: Code duplicated, block: B:64:0x0169  */
    /* JADX WARN: Code duplicated, block: B:65:0x016c  */
    /* JADX WARN: Code duplicated, block: B:66:0x016f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0172  */
    /* JADX WARN: Code duplicated, block: B:68:0x0174  */
    /* JADX WARN: Code duplicated, block: B:69:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x0178  */
    /* JADX WARN: Code duplicated, block: B:71:0x017a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0185 A[FALL_THROUGH, PHI: r4 r10
      0x0185: PHI (r4v19 int) = (r4v18 int), (r4v20 int) binds: [B:46:0x0119, B:71:0x017a] A[DONT_GENERATE, DONT_INLINE]
      0x0185: PHI (r10v6 long) = (r10v4 long), (r10v7 long) binds: [B:46:0x0119, B:71:0x017a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:73:0x0187  */
    /* JADX WARN: Code duplicated, block: B:74:0x0192  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:87:0x011e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x013b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x01ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x01a0 A[SYNTHETIC] */
    public int test(List<? extends Instruction> list) {
        int i;
        int i2;
        int i3;
        int i4;
        byte b;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int incrementType;
        int size = list.size();
        int i10 = -1;
        boolean z = true;
        long wideLiteral = 0;
        int i11 = -1;
        int i12 = -1;
        int registerA = -1;
        int registerA2 = -1;
        char c = 0;
        int i13 = 0;
        byte b2 = 1;
        while (true) {
            if (c != 0) {
                if (c != z) {
                    if (c != 2) {
                        return i10;
                    }
                }
                if (b2 == 0) {
                    z = true;
                    c = 5;
                } else {
                    i13++;
                    if (i13 == size) {
                        return i10;
                    }
                    z = true;
                    c = 1;
                }
            } else if (i13 == size) {
                c = 4;
            } else if (b2 == 0) {
                c = 5;
            }
            short s = _SyntheticAccessorFSM_key_offsets[b2];
            short s2 = _SyntheticAccessorFSM_index_offsets[b2];
            byte b3 = _SyntheticAccessorFSM_single_lengths[b2];
            if (b3 > 0) {
                int i14 = s + b3;
                int i15 = s;
                int i16 = i14 - 1;
                while (true) {
                    if (i16 < i15) {
                        i2 = i14;
                        i = s2 + b3;
                    } else {
                        int i17 = i15 + ((i16 - i15) >> 1);
                        i3 = i10;
                        short sShortValue = this.opcodes.getOpcodeValue(list.get(i13).getOpcode()).shortValue();
                        short[] sArr = _SyntheticAccessorFSM_trans_keys;
                        int i18 = i16;
                        if (sShortValue < sArr[i17]) {
                            i16 = i17 - 1;
                        } else if (this.opcodes.getOpcodeValue(list.get(i13).getOpcode()).shortValue() > sArr[i17]) {
                            i15 = i17 + 1;
                            i16 = i18;
                        } else {
                            i4 = s2 + (i17 - s);
                        }
                        i10 = i3;
                        i15 = i15;
                    }
                    byte b4 = _SyntheticAccessorFSM_indicies[i4];
                    b2 = _SyntheticAccessorFSM_trans_targs[b4];
                    b = _SyntheticAccessorFSM_trans_actions[b4];
                    if (b != 0) {
                        i5 = b + 1;
                        i6 = _SyntheticAccessorFSM_actions[b];
                        i7 = i11;
                        i12 = i12;
                        while (true) {
                            i8 = i6 - 1;
                            if (i6 > 0) {
                                i9 = i5 + 1;
                                switch (_SyntheticAccessorFSM_actions[i5]) {
                                    case 0:
                                        registerA = ((OneRegisterInstruction) list.get(i13)).getRegisterA();
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 1:
                                        wideLiteral = ((WideLiteralInstruction) list.get(i13)).getWideLiteral();
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 2:
                                        wideLiteral = ((WideLiteralInstruction) list.get(i13)).getWideLiteral();
                                        i7 = 7;
                                    case 3:
                                    case 8:
                                        i12 = 0;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 4:
                                    case 9:
                                        i12 = 1;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 5:
                                    case 10:
                                        i12 = 2;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 6:
                                    case 11:
                                        i12 = 3;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 7:
                                        i7 = 7;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 12:
                                        i7 = 8;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 13:
                                        i7 = 9;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 14:
                                        i7 = 10;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 15:
                                        i7 = 11;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 16:
                                        i7 = 12;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 17:
                                        i7 = 13;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 18:
                                        i7 = 14;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 19:
                                        i7 = 15;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 20:
                                        i7 = 16;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 21:
                                        i7 = 17;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 22:
                                        registerA2 = ((OneRegisterInstruction) list.get(i13)).getRegisterA();
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 23:
                                        i13++;
                                        i10 = 1;
                                        z = true;
                                        c = 5;
                                        i11 = i7;
                                        break;
                                    case 24:
                                        i13++;
                                        i10 = 2;
                                        z = true;
                                        c = 5;
                                        i11 = i7;
                                        break;
                                    case 25:
                                        i13++;
                                        i10 = 0;
                                        z = true;
                                        c = 5;
                                        i11 = i7;
                                        break;
                                    case 26:
                                        incrementType = getIncrementType(i7, i12, wideLiteral, registerA, registerA2);
                                        i3 = incrementType;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 27:
                                        incrementType = getIncrementType(i7, i12, wideLiteral, registerA, registerA2);
                                        i3 = incrementType;
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                    case 28:
                                        i13++;
                                        i10 = i7;
                                        i12 = i12;
                                        z = true;
                                        c = 5;
                                        i11 = i10;
                                        break;
                                    default:
                                        i6 = i8;
                                        i5 = i9;
                                        break;
                                }
                                return i10;
                            }
                            i12 = i12;
                            i10 = i3;
                            i11 = i7;
                        }
                    } else {
                        i10 = i3;
                    }
                    if (b2 == 0) {
                        z = true;
                        c = 5;
                    } else {
                        i13++;
                        if (i13 == size) {
                            return i10;
                        }
                        z = true;
                        c = 1;
                    }
                }
            } else {
                i2 = s;
                i = s2;
            }
            i3 = i10;
            int i19 = _SyntheticAccessorFSM_range_lengths[b2];
            i4 = i;
            if (i19 > 0) {
                int i20 = ((i19 << 1) + i2) - 2;
                int i21 = i2;
                while (i20 >= i21) {
                    int i22 = (((i20 - i21) >> 1) & (-2)) + i21;
                    int i23 = i19;
                    short sShortValue2 = this.opcodes.getOpcodeValue(list.get(i13).getOpcode()).shortValue();
                    short[] sArr2 = _SyntheticAccessorFSM_trans_keys;
                    int i24 = i20;
                    if (sShortValue2 < sArr2[i22]) {
                        i20 = i22 - 2;
                    } else if (this.opcodes.getOpcodeValue(list.get(i13).getOpcode()).shortValue() > sArr2[i22 + 1]) {
                        i21 = i22 + 2;
                        i20 = i24;
                    } else {
                        i19 = (i22 - i2) >> 1;
                        i4 = i + i19;
                    }
                    i19 = i23 == true ? 1 : 0;
                    i21 = i21;
                }
                i4 = i + i19;
            }
            byte b5 = _SyntheticAccessorFSM_indicies[i4];
            b2 = _SyntheticAccessorFSM_trans_targs[b5];
            b = _SyntheticAccessorFSM_trans_actions[b5];
            if (b != 0) {
                i5 = b + 1;
                i6 = _SyntheticAccessorFSM_actions[b];
                i7 = i11;
                i12 = i12;
                while (true) {
                    i8 = i6 - 1;
                    if (i6 > 0) {
                        i9 = i5 + 1;
                        switch (_SyntheticAccessorFSM_actions[i5]) {
                            case 0:
                                registerA = ((OneRegisterInstruction) list.get(i13)).getRegisterA();
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 1:
                                wideLiteral = ((WideLiteralInstruction) list.get(i13)).getWideLiteral();
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 2:
                                wideLiteral = ((WideLiteralInstruction) list.get(i13)).getWideLiteral();
                                i7 = 7;
                            case 3:
                            case 8:
                                i12 = 0;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 4:
                            case 9:
                                i12 = 1;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 5:
                            case 10:
                                i12 = 2;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 6:
                            case 11:
                                i12 = 3;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 7:
                                i7 = 7;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 12:
                                i7 = 8;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 13:
                                i7 = 9;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 14:
                                i7 = 10;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 15:
                                i7 = 11;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 16:
                                i7 = 12;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 17:
                                i7 = 13;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 18:
                                i7 = 14;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 19:
                                i7 = 15;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 20:
                                i7 = 16;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 21:
                                i7 = 17;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 22:
                                registerA2 = ((OneRegisterInstruction) list.get(i13)).getRegisterA();
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 23:
                                i13++;
                                i10 = 1;
                                z = true;
                                c = 5;
                                i11 = i7;
                                break;
                            case 24:
                                i13++;
                                i10 = 2;
                                z = true;
                                c = 5;
                                i11 = i7;
                                break;
                            case 25:
                                i13++;
                                i10 = 0;
                                z = true;
                                c = 5;
                                i11 = i7;
                                break;
                            case 26:
                                incrementType = getIncrementType(i7, i12, wideLiteral, registerA, registerA2);
                                i3 = incrementType;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 27:
                                incrementType = getIncrementType(i7, i12, wideLiteral, registerA, registerA2);
                                i3 = incrementType;
                                i6 = i8;
                                i5 = i9;
                                break;
                            case 28:
                                i13++;
                                i10 = i7;
                                i12 = i12;
                                z = true;
                                c = 5;
                                i11 = i10;
                                break;
                            default:
                                i6 = i8;
                                i5 = i9;
                                break;
                        }
                        return i10;
                    }
                    i12 = i12;
                    i10 = i3;
                    i11 = i7;
                }
            } else {
                i10 = i3;
            }
            if (b2 == 0) {
                z = true;
                c = 5;
            } else {
                i13++;
                if (i13 == size) {
                    return i10;
                }
                z = true;
                c = 1;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0012  */
    private static int getIncrementType(int i, int i2, long j, int i3, int i4) {
        boolean z;
        boolean z2 = true;
        boolean z3 = i3 == i4;
        if (i2 == 0 || i2 == 1) {
            if (j == 1) {
                z = false;
            } else {
                if (j != -1) {
                    return -1;
                }
                z = true;
            }
        } else if (i2 != 2) {
            if (i2 == 3) {
                double dLongBitsToDouble = Double.longBitsToDouble(j);
                if (dLongBitsToDouble != 1.0d) {
                    if (dLongBitsToDouble != -1.0d) {
                        return -1;
                    }
                    z = true;
                }
            }
            z = false;
        } else {
            float fIntBitsToFloat = Float.intBitsToFloat((int) j);
            if (fIntBitsToFloat == 1.0f) {
                z = false;
            } else {
                if (fIntBitsToFloat != -1.0f) {
                    return -1;
                }
                z = true;
            }
        }
        if ((i != 7 || z) && (i != 8 || !z)) {
            z2 = false;
        }
        if (z3) {
            return z2 ? 4 : 6;
        }
        return z2 ? 3 : 5;
    }
}
