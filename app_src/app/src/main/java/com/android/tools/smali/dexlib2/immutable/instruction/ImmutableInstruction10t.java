package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10t;
import com.android.tools.smali.dexlib2.util.Preconditions;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableInstruction10t extends ImmutableInstruction implements Instruction10t {
    public static final Format FORMAT = Format.Format10t;
    protected final int codeOffset;

    public ImmutableInstruction10t(@Nonnull Opcode opcode, int i) {
        super(opcode);
        this.codeOffset = Preconditions.checkByteCodeOffset(i);
    }

    public static ImmutableInstruction10t of(Instruction10t instruction10t) {
        if (instruction10t instanceof ImmutableInstruction10t) {
            return (ImmutableInstruction10t) instruction10t;
        }
        return new ImmutableInstruction10t(instruction10t.getOpcode(), instruction10t.getCodeOffset());
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
