package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10x;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedInstruction10x extends DexBackedInstruction implements Instruction10x {
    public DexBackedInstruction10x(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull Opcode opcode, int i) {
        super(dexBackedDexFile, opcode, i);
    }
}
