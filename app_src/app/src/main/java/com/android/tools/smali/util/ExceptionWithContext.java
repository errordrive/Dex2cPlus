package com.android.tools.smali.util;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionWithContext extends RuntimeException {
    private StringBuffer context;

    public static ExceptionWithContext withContext(Throwable th, String str, Object... objArr) {
        ExceptionWithContext exceptionWithContext;
        if (th instanceof ExceptionWithContext) {
            exceptionWithContext = (ExceptionWithContext) th;
        } else {
            exceptionWithContext = new ExceptionWithContext(th);
        }
        exceptionWithContext.addContext(String.format(str, objArr));
        return exceptionWithContext;
    }

    public ExceptionWithContext(String str, Object... objArr) {
        this(null, str, objArr);
    }

    public ExceptionWithContext(Throwable th) {
        this(th, null, new Object[0]);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExceptionWithContext(Throwable th, String str, Object... objArr) {
        String message;
        if (str != null) {
            message = formatMessage(str, objArr);
        } else {
            message = th != null ? th.getMessage() : null;
        }
        super(message, th);
        if (th instanceof ExceptionWithContext) {
            String string = ((ExceptionWithContext) th).context.toString();
            StringBuffer stringBuffer = new StringBuffer(string.length() + ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            this.context = stringBuffer;
            stringBuffer.append(string);
            return;
        }
        this.context = new StringBuffer(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
    }

    private static String formatMessage(String str, Object... objArr) {
        if (str == null) {
            return null;
        }
        return String.format(str, objArr);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println(this.context);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.context);
    }

    public void addContext(String str) {
        if (str == null) {
            throw new NullPointerException("str == null");
        }
        this.context.append(str);
        if (str.endsWith("\n")) {
            return;
        }
        this.context.append('\n');
    }

    public String getContext() {
        return this.context.toString();
    }

    public void printContext(PrintStream printStream) {
        printStream.println(getMessage());
        printStream.print(this.context);
    }

    public void printContext(PrintWriter printWriter) {
        printWriter.println(getMessage());
        printWriter.print(this.context);
    }
}
