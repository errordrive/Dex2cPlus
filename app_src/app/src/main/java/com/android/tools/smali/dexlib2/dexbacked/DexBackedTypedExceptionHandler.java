package com.android.tools.smali.dexlib2.dexbacked;

import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedTypedExceptionHandler extends DexBackedExceptionHandler {

    @Nonnull
    private final DexBackedDexFile dexFile;
    private final int handlerCodeAddress;
    private final int typeId;

    public DexBackedTypedExceptionHandler(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        this.dexFile = dexBackedDexFile;
        this.typeId = dexReader.readSmallUleb128();
        this.handlerCodeAddress = dexReader.readSmallUleb128();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    @Nonnull
    public String getExceptionType() {
        return (String) this.dexFile.getTypeSection().get(this.typeId);
    }

    @Override // com.android.tools.smali.dexlib2.iface.ExceptionHandler
    public int getHandlerCodeAddress() {
        return this.handlerCodeAddress;
    }
}
