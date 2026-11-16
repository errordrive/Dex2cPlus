package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload;
import com.android.tools.smali.dexlib2.util.Preconditions;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutablePackedSwitchPayload extends ImmutableInstruction implements PackedSwitchPayload {
    public static final Opcode OPCODE = Opcode.PACKED_SWITCH_PAYLOAD;

    @Nonnull
    protected final List<? extends ImmutableSwitchElement> switchElements;

    public ImmutablePackedSwitchPayload(@Nullable List<? extends SwitchElement> list) {
        super(OPCODE);
        this.switchElements = (List) Preconditions.checkSequentialOrderedKeys(ImmutableSwitchElement.immutableListOf(list));
    }

    @Nonnull
    public static ImmutablePackedSwitchPayload of(PackedSwitchPayload packedSwitchPayload) {
        if (packedSwitchPayload instanceof ImmutablePackedSwitchPayload) {
            return (ImmutablePackedSwitchPayload) packedSwitchPayload;
        }
        return new ImmutablePackedSwitchPayload(packedSwitchPayload.getSwitchElements());
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload, com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload
    @Nonnull
    public List<? extends SwitchElement> getSwitchElements() {
        return this.switchElements;
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction, com.android.tools.smali.dexlib2.iface.instruction.Instruction
    public int getCodeUnits() {
        return (this.switchElements.size() * 2) + 4;
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction
    public Format getFormat() {
        return OPCODE.format;
    }
}
