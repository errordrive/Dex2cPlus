package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction30t;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableInstruction30t extends ImmutableInstruction implements Instruction30t {
    public static final Format FORMAT = Format.Format30t;
    protected final int codeOffset;

    public ImmutableInstruction30t(@Nonnull Opcode opcode, int i) {
        super(opcode);
        this.codeOffset = i;
    }

    public static ImmutableInstruction30t of(Instruction30t instruction30t) {
        if (instruction30t instanceof ImmutableInstruction30t) {
            return (ImmutableInstruction30t) instruction30t;
        }
        return new ImmutableInstruction30t(instruction30t.getOpcode(), instruction30t.getCodeOffset());
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.OffsetInstruction
    public int getCodeOffset() {
        return this.codeOffset;
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction
    public Format getFormat() {
        return FORMAT;
    }
}
