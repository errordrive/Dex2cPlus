package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20t;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedInstruction20t extends DexBackedInstruction implements Instruction20t {
    public DexBackedInstruction20t(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull Opcode opcode, int i) {
        super(dexBackedDexFile, opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.OffsetInstruction
    public int getCodeOffset() {
        return this.dexFile.getDataBuffer().readShort(this.instructionStart + 2);
    }
}
