package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.util.ExceptionWithContext;

/* JADX INFO: loaded from: classes.dex */
public class AnalysisException extends ExceptionWithContext {
    public int codeAddress;

    public AnalysisException(Throwable th) {
        super(th);
    }

    public AnalysisException(Throwable th, String str, Object... objArr) {
        super(th, str, objArr);
    }

    public AnalysisException(String str, Object... objArr) {
        super(str, objArr);
    }
}
