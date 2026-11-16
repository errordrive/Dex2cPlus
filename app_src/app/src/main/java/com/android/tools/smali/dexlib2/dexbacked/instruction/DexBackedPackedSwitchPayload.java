package com.android.tools.smali.dexlib2.dexbacked.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedPackedSwitchPayload extends DexBackedInstruction implements PackedSwitchPayload {
    private static final int ELEMENT_COUNT_OFFSET = 2;
    private static final int FIRST_KEY_OFFSET = 4;
    private static final int TARGETS_OFFSET = 8;
    public final int elementCount;

    public DexBackedPackedSwitchPayload(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        super(dexBackedDexFile, Opcode.PACKED_SWITCH_PAYLOAD, i);
        this.elementCount = dexBackedDexFile.getDataBuffer().readUshort(i + 2);
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload, com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload
    @Nonnull
    public List<? extends SwitchElement> getSwitchElements() {
        final int i = this.dexFile.getDataBuffer().readInt(this.instructionStart + 4);
        return new FixedSizeList<SwitchElement>() { // from class: com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedPackedSwitchPayload.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
            @Nonnull
            public SwitchElement readItem(final int i2) {
                return new SwitchElement() { // from class: com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedPackedSwitchPayload.1.1
                    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
                    public int getKey() {
                        return i + i2;
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.instruction.SwitchElement
                    public int getOffset() {
                        return DexBackedPackedSwitchPayload.this.dexFile.getDataBuffer().readInt(DexBackedPackedSwitchPayload.this.instructionStart + 8 + (i2 * 4));
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedPackedSwitchPayload.this.elementCount;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedInstruction, com.android.tools.smali.dexlib2.iface.instruction.Instruction
    public int getCodeUnits() {
        return (this.elementCount * 2) + 4;
    }
}
