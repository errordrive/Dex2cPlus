package com.android.tools.smali.dexlib2.builder.instruction;

import com.android.tools.smali.dexlib2.builder.BuilderSwitchPayload;
import com.android.tools.smali.dexlib2.builder.Label;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderSwitchElement implements SwitchElement {
    private final int key;

    @Nonnull
    BuilderSwitchPayload parent;

    @Nonnull
    private final Label target;

    public BuilderSwitchElement(@Nonnull BuilderSwitchPayload builderSwitchPayload, int i, @Nonnull Label label) {
        this.parent = builderSwitchPayload;
        this.key = i;
        this.target = label;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
    public int getKey() {
        return this.key;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
    public int getOffset() {
        return this.target.getCodeAddress() - this.parent.getReferrer().getCodeAddress();
    }

    @Nonnull
    public Label getTarget() {
        return this.target;
    }
}
