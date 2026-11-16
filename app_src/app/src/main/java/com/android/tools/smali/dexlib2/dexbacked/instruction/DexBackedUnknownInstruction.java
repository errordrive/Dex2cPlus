package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.instruction.formats.UnknownInstruction;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedUnknownInstruction extends DexBackedInstruction implements UnknownInstruction {
    public DexBackedUnknownInstruction(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        super(dexBackedDexFile, Opcode.NOP, i);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.UnknownInstruction
    public int getOriginalOpcode() {
        int ubyte = this.dexFile.getDataBuffer().readUbyte(this.instructionStart);
        return ubyte == 0 ? this.dexFile.getDataBuffer().readUshort(this.instructionStart) : ubyte;
    }
}
