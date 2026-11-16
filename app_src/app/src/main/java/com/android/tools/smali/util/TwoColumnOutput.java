package com.android.tools.smali.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public final class TwoColumnOutput {
    private String[] leftLines;
    private final int leftWidth;
    private final Writer out;
    private String[] rightLines;
    private final int rightWidth;
    private final String spacer;

    public TwoColumnOutput(@Nonnull Writer writer, int i, int i2, @Nonnull String str) {
        this.leftLines = null;
        this.rightLines = null;
        if (i < 1) {
            throw new IllegalArgumentException("leftWidth < 1");
        }
        if (i2 < 1) {
            throw new IllegalArgumentException("rightWidth < 1");
        }
        this.out = writer;
        this.leftWidth = i;
        this.rightWidth = i2;
        this.spacer = str;
    }

    public TwoColumnOutput(OutputStream outputStream, int i, int i2, String str) {
        this(new OutputStreamWriter(outputStream), i, i2, str);
    }

    public void write(String str, String str2) throws IOException {
        String str3;
        int length;
        this.leftLines = StringWrapper.wrapString(str, this.leftWidth, this.leftLines);
        String[] strArrWrapString = StringWrapper.wrapString(str2, this.rightWidth, this.rightLines);
        this.rightLines = strArrWrapString;
        int length2 = this.leftLines.length;
        int length3 = strArrWrapString.length;
        int i = 0;
        while (true) {
            if (i >= length2 && i >= length3) {
                return;
            }
            String str4 = null;
            if (i < length2) {
                str3 = this.leftLines[i];
                if (str3 == null) {
                    length2 = i;
                }
            } else {
                str3 = null;
            }
            if (i < length3 && (str4 = this.rightLines[i]) == null) {
                length3 = i;
            }
            if (str3 != null || str4 != null) {
                if (str3 != null) {
                    this.out.write(str3);
                    length = str3.length();
                } else {
                    length = 0;
                }
                int i2 = this.leftWidth - length;
                if (i2 > 0) {
                    writeSpaces(this.out, i2);
                }
                this.out.write(this.spacer);
                if (str4 != null) {
                    this.out.write(str4);
                }
                this.out.write(10);
            }
            i++;
        }
    }

    private static void writeSpaces(Writer writer, int i) throws IOException {
        while (i > 0) {
            writer.write(32);
            i--;
        }
    }
}
