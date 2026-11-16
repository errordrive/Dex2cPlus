package com.android.tools.smali.dexlib2.base;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import java.util.Comparator;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseExceptionHandler implements ExceptionHandler {
    public static final Comparator<ExceptionHandler> BY_EXCEPTION = new Comparator<ExceptionHandler>() { // from class: com.android.tools.smali.dexlib2.base.BaseExceptionHandler.2
        @Override // java.util.Comparator
        public int compare(ExceptionHandler exceptionHandler, ExceptionHandler exceptionHandler2) {
            String exceptionType = exceptionHandler.getExceptionType();
            if (exceptionType == null) {
                return exceptionHandler2.getExceptionType() != null ? 1 : 0;
            }
            if (exceptionHandler2.getExceptionType() == null) {
                return -1;
            }
            return exceptionType.compareTo(exceptionHandler2.getExceptionType());
        }
    };

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    @Nullable
    public TypeReference getExceptionTypeReference() {
        final String exceptionType = getExceptionType();
        if (exceptionType == null) {
            return null;
        }
        return new BaseTypeReference() { // from class: com.android.tools.smali.dexlib2.base.BaseExceptionHandler.1
            @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
            @Nonnull
            public String getType() {
                return exceptionType;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    public int hashCode() {
        String exceptionType = getExceptionType();
        return ((exceptionType == null ? 0 : exceptionType.hashCode()) * 31) + getHandlerCodeAddress();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ExceptionHandler) {
            ExceptionHandler exceptionHandler = (ExceptionHandler) obj;
            if (Objects.equals(getExceptionType(), exceptionHandler.getExceptionType()) && getHandlerCodeAddress() == exceptionHandler.getHandlerCodeAddress()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull ExceptionHandler exceptionHandler) {
        String exceptionType = getExceptionType();
        if (exceptionType == null) {
            if (exceptionHandler.getExceptionType() != null) {
                return 1;
            }
        } else {
            if (exceptionHandler.getExceptionType() == null) {
                return -1;
            }
            int iCompareTo = exceptionType.compareTo(exceptionHandler.getExceptionType());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.compare(getHandlerCodeAddress(), exceptionHandler.getHandlerCodeAddress());
    }
}
