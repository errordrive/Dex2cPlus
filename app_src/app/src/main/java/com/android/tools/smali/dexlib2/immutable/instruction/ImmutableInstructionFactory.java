package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.writer.InstructionFactory;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableInstructionFactory implements InstructionFactory<Reference> {
    public static final ImmutableInstructionFactory INSTANCE = new ImmutableInstructionFactory();

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public /* bridge */ /* synthetic */ Instruction makeArrayPayload(int i, @Nullable List list) {
        return makeArrayPayload(i, (List<Number>) list);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public /* bridge */ /* synthetic */ Instruction makePackedSwitchPayload(@Nullable List list) {
        return makePackedSwitchPayload((List<? extends SwitchElement>) list);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public /* bridge */ /* synthetic */ Instruction makeSparseSwitchPayload(@Nullable List list) {
        return makeSparseSwitchPayload((List<? extends SwitchElement>) list);
    }

    private ImmutableInstructionFactory() {
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction10t makeInstruction10t(@Nonnull Opcode opcode, int i) {
        return new ImmutableInstruction10t(opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction10x makeInstruction10x(@Nonnull Opcode opcode) {
        return new ImmutableInstruction10x(opcode);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction11n makeInstruction11n(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction11n(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction11x makeInstruction11x(@Nonnull Opcode opcode, int i) {
        return new ImmutableInstruction11x(opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction12x makeInstruction12x(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction12x(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction20bc makeInstruction20bc(@Nonnull Opcode opcode, int i, @Nonnull Reference reference) {
        return new ImmutableInstruction20bc(opcode, i, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction20t makeInstruction20t(@Nonnull Opcode opcode, int i) {
        return new ImmutableInstruction20t(opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction21c makeInstruction21c(@Nonnull Opcode opcode, int i, @Nonnull Reference reference) {
        return new ImmutableInstruction21c(opcode, i, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction21ih makeInstruction21ih(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction21ih(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction21lh makeInstruction21lh(@Nonnull Opcode opcode, int i, long j) {
        return new ImmutableInstruction21lh(opcode, i, j);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction21s makeInstruction21s(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction21s(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction21t makeInstruction21t(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction21t(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction22b makeInstruction22b(@Nonnull Opcode opcode, int i, int i2, int i3) {
        return new ImmutableInstruction22b(opcode, i, i2, i3);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction22c makeInstruction22c(@Nonnull Opcode opcode, int i, int i2, @Nonnull Reference reference) {
        return new ImmutableInstruction22c(opcode, i, i2, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction22s makeInstruction22s(@Nonnull Opcode opcode, int i, int i2, int i3) {
        return new ImmutableInstruction22s(opcode, i, i2, i3);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction22t makeInstruction22t(@Nonnull Opcode opcode, int i, int i2, int i3) {
        return new ImmutableInstruction22t(opcode, i, i2, i3);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction22x makeInstruction22x(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction22x(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction23x makeInstruction23x(@Nonnull Opcode opcode, int i, int i2, int i3) {
        return new ImmutableInstruction23x(opcode, i, i2, i3);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction30t makeInstruction30t(@Nonnull Opcode opcode, int i) {
        return new ImmutableInstruction30t(opcode, i);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction31c makeInstruction31c(@Nonnull Opcode opcode, int i, @Nonnull Reference reference) {
        return new ImmutableInstruction31c(opcode, i, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction31i makeInstruction31i(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction31i(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction31t makeInstruction31t(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction31t(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction32x makeInstruction32x(@Nonnull Opcode opcode, int i, int i2) {
        return new ImmutableInstruction32x(opcode, i, i2);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction35c makeInstruction35c(@Nonnull Opcode opcode, int i, int i2, int i3, int i4, int i5, int i6, @Nonnull Reference reference) {
        return new ImmutableInstruction35c(opcode, i, i2, i3, i4, i5, i6, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction3rc makeInstruction3rc(@Nonnull Opcode opcode, int i, int i2, @Nonnull Reference reference) {
        return new ImmutableInstruction3rc(opcode, i, i2, reference);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableInstruction51l makeInstruction51l(@Nonnull Opcode opcode, int i, long j) {
        return new ImmutableInstruction51l(opcode, i, j);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableSparseSwitchPayload makeSparseSwitchPayload(@Nullable List<? extends SwitchElement> list) {
        return new ImmutableSparseSwitchPayload(list);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutablePackedSwitchPayload makePackedSwitchPayload(@Nullable List<? extends SwitchElement> list) {
        return new ImmutablePackedSwitchPayload(list);
    }

    @Override // com.android.tools.smali.dexlib2.writer.InstructionFactory
    public ImmutableArrayPayload makeArrayPayload(int i, @Nullable List<Number> list) {
        return new ImmutableArrayPayload(i, list);
    }
}
