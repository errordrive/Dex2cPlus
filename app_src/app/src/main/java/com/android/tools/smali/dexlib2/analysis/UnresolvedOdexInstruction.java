package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;

/* JADX INFO: loaded from: classes.dex */
public class UnresolvedOdexInstruction implements Instruction {
    public final int objectRegisterNum;
    public final Instruction originalInstruction;

    public UnresolvedOdexInstruction(Instruction instruction, int i) {
        this.originalInstruction = instruction;
        this.objectRegisterNum = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.Instruction
    public Opcode getOpcode() {
        return this.originalInstruction.getOpcode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.Instruction
    public int getCodeUnits() {
        return this.originalInstruction.getCodeUnits();
    }
}
