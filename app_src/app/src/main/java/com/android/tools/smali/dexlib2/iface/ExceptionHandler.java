package com.android.tools.smali.dexlib2.iface;

import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface ExceptionHandler extends Comparable<ExceptionHandler> {
    int compareTo(@Nonnull ExceptionHandler exceptionHandler);

    boolean equals(@Nullable Object obj);

    @Nullable
    String getExceptionType();

    @Nullable
    TypeReference getExceptionTypeReference();

    int getHandlerCodeAddress();

    int hashCode();

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.iface.ExceptionHandler$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
