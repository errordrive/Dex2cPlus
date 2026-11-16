package com.android.tools.smali.util;

import com.google.common.base.Ascii;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class Utf8Utils {
    private static final ThreadLocal<char[]> localBuffer = new ThreadLocal<char[]>() { // from class: com.android.tools.smali.util.Utf8Utils.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public char[] initialValue() {
            return new char[256];
        }
    };

    public static byte[] stringToUtf8Bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt < 2048) {
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                bArr[i + 1] = (byte) ((cCharAt & '?') | 128);
                i += 2;
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | 224);
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                bArr[i + 2] = (byte) ((cCharAt & '?') | 128);
                i += 3;
            }
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public static String utf8BytesToString(byte[] bArr, int i, int i2) {
        char c;
        ThreadLocal<char[]> threadLocal = localBuffer;
        char[] cArr = threadLocal.get();
        if (cArr == null || cArr.length < i2) {
            cArr = new char[i2];
            threadLocal.set(cArr);
        }
        int i3 = 0;
        while (i2 > 0) {
            byte b = bArr[i];
            int i4 = b & 255;
            switch (i4 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    i2--;
                    if (i4 == 0) {
                        return throwBadUtf8(i4, i);
                    }
                    c = (char) i4;
                    i++;
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(i4, i);
                case 12:
                case 13:
                    i2 -= 2;
                    if (i2 < 0) {
                        return throwBadUtf8(i4, i);
                    }
                    int i5 = i + 1;
                    byte b2 = bArr[i5];
                    int i6 = b2 & 255;
                    if ((b2 & 192) != 128) {
                        return throwBadUtf8(i6, i5);
                    }
                    int i7 = ((b & Ascii.US) << 6) | (b2 & 63);
                    if (i7 != 0 && i7 < 128) {
                        return throwBadUtf8(i6, i5);
                    }
                    c = (char) i7;
                    i += 2;
                    break;
                    break;
                case 14:
                    i2 -= 3;
                    if (i2 < 0) {
                        return throwBadUtf8(i4, i);
                    }
                    int i8 = i + 1;
                    byte b3 = bArr[i8];
                    int i9 = b3 & 255;
                    if ((b3 & 192) != 128) {
                        return throwBadUtf8(i9, i8);
                    }
                    int i10 = i + 2;
                    byte b4 = bArr[i10];
                    int i11 = b4 & 255;
                    if ((b4 & 192) != 128) {
                        return throwBadUtf8(i11, i10);
                    }
                    int i12 = ((b & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                    if (i12 < 2048) {
                        return throwBadUtf8(i11, i10);
                    }
                    c = (char) i12;
                    i += 3;
                    break;
                    break;
            }
            cArr[i3] = c;
            i3++;
        }
        return new String(cArr, 0, i3);
    }

    public static String utf8BytesWithUtf16LengthToString(@Nonnull byte[] bArr, int i, int i2) {
        return utf8BytesWithUtf16LengthToString(bArr, i, i2, null);
    }

    public static String utf8BytesWithUtf16LengthToString(@Nonnull byte[] bArr, int i, int i2, @Nullable int[] iArr) {
        char c;
        ThreadLocal<char[]> threadLocal = localBuffer;
        char[] cArr = threadLocal.get();
        if (cArr == null || cArr.length < i2) {
            cArr = new char[i2];
            threadLocal.set(cArr);
        }
        int i3 = i;
        int i4 = 0;
        while (i2 > 0) {
            byte b = bArr[i3];
            int i5 = b & 255;
            switch (i5 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    if (i5 == 0) {
                        return throwBadUtf8(i5, i3);
                    }
                    c = (char) i5;
                    i3++;
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(i5, i3);
                case 12:
                case 13:
                    int i6 = i3 + 1;
                    byte b2 = bArr[i6];
                    int i7 = b2 & 255;
                    if ((b2 & 192) != 128) {
                        return throwBadUtf8(i7, i6);
                    }
                    int i8 = ((b & Ascii.US) << 6) | (b2 & 63);
                    if (i8 != 0 && i8 < 128) {
                        return throwBadUtf8(i7, i6);
                    }
                    c = (char) i8;
                    i3 += 2;
                    break;
                    break;
                case 14:
                    int i9 = i3 + 1;
                    byte b3 = bArr[i9];
                    int i10 = b3 & 255;
                    if ((b3 & 192) != 128) {
                        return throwBadUtf8(i10, i9);
                    }
                    int i11 = i3 + 2;
                    byte b4 = bArr[i11];
                    int i12 = b4 & 255;
                    if ((b4 & 192) != 128) {
                        return throwBadUtf8(i12, i11);
                    }
                    int i13 = ((b & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                    if (i13 < 2048) {
                        return throwBadUtf8(i12, i11);
                    }
                    c = (char) i13;
                    i3 += 3;
                    break;
                    break;
            }
            cArr[i4] = c;
            i4++;
            i2--;
        }
        if (iArr != null && iArr.length > 0) {
            int i14 = i3 - i;
            iArr[0] = i14;
            iArr[0] = i14;
        }
        return new String(cArr, 0, i4);
    }

    private static String throwBadUtf8(int i, int i2) {
        throw new IllegalArgumentException("bad utf-8 byte " + Hex.u1(i) + " at offset " + Hex.u4(i2));
    }
}
