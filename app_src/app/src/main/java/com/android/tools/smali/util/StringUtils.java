package com.android.tools.smali.util;

import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class StringUtils {
    @Deprecated
    public static void writeEscapedChar(Writer writer, char c) throws IOException {
        if (c >= ' ' && c < 127) {
            if (c == '\'' || c == '\"' || c == '\\') {
                writer.write(92);
            }
            writer.write(c);
            return;
        }
        if (c <= 127) {
            if (c == '\t') {
                writer.write("\\t");
                return;
            } else if (c == '\n') {
                writer.write("\\n");
                return;
            } else if (c == '\r') {
                writer.write("\\r");
                return;
            }
        }
        writer.write("\\u");
        writer.write(Character.forDigit(c >> '\f', 16));
        writer.write(Character.forDigit((c >> '\b') & 15, 16));
        writer.write(Character.forDigit((c >> 4) & 15, 16));
        writer.write(Character.forDigit(c & 15, 16));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    @Deprecated
    public static void writeEscapedString(Writer writer, String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= ' ' && cCharAt < 127) {
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                    writer.write(92);
                }
                writer.write(cCharAt);
            } else if (cCharAt > 127) {
                writer.write("\\u");
                writer.write(Character.forDigit(cCharAt >> '\f', 16));
                writer.write(Character.forDigit((cCharAt >> '\b') & 15, 16));
                writer.write(Character.forDigit((cCharAt >> 4) & 15, 16));
                writer.write(Character.forDigit(cCharAt & 15, 16));
            } else if (cCharAt == '\t') {
                writer.write("\\t");
            } else if (cCharAt == '\n') {
                writer.write("\\n");
            } else if (cCharAt == '\r') {
                writer.write("\\r");
            } else {
                writer.write("\\u");
                writer.write(Character.forDigit(cCharAt >> '\f', 16));
                writer.write(Character.forDigit((cCharAt >> '\b') & 15, 16));
                writer.write(Character.forDigit((cCharAt >> 4) & 15, 16));
                writer.write(Character.forDigit(cCharAt & 15, 16));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    public static String escapeString(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder((length * 3) / 2);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= ' ' && cCharAt < 127) {
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                    sb.append('\\');
                }
                sb.append(cCharAt);
            } else if (cCharAt > 127) {
                sb.append("\\u");
                sb.append(Character.forDigit(cCharAt >> '\f', 16));
                sb.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                sb.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                sb.append(Character.forDigit(cCharAt & 15, 16));
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else {
                sb.append("\\u");
                sb.append(Character.forDigit(cCharAt >> '\f', 16));
                sb.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                sb.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                sb.append(Character.forDigit(cCharAt & 15, 16));
            }
        }
        return sb.toString();
    }

    public static String join(Collection<? extends Object> collection, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<? extends Object> it = collection.iterator();
        if (it.hasNext()) {
            sb.append(it.next());
        }
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static String repeat(String str, int i) {
        if (str == null) {
            throw new NullPointerException("string == null");
        }
        if (i <= 1) {
            if (i < 0) {
                return i == 0 ? "" : str;
            }
            throw new IllegalArgumentException("invalid count: " + i);
        }
        int length = str.length();
        long j = ((long) length) * ((long) i);
        int i2 = (int) j;
        if (i2 != j) {
            throw new ArrayIndexOutOfBoundsException("Required array size too large: " + j);
        }
        char[] cArr = new char[i2];
        str.getChars(0, length, cArr, 0);
        while (true) {
            int i3 = i2 - length;
            if (length < i3) {
                System.arraycopy(cArr, 0, cArr, length, length);
                length <<= 1;
            } else {
                System.arraycopy(cArr, 0, cArr, length, i3);
                return new String(cArr);
            }
        }
    }
}
