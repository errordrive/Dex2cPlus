package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.ReferenceType;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedReference;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20bc;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedInstruction20bc extends DexBackedInstruction implements Instruction20bc {
    public DexBackedInstruction20bc(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull Opcode opcode, int i) {
        super(dexBackedDexFile, opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.VerificationErrorInstruction
    public int getVerificationError() {
        return this.dexFile.getDataBuffer().readUbyte(this.instructionStart + 1) & 63;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction
    @Nonnull
    public Reference getReference() {
        final int ushort = this.dexFile.getDataBuffer().readUshort(this.instructionStart + 2);
        try {
            return DexBackedReference.makeReference(this.dexFile, getReferenceType(), ushort);
        } catch (ReferenceType.InvalidReferenceTypeException e) {
            return new Reference() { // from class: com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedInstruction20bc.1
                @Override // com.android.tools.smali.dexlib2.iface.reference.Reference
                public void validateReference() throws Reference.InvalidReferenceException {
                    throw new Reference.InvalidReferenceException(String.format("%d@%d", Integer.valueOf(e.getReferenceType()), Integer.valueOf(ushort)), e);
                }
            };
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction
    public int getReferenceType() {
        int ubyte = (this.dexFile.getDataBuffer().readUbyte(this.instructionStart + 1) >>> 6) + 1;
        ReferenceType.validateReferenceType(ubyte);
        return ubyte;
    }
}
