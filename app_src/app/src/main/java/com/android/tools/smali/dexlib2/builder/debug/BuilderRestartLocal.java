package com.android.tools.smali.dexlib2.builder.debug;

import com.android.tools.smali.dexlib2.builder.BuilderDebugItem;
import com.android.tools.smali.dexlib2.iface.debug.RestartLocal;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderRestartLocal extends BuilderDebugItem implements RestartLocal {
    private final int register;

    @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
    public int getDebugItemType() {
        return 6;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getName() {
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getSignature() {
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getType() {
        return null;
    }

    public BuilderRestartLocal(int i) {
        this.register = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.RestartLocal
    public int getRegister() {
        return this.register;
    }
}
