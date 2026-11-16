package com.android.tools.smali.dexlib2.builder.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.builder.BuilderOffsetInstruction;
import com.android.tools.smali.dexlib2.builder.Label;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10t;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class BuilderInstruction10t extends BuilderOffsetInstruction implements Instruction10t {
    public static final Format FORMAT = Format.Format10t;

    public BuilderInstruction10t(@Nonnull Opcode opcode, @Nonnull Label label) {
        super(opcode, label);
    }

    @Override // com.android.tools.smali.dexlib2.builder.BuilderInstruction
    public Format getFormat() {
        return FORMAT;
    }
}
