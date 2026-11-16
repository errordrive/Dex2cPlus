package com.android.tools.smali.util;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WrappedIndentingWriter extends FilterWriter {
    private int currentIndent;
    private final StringBuilder line;
    private final int maxIndent;
    private final int maxWidth;

    public WrappedIndentingWriter(Writer writer, int i, int i2) {
        super(writer);
        this.currentIndent = 0;
        this.line = new StringBuilder();
        this.maxIndent = i;
        this.maxWidth = i2;
    }

    private void writeIndent() throws IOException {
        for (int i = 0; i < getIndent(); i++) {
            write(32);
        }
    }

    private int getIndent() {
        int i = this.currentIndent;
        if (i < 0) {
            return 0;
        }
        int i2 = this.maxIndent;
        return i > i2 ? i2 : i;
    }

    public void indent(int i) {
        this.currentIndent += i;
    }

    public void deindent(int i) {
        this.currentIndent -= i;
    }

    private void wrapLine() throws IOException {
        List list = IteratorUtils.toList(StringWrapper.wrapStringOnBreaks(this.line.toString(), this.maxWidth));
        this.out.write((String) list.get(0), 0, ((String) list.get(0)).length());
        this.out.write(10);
        StringBuilder sb = this.line;
        sb.replace(0, sb.length(), "");
        writeIndent();
        for (int i = 1; i < list.size(); i++) {
            if (i > 1) {
                write(10);
            }
            write((String) list.get(i));
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws IOException {
        if (i == 10) {
            this.out.write(this.line.toString());
            this.out.write(i);
            StringBuilder sb = this.line;
            sb.replace(0, sb.length(), "");
            writeIndent();
            return;
        }
        this.line.append((char) i);
        if (this.line.length() > this.maxWidth) {
            wrapLine();
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(cArr[i3 + i]);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(str.charAt(i3 + i));
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.write(this.line.toString());
        StringBuilder sb = this.line;
        sb.replace(0, sb.length(), "");
    }
}
