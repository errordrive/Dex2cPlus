package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderSwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BuilderSwitchPayload extends BuilderInstruction implements SwitchPayload {

    @Nullable
    MethodLocation referrer;

    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload
    @Nonnull
    public abstract List<? extends BuilderSwitchElement> getSwitchElements();

    protected BuilderSwitchPayload(@Nonnull Opcode opcode) {
        super(opcode);
    }

    @Nonnull
    public MethodLocation getReferrer() {
        MethodLocation methodLocation = this.referrer;
        if (methodLocation != null) {
            return methodLocation;
        }
        throw new IllegalStateException("The referrer has not been set yet");
    }
}
