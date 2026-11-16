package com.android.tools.smali.util;

import java.io.PrintStream;
import java.text.BreakIterator;
import java.util.Iterator;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class StringWrapper {
    public static Iterable<String> wrapStringOnBreaks(@Nonnull final String str, final int i) {
        final BreakIterator lineInstance = BreakIterator.getLineInstance();
        lineInstance.setText(str);
        return new Iterable<String>() { // from class: com.android.tools.smali.util.StringWrapper.1
            @Override // java.lang.Iterable
            public Iterator<String> iterator() {
                return new Iterator<String>() { // from class: com.android.tools.smali.util.StringWrapper.1.1
                    private String nextLine;
                    private int currentLineStart = 0;
                    private boolean nextLineSet = false;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        if (!this.nextLineSet) {
                            calculateNext();
                        }
                        return this.nextLine != null;
                    }

                    private void calculateNext() {
                        int iLast;
                        int i2;
                        int iFollowing = this.currentLineStart;
                        do {
                            iFollowing = lineInstance.following(iFollowing);
                            if (iFollowing == -1) {
                                iLast = lineInstance.last();
                                if (iLast <= this.currentLineStart) {
                                    this.nextLine = null;
                                    this.nextLineSet = true;
                                    return;
                                }
                            } else if (iFollowing - this.currentLineStart > i) {
                                iLast = lineInstance.preceding(iFollowing);
                                int i3 = this.currentLineStart;
                                if (iLast <= i3) {
                                    iLast = i + i3;
                                }
                            } else {
                                i2 = iFollowing - 1;
                            }
                            this.nextLine = str.substring(this.currentLineStart, iLast);
                            this.nextLineSet = true;
                            this.currentLineStart = iLast;
                            return;
                        } while (str.charAt(i2) != '\n');
                        this.nextLine = str.substring(this.currentLineStart, i2);
                        this.nextLineSet = true;
                        this.currentLineStart = iFollowing;
                    }

                    @Override // java.util.Iterator
                    public String next() {
                        String str2 = this.nextLine;
                        this.nextLine = null;
                        this.nextLineSet = false;
                        return str2;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    public static String[] wrapString(@Nonnull String str, int i, @Nullable String[] strArr) {
        int i2;
        if (strArr == null) {
            strArr = new String[(int) ((((double) (str.length() / i)) * 1.5d) + 1.0d)];
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < str.length()) {
            if (str.charAt(i3) == '\n') {
                i2 = i5 + 1;
                strArr = addString(strArr, str.substring(i4, i3), i5);
                i4 = i3 + 1;
            } else {
                if (i3 - i4 == i) {
                    i2 = i5 + 1;
                    strArr = addString(strArr, str.substring(i4, i3), i5);
                    i4 = i3;
                }
                i3++;
            }
            i5 = i2;
            i3++;
        }
        if (i4 != i3 || i3 == 0) {
            strArr = addString(strArr, str.substring(i4), i5, strArr.length + 1);
            i5++;
        }
        if (i5 < strArr.length) {
            strArr[i5] = null;
        }
        return strArr;
    }

    private static String[] addString(@Nonnull String[] strArr, String str, int i) {
        if (i >= strArr.length) {
            strArr = enlargeArray(strArr, (int) Math.ceil(((double) (strArr.length + 1)) * 1.5d));
        }
        strArr[i] = str;
        return strArr;
    }

    private static String[] addString(@Nonnull String[] strArr, String str, int i, int i2) {
        if (i >= strArr.length) {
            strArr = enlargeArray(strArr, i2);
        }
        strArr[i] = str;
        return strArr;
    }

    private static String[] enlargeArray(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        return strArr2;
    }

    public static void printWrappedString(@Nonnull PrintStream printStream, @Nonnull String str, int i) {
        Iterator<String> it = wrapStringOnBreaks(str, i).iterator();
        while (it.hasNext()) {
            printStream.println(it.next());
        }
    }
}
