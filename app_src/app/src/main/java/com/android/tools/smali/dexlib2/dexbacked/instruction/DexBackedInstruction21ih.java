package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21ih;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedInstruction21ih extends DexBackedInstruction implements Instruction21ih {
    public DexBackedInstruction21ih(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull Opcode opcode, int i) {
        super(dexBackedDexFile, opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction
    public int getRegisterA() {
        return this.dexFile.getDataBuffer().readUbyte(this.instructionStart + 1);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.NarrowLiteralInstruction
    public int getNarrowLiteral() {
        return getHatLiteral() << 16;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.WideLiteralInstruction
    public long getWideLiteral() {
        return getNarrowLiteral();
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.HatLiteralInstruction
    public short getHatLiteral() {
        return (short) this.dexFile.getDataBuffer().readShort(this.instructionStart + 2);
    }
}
