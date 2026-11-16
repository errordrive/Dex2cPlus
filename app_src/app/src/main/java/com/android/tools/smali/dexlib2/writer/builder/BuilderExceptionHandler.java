package com.android.tools.smali.dexlib2.writer.builder;

import com.android.tools.smali.dexlib2.base.BaseExceptionHandler;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderExceptionHandler extends BaseExceptionHandler {

    @Nullable
    final BuilderTypeReference exceptionType;
    final int handlerCodeAddress;

    BuilderExceptionHandler(@Nullable BuilderTypeReference builderTypeReference, int i) {
        this.exceptionType = builderTypeReference;
        this.handlerCodeAddress = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    @Nullable
    public String getExceptionType() {
        BuilderTypeReference builderTypeReference = this.exceptionType;
        if (builderTypeReference == null) {
            return null;
        }
        return builderTypeReference.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    public int getHandlerCodeAddress() {
        return this.handlerCodeAddress;
    }
}
