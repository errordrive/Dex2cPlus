package com.android.tools.smali.dexlib2.base;

import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.TryBlock;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTryBlock<EH extends ExceptionHandler> implements TryBlock<EH> {
    @Override // com.android.tools.smali.dexlib2.iface.TryBlock
    public boolean equals(Object obj) {
        if (obj instanceof TryBlock) {
            TryBlock tryBlock = (TryBlock) obj;
            if (getStartCodeAddress() == tryBlock.getStartCodeAddress() && getCodeUnitCount() == tryBlock.getCodeUnitCount() && getExceptionHandlers().equals(tryBlock.getExceptionHandlers())) {
                return true;
            }
        }
        return false;
    }
}
