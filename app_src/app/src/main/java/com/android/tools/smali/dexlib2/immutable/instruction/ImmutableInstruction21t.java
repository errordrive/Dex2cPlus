package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21t;
import com.android.tools.smali.dexlib2.util.Preconditions;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableInstruction21t extends ImmutableInstruction implements Instruction21t {
    public static final Format FORMAT = Format.Format21t;
    protected final int codeOffset;
    protected final int registerA;

    public ImmutableInstruction21t(@Nonnull Opcode opcode, int i, int i2) {
        super(opcode);
        this.registerA = Preconditions.checkByteRegister(i);
        this.codeOffset = Preconditions.checkShortCodeOffset(i2);
    }

    public static ImmutableInstruction21t of(Instruction21t instruction21t) {
        if (instruction21t instanceof ImmutableInstruction21t) {
            return (ImmutableInstruction21t) instruction21t;
        }
        return new ImmutableInstruction21t(instruction21t.getOpcode(), instruction21t.getRegisterA(), instruction21t.getCodeOffset());
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction
    public int getRegisterA() {
        return this.registerA;
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
