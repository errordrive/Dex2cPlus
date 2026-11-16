package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.FiveRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.RegisterRangeInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.TwoRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22c;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnalyzedInstruction implements Comparable<AnalyzedInstruction> {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Nonnull
    protected Instruction instruction;
    protected final int instructionIndex;

    @Nonnull
    protected final MethodAnalyzer methodAnalyzer;
    protected final Instruction originalInstruction;

    @Nonnull
    protected final RegisterType[] postRegisterMap;

    @Nonnull
    protected final RegisterType[] preRegisterMap;

    @Nonnull
    protected final TreeSet<AnalyzedInstruction> predecessors = new TreeSet<>();

    @Nonnull
    protected final LinkedList<AnalyzedInstruction> successors = new LinkedList<>();

    @Nullable
    protected Map<PredecessorOverrideKey, RegisterType> predecessorRegisterOverrides = null;

    public AnalyzedInstruction(@Nonnull MethodAnalyzer methodAnalyzer, @Nonnull Instruction instruction, int i, int i2) {
        this.methodAnalyzer = methodAnalyzer;
        this.instruction = instruction;
        this.originalInstruction = instruction;
        this.instructionIndex = i;
        this.postRegisterMap = new RegisterType[i2];
        this.preRegisterMap = new RegisterType[i2];
        RegisterType registerType = RegisterType.getRegisterType((byte) 0, (TypeProto) null);
        for (int i3 = 0; i3 < i2; i3++) {
            this.preRegisterMap[i3] = registerType;
            this.postRegisterMap[i3] = registerType;
        }
    }

    public int getInstructionIndex() {
        return this.instructionIndex;
    }

    public int getPredecessorCount() {
        return this.predecessors.size();
    }

    public SortedSet<AnalyzedInstruction> getPredecessors() {
        return Collections.unmodifiableSortedSet(this.predecessors);
    }

    public RegisterType getPredecessorRegisterType(@Nonnull AnalyzedInstruction analyzedInstruction, int i) {
        RegisterType registerType;
        Map<PredecessorOverrideKey, RegisterType> map = this.predecessorRegisterOverrides;
        return (map == null || (registerType = map.get(new PredecessorOverrideKey(analyzedInstruction, i))) == null) ? analyzedInstruction.postRegisterMap[i] : registerType;
    }

    protected boolean addPredecessor(AnalyzedInstruction analyzedInstruction) {
        return this.predecessors.add(analyzedInstruction);
    }

    protected void addSuccessor(AnalyzedInstruction analyzedInstruction) {
        this.successors.add(analyzedInstruction);
    }

    protected void setDeodexedInstruction(Instruction instruction) {
        this.instruction = instruction;
    }

    protected void restoreOdexedInstruction() {
        this.instruction = this.originalInstruction;
    }

    @Nonnull
    public List<AnalyzedInstruction> getSuccessors() {
        return Collections.unmodifiableList(this.successors);
    }

    @Nonnull
    public Instruction getInstruction() {
        return this.instruction;
    }

    @Nonnull
    public Instruction getOriginalInstruction() {
        return this.originalInstruction;
    }

    public boolean isBeginningInstruction() {
        return this.predecessors.size() != 0 && this.predecessors.first().instructionIndex == -1;
    }

    protected boolean mergeRegister(int i, RegisterType registerType, BitSet bitSet, boolean z) {
        RegisterType registerTypeMerge;
        RegisterType registerType2 = this.preRegisterMap[i];
        if (z) {
            registerTypeMerge = getMergedPreRegisterTypeFromPredecessors(i);
        } else {
            registerTypeMerge = registerType2.merge(registerType);
        }
        if (registerTypeMerge.equals(registerType2)) {
            return false;
        }
        this.preRegisterMap[i] = registerTypeMerge;
        bitSet.clear(this.instructionIndex);
        if (setsRegister(i)) {
            return false;
        }
        this.postRegisterMap[i] = registerTypeMerge;
        return true;
    }

    @Nonnull
    protected RegisterType getMergedPreRegisterTypeFromPredecessors(int i) {
        Iterator<AnalyzedInstruction> it = this.predecessors.iterator();
        RegisterType registerTypeMerge = null;
        while (it.hasNext()) {
            RegisterType predecessorRegisterType = getPredecessorRegisterType(it.next(), i);
            if (predecessorRegisterType != null) {
                registerTypeMerge = registerTypeMerge == null ? predecessorRegisterType : predecessorRegisterType.merge(registerTypeMerge);
            }
        }
        if (registerTypeMerge != null) {
            return registerTypeMerge;
        }
        throw new IllegalStateException();
    }

    protected boolean setPostRegisterType(int i, RegisterType registerType) {
        if (this.postRegisterMap[i].equals(registerType)) {
            return false;
        }
        this.postRegisterMap[i] = registerType;
        return true;
    }

    protected boolean overridePredecessorRegisterType(@Nonnull AnalyzedInstruction analyzedInstruction, int i, @Nonnull RegisterType registerType, BitSet bitSet) {
        if (this.predecessorRegisterOverrides == null) {
            this.predecessorRegisterOverrides = new HashMap();
        }
        this.predecessorRegisterOverrides.put(new PredecessorOverrideKey(analyzedInstruction, i), registerType);
        RegisterType mergedPreRegisterTypeFromPredecessors = getMergedPreRegisterTypeFromPredecessors(i);
        if (this.preRegisterMap[i].equals(mergedPreRegisterTypeFromPredecessors)) {
            return false;
        }
        this.preRegisterMap[i] = mergedPreRegisterTypeFromPredecessors;
        bitSet.clear(this.instructionIndex);
        if (setsRegister(i) || this.postRegisterMap[i].equals(mergedPreRegisterTypeFromPredecessors)) {
            return false;
        }
        this.postRegisterMap[i] = mergedPreRegisterTypeFromPredecessors;
        return true;
    }

    public boolean isInvokeInit() {
        if (!this.instruction.getOpcode().canInitializeReference()) {
            return false;
        }
        Reference reference = ((ReferenceInstruction) this.instruction).getReference();
        if (reference instanceof MethodReference) {
            return ((MethodReference) reference).getName().equals("<init>");
        }
        return false;
    }

    public boolean setsRegister(int i) {
        int startRegister;
        if (isInvokeInit()) {
            Instruction instruction = this.instruction;
            if (instruction instanceof FiveRegisterInstruction) {
                startRegister = ((FiveRegisterInstruction) instruction).getRegisterC();
            } else {
                startRegister = ((RegisterRangeInstruction) instruction).getStartRegister();
            }
            RegisterType preInstructionRegisterType = getPreInstructionRegisterType(startRegister);
            if (preInstructionRegisterType.category == 0) {
                RegisterType preInstructionRegisterType2 = getPreInstructionRegisterType(i);
                if (preInstructionRegisterType2.category == 16 || preInstructionRegisterType2.category == 17) {
                    return true;
                }
            }
            if (preInstructionRegisterType.category != 16 && preInstructionRegisterType.category != 17) {
                return false;
            }
            if (i == startRegister) {
                return true;
            }
            return preInstructionRegisterType.equals(getPreInstructionRegisterType(i));
        }
        if (this.instructionIndex > 0 && this.methodAnalyzer.getClassPath().isArt() && getPredecessorCount() == 1 && (this.instruction.getOpcode() == Opcode.IF_EQZ || this.instruction.getOpcode() == Opcode.IF_NEZ)) {
            AnalyzedInstruction analyzedInstructionFirst = this.predecessors.first();
            if (analyzedInstructionFirst.instruction.getOpcode() == Opcode.INSTANCE_OF && MethodAnalyzer.canPropagateTypeAfterInstanceOf(analyzedInstructionFirst, this, this.methodAnalyzer.getClassPath())) {
                Instruction22c instruction22c = (Instruction22c) analyzedInstructionFirst.instruction;
                if (i == instruction22c.getRegisterB()) {
                    return true;
                }
                if (this.instructionIndex > 1) {
                    RegisterType registerType = null;
                    int registerB = -1;
                    for (AnalyzedInstruction analyzedInstruction : analyzedInstructionFirst.predecessors) {
                        Opcode opcode = analyzedInstruction.instruction.getOpcode();
                        if (opcode == Opcode.MOVE_OBJECT || opcode == Opcode.MOVE_OBJECT_16 || opcode == Opcode.MOVE_OBJECT_FROM16) {
                            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) analyzedInstruction.instruction;
                            RegisterType postInstructionRegisterType = analyzedInstruction.getPostInstructionRegisterType(twoRegisterInstruction.getRegisterB());
                            if (twoRegisterInstruction.getRegisterA() == instruction22c.getRegisterB() && postInstructionRegisterType.type != null) {
                                if (registerType == null) {
                                    registerType = RegisterType.getRegisterType(this.methodAnalyzer.getClassPath(), (TypeReference) instruction22c.getReference());
                                }
                                if (MethodAnalyzer.isNotWideningConversion(postInstructionRegisterType, registerType)) {
                                    if (registerB != -1) {
                                        if (registerB != twoRegisterInstruction.getRegisterB()) {
                                        }
                                    } else {
                                        registerB = twoRegisterInstruction.getRegisterB();
                                    }
                                }
                            }
                        }
                        registerB = -1;
                    }
                    if (registerB != -1 && i == registerB) {
                        return true;
                    }
                }
            }
        }
        if (!this.instruction.getOpcode().setsRegister()) {
            return false;
        }
        int destinationRegister = getDestinationRegister();
        if (i == destinationRegister) {
            return true;
        }
        return this.instruction.getOpcode().setsWideRegister() && i == destinationRegister + 1;
    }

    public List<Integer> getSetRegisters() {
        int startRegister;
        ArrayList arrayList = new ArrayList();
        if (this.instruction.getOpcode().setsRegister()) {
            arrayList.add(Integer.valueOf(getDestinationRegister()));
        }
        if (this.instruction.getOpcode().setsWideRegister()) {
            arrayList.add(Integer.valueOf(getDestinationRegister() + 1));
        }
        if (isInvokeInit()) {
            Instruction instruction = this.instruction;
            if (instruction instanceof FiveRegisterInstruction) {
                startRegister = ((FiveRegisterInstruction) instruction).getRegisterC();
            } else {
                startRegister = ((RegisterRangeInstruction) instruction).getStartRegister();
            }
            RegisterType preInstructionRegisterType = getPreInstructionRegisterType(startRegister);
            int i = 0;
            if (preInstructionRegisterType.category == 16 || preInstructionRegisterType.category == 17) {
                arrayList.add(Integer.valueOf(startRegister));
                RegisterType registerType = this.preRegisterMap[startRegister];
                while (true) {
                    RegisterType[] registerTypeArr = this.preRegisterMap;
                    if (i >= registerTypeArr.length) {
                        break;
                    }
                    if (i != startRegister) {
                        RegisterType registerType2 = registerTypeArr[i];
                        if (registerType2.equals(registerType)) {
                            arrayList.add(Integer.valueOf(i));
                        } else if ((registerType2.category == 16 || registerType2.category == 17) && this.postRegisterMap[i].category == 0) {
                            arrayList.add(Integer.valueOf(i));
                        }
                    }
                    i++;
                }
            } else if (preInstructionRegisterType.category == 0) {
                while (true) {
                    RegisterType[] registerTypeArr2 = this.preRegisterMap;
                    if (i >= registerTypeArr2.length) {
                        break;
                    }
                    RegisterType registerType3 = registerTypeArr2[i];
                    if (registerType3.category == 16 || registerType3.category == 17) {
                        arrayList.add(Integer.valueOf(i));
                    }
                    i++;
                }
            }
        }
        if (this.instructionIndex > 0 && this.methodAnalyzer.getClassPath().isArt() && getPredecessorCount() == 1 && (this.instruction.getOpcode() == Opcode.IF_EQZ || this.instruction.getOpcode() == Opcode.IF_NEZ)) {
            AnalyzedInstruction analyzedInstructionFirst = this.predecessors.first();
            if (analyzedInstructionFirst.instruction.getOpcode() == Opcode.INSTANCE_OF && MethodAnalyzer.canPropagateTypeAfterInstanceOf(analyzedInstructionFirst, this, this.methodAnalyzer.getClassPath())) {
                Instruction22c instruction22c = (Instruction22c) analyzedInstructionFirst.instruction;
                arrayList.add(Integer.valueOf(instruction22c.getRegisterB()));
                if (this.instructionIndex > 1) {
                    RegisterType registerType4 = null;
                    int registerB = -1;
                    for (AnalyzedInstruction analyzedInstruction : analyzedInstructionFirst.predecessors) {
                        Opcode opcode = analyzedInstruction.instruction.getOpcode();
                        if (opcode == Opcode.MOVE_OBJECT || opcode == Opcode.MOVE_OBJECT_16 || opcode == Opcode.MOVE_OBJECT_FROM16) {
                            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) analyzedInstruction.instruction;
                            RegisterType postInstructionRegisterType = analyzedInstruction.getPostInstructionRegisterType(twoRegisterInstruction.getRegisterB());
                            if (twoRegisterInstruction.getRegisterA() == instruction22c.getRegisterB() && postInstructionRegisterType.type != null) {
                                if (registerType4 == null) {
                                    registerType4 = RegisterType.getRegisterType(this.methodAnalyzer.getClassPath(), (TypeReference) instruction22c.getReference());
                                }
                                if (MethodAnalyzer.isNotWideningConversion(postInstructionRegisterType, registerType4)) {
                                    if (registerB != -1) {
                                        if (registerB != twoRegisterInstruction.getRegisterB()) {
                                        }
                                    } else {
                                        registerB = twoRegisterInstruction.getRegisterB();
                                    }
                                }
                            }
                        }
                        registerB = -1;
                    }
                    if (registerB != -1) {
                        arrayList.add(Integer.valueOf(registerB));
                    }
                }
            }
        }
        return arrayList;
    }

    public int getDestinationRegister() {
        if (!this.instruction.getOpcode().setsRegister()) {
            throw new ExceptionWithContext("Cannot call getDestinationRegister() for an instruction that doesn't store a value", new Object[0]);
        }
        return ((OneRegisterInstruction) this.instruction).getRegisterA();
    }

    public int getRegisterCount() {
        return this.postRegisterMap.length;
    }

    @Nonnull
    public RegisterType getPostInstructionRegisterType(int i) {
        return this.postRegisterMap[i];
    }

    @Nonnull
    public RegisterType getPreInstructionRegisterType(int i) {
        return this.preRegisterMap[i];
    }

    @Override // java.lang.Comparable
    public int compareTo(@Nonnull AnalyzedInstruction analyzedInstruction) {
        int i = this.instructionIndex;
        int i2 = analyzedInstruction.instructionIndex;
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    private static class PredecessorOverrideKey {
        public final AnalyzedInstruction analyzedInstruction;
        public final int registerNumber;

        public PredecessorOverrideKey(AnalyzedInstruction analyzedInstruction, int i) {
            this.analyzedInstruction = analyzedInstruction;
            this.registerNumber = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                PredecessorOverrideKey predecessorOverrideKey = (PredecessorOverrideKey) obj;
                if (Objects.equals(Integer.valueOf(this.registerNumber), Integer.valueOf(predecessorOverrideKey.registerNumber)) && Objects.equals(this.analyzedInstruction, predecessorOverrideKey.analyzedInstruction)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.analyzedInstruction, Integer.valueOf(this.registerNumber));
        }
    }
}
