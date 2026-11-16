package com.android.tools.smali.dexlib2.dexbacked;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedCatchAllExceptionHandler extends DexBackedExceptionHandler {
    private final int handlerCodeAddress;

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    @Nullable
    public String getExceptionType() {
        return null;
    }

    public DexBackedCatchAllExceptionHandler(@Nonnull DexReader<? extends DexBuffer> dexReader) {
        this.handlerCodeAddress = dexReader.readSmallUleb128();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    public int getHandlerCodeAddress() {
        return this.handlerCodeAddress;
    }
}
