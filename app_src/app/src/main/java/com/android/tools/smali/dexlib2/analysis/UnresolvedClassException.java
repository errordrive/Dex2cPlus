package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.util.ExceptionWithContext;

/* JADX INFO: loaded from: classes.dex */
public class UnresolvedClassException extends ExceptionWithContext {
    public UnresolvedClassException(Throwable th) {
        super(th);
    }

    public UnresolvedClassException(Throwable th, String str, Object... objArr) {
        super(th, str, objArr);
    }

    public UnresolvedClassException(String str, Object... objArr) {
        super(str, objArr);
    }
}
