package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.formats.UnknownInstruction;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableUnknownInstruction extends ImmutableInstruction implements UnknownInstruction {
    public static final Format FORMAT = Format.Format10x;
    protected final int originalOpcode;

    public ImmutableUnknownInstruction(int i) {
        super(Opcode.NOP);
        this.originalOpcode = i;
    }

    public static ImmutableUnknownInstruction of(UnknownInstruction unknownInstruction) {
        if (unknownInstruction instanceof ImmutableUnknownInstruction) {
            return (ImmutableUnknownInstruction) unknownInstruction;
        }
        return new ImmutableUnknownInstruction(unknownInstruction.getOriginalOpcode());
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction
    public Format getFormat() {
        return FORMAT;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.UnknownInstruction
    public int getOriginalOpcode() {
        return this.originalOpcode;
    }
}
