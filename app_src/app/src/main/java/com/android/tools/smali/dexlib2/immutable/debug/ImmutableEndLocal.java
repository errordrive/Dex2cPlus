package com.android.tools.smali.dexlib2.immutable.debug;

import com.android.tools.smali.dexlib2.iface.debug.EndLocal;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableEndLocal extends ImmutableDebugItem implements EndLocal {

    @Nullable
    protected final String name;
    protected final int register;

    @Nullable
    protected final String signature;

    @Nullable
    protected final String type;

    @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
    public int getDebugItemType() {
        return 5;
    }

    public ImmutableEndLocal(int i, int i2) {
        super(i);
        this.register = i2;
        this.name = null;
        this.type = null;
        this.signature = null;
    }

    public ImmutableEndLocal(int i, int i2, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        super(i);
        this.register = i2;
        this.name = str;
        this.type = str2;
        this.signature = str3;
    }

    @Nonnull
    public static ImmutableEndLocal of(@Nonnull EndLocal endLocal) {
        if (endLocal instanceof ImmutableEndLocal) {
            return (ImmutableEndLocal) endLocal;
        }
        return new ImmutableEndLocal(endLocal.getCodeAddress(), endLocal.getRegister(), endLocal.getType(), endLocal.getName(), endLocal.getSignature());
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.EndLocal
    public int getRegister() {
        return this.register;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getName() {
        return this.name;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getType() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getSignature() {
        return this.signature;
    }
}
