package com.android.tools.smali.dexlib2.analysis;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.location.LocationRequestCompat;
import androidx.core.text.HtmlCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.dexbacked.raw.CdexHeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.instruction.FiveRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.NarrowLiteralInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OffsetInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.RegisterRangeInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload;
import com.android.tools.smali.dexlib2.iface.instruction.ThreeRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.TwoRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22cs;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35mi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35ms;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rmi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rms;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction10x;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction21c;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction22c;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction35c;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction3rc;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableFieldReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.dexlib2.util.TypeUtils;
import com.android.tools.smali.dexlib2.writer.util.TryListBuilder;
import com.android.tools.smali.util.BitSetUtils;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.IteratorUtils;
import com.android.tools.smali.util.SparseArray;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public class MethodAnalyzer {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Nullable
    private AnalysisException analysisException;

    @Nonnull
    private final SparseArray<AnalyzedInstruction> analyzedInstructions;

    @Nonnull
    private final BitSet analyzedState;

    @Nonnull
    private final ClassPath classPath;

    @Nullable
    private final InlineMethodResolver inlineResolver;

    @Nonnull
    private final Method method;

    @Nonnull
    private final MethodImplementation methodImpl;
    private final boolean normalizeVirtualMethods;
    private final int paramRegisterCount;
    private final AnalyzedInstruction startOfMethod;
    private static final BitSet Primitive32BitCategories = BitSetUtils.bitSetOfIndexes(2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
    private static final BitSet WideLowCategories = BitSetUtils.bitSetOfIndexes(12, 14);
    private static final BitSet WideHighCategories = BitSetUtils.bitSetOfIndexes(13, 15);
    private static final BitSet ReferenceOrUninitCategories = BitSetUtils.bitSetOfIndexes(2, 16, 17, 18);
    private static final BitSet BooleanCategories = BitSetUtils.bitSetOfIndexes(2, 3, 4);

    public MethodAnalyzer(@Nonnull ClassPath classPath, @Nonnull Method method, @Nullable InlineMethodResolver inlineMethodResolver, boolean z) {
        SparseArray<AnalyzedInstruction> sparseArray = new SparseArray<>(0);
        this.analyzedInstructions = sparseArray;
        this.analysisException = null;
        this.classPath = classPath;
        this.inlineResolver = inlineMethodResolver;
        this.normalizeVirtualMethods = z;
        this.method = method;
        MethodImplementation implementation = method.getImplementation();
        if (implementation == null) {
            throw new IllegalArgumentException("The method has no implementation");
        }
        this.methodImpl = implementation;
        this.startOfMethod = new AnalyzedInstruction(this, new ImmutableInstruction10x(Opcode.NOP), -1, implementation.getRegisterCount()) { // from class: com.android.tools.smali.dexlib2.analysis.MethodAnalyzer.1
            @Override // com.android.tools.smali.dexlib2.analysis.AnalyzedInstruction
            protected boolean addPredecessor(AnalyzedInstruction analyzedInstruction) {
                throw new UnsupportedOperationException();
            }

            @Override // com.android.tools.smali.dexlib2.analysis.AnalyzedInstruction
            @Nonnull
            public RegisterType getPredecessorRegisterType(@Nonnull AnalyzedInstruction analyzedInstruction, int i) {
                throw new UnsupportedOperationException();
            }
        };
        buildInstructionList();
        this.analyzedState = new BitSet(sparseArray.size());
        this.paramRegisterCount = MethodUtil.getParameterRegisterCount(method);
        analyze();
    }

    @Nonnull
    public ClassPath getClassPath() {
        return this.classPath;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0143  */
    /* JADX WARN: Code duplicated, block: B:53:0x0159  */
    /* JADX WARN: Code duplicated, block: B:56:0x016b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0173  */
    /* JADX WARN: Code duplicated, block: B:58:0x017b  */
    /* JADX WARN: Code duplicated, block: B:60:0x018b  */
    /* JADX WARN: Code duplicated, block: B:61:0x018f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0193  */
    /* JADX WARN: Code duplicated, block: B:63:0x0197  */
    /* JADX WARN: Code duplicated, block: B:66:0x019e  */
    /* JADX WARN: Code duplicated, block: B:70:0x01aa A[LOOP:6: B:69:0x01a8->B:70:0x01aa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x013a A[EDGE_INSN: B:78:0x013a->B:48:0x013a BREAK  A[LOOP:2: B:18:0x008d->B:79:0x008d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0138 A[EDGE_INSN: B:83:0x0138->B:47:0x0138 BREAK  A[LOOP:3: B:19:0x008e->B:84:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[LOOP:3: B:19:0x008e->B:84:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x019a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x019a A[SYNTHETIC] */
    private void analyze() {
        int i;
        AnalyzedInstruction analyzedInstructionValueAt;
        Instruction instruction;
        int registerB;
        int iNextSetBit;
        Method method = this.method;
        int registerCount = this.methodImpl.getRegisterCount() - this.paramRegisterCount;
        if (!MethodUtil.isStatic(method)) {
            if (MethodUtil.isConstructor(method)) {
                setPostRegisterTypeAndPropagateChanges(this.startOfMethod, registerCount, RegisterType.getRegisterType((byte) 17, this.classPath.getClass(method.getDefiningClass())));
            } else {
                setPostRegisterTypeAndPropagateChanges(this.startOfMethod, registerCount, RegisterType.getRegisterType((byte) 18, this.classPath.getClass(method.getDefiningClass())));
            }
            propagateParameterTypes(registerCount + 1);
        } else {
            propagateParameterTypes(registerCount);
        }
        RegisterType registerType = RegisterType.getRegisterType((byte) 1, (TypeProto) null);
        for (int i2 = 0; i2 < registerCount; i2++) {
            setPostRegisterTypeAndPropagateChanges(this.startOfMethod, i2, registerType);
        }
        BitSet bitSet = new BitSet(this.analyzedInstructions.size());
        Iterator<AnalyzedInstruction> it = this.startOfMethod.successors.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().instructionIndex);
        }
        BitSet bitSet2 = new BitSet(this.analyzedInstructions.size());
        while (true) {
            boolean z = false;
            while (!bitSet.isEmpty()) {
                for (int iNextSetBit2 = bitSet.nextSetBit(0); iNextSetBit2 >= 0; iNextSetBit2 = bitSet.nextSetBit(iNextSetBit2 + 1)) {
                    bitSet.clear(iNextSetBit2);
                    if (!this.analyzedState.get(iNextSetBit2)) {
                        AnalyzedInstruction analyzedInstructionValueAt2 = this.analyzedInstructions.valueAt(iNextSetBit2);
                        try {
                            if (analyzedInstructionValueAt2.originalInstruction.getOpcode().odexOnly()) {
                                analyzedInstructionValueAt2.restoreOdexedInstruction();
                            }
                            if (!analyzeInstruction(analyzedInstructionValueAt2)) {
                                bitSet2.set(iNextSetBit2);
                            } else {
                                try {
                                    bitSet2.clear(iNextSetBit2);
                                    this.analyzedState.set(analyzedInstructionValueAt2.getInstructionIndex());
                                    Iterator<AnalyzedInstruction> it2 = analyzedInstructionValueAt2.successors.iterator();
                                    while (it2.hasNext()) {
                                        bitSet.set(it2.next().getInstructionIndex());
                                    }
                                    z = true;
                                } catch (AnalysisException e) {
                                    e = e;
                                    z = true;
                                    this.analysisException = e;
                                    int instructionAddress = getInstructionAddress(analyzedInstructionValueAt2);
                                    e.codeAddress = instructionAddress;
                                    e.addContext(String.format("opcode: %s", analyzedInstructionValueAt2.instruction.getOpcode().name));
                                    e.addContext(String.format("code address: %d", Integer.valueOf(instructionAddress)));
                                    e.addContext(String.format("method: %s", method));
                                    if (this.analysisException != null) {
                                        break;
                                        if (z) {
                                            if (!bitSet2.isEmpty()) {
                                                for (iNextSetBit = bitSet2.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet2.nextSetBit(iNextSetBit + 1)) {
                                                    bitSet.set(iNextSetBit);
                                                }
                                            }
                                        } else {
                                            break;
                                            for (i = 0; i < this.analyzedInstructions.size(); i++) {
                                                analyzedInstructionValueAt = this.analyzedInstructions.valueAt(i);
                                                instruction = analyzedInstructionValueAt.getInstruction();
                                                if (instruction.getOpcode().odexOnly()) {
                                                    switch (AnonymousClass2.$SwitchMap$com$android$tools$smali$dexlib2$Format[instruction.getOpcode().format.ordinal()]) {
                                                        case 1:
                                                            analyzeOdexReturnVoid(analyzedInstructionValueAt, false);
                                                            continue;
                                                            continue;
                                                        case 2:
                                                        case 3:
                                                            analyzePutGetVolatile(analyzedInstructionValueAt, false);
                                                            continue;
                                                            continue;
                                                        case 4:
                                                            analyzeInvokeDirectEmpty(analyzedInstructionValueAt, false);
                                                            continue;
                                                            continue;
                                                        case 5:
                                                            analyzeInvokeObjectInitRange(analyzedInstructionValueAt, false);
                                                            continue;
                                                            continue;
                                                        case 6:
                                                            registerB = ((Instruction22cs) instruction).getRegisterB();
                                                            break;
                                                        case 7:
                                                        case 8:
                                                            registerB = ((FiveRegisterInstruction) instruction).getRegisterC();
                                                            break;
                                                        case 9:
                                                        case 10:
                                                            registerB = ((RegisterRangeInstruction) instruction).getStartRegister();
                                                            break;
                                                        default:
                                                            continue;
                                                            continue;
                                                    }
                                                    analyzedInstructionValueAt.setDeodexedInstruction(new UnresolvedOdexInstruction(instruction, registerB));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (AnalysisException e2) {
                            e = e2;
                        }
                    }
                }
                if (this.analysisException != null) {
                    break;
                }
            }
            if (z) {
                break;
            }
            if (!bitSet2.isEmpty()) {
                while (iNextSetBit >= 0) {
                    bitSet.set(iNextSetBit);
                }
            }
        }
        while (i < this.analyzedInstructions.size()) {
            analyzedInstructionValueAt = this.analyzedInstructions.valueAt(i);
            instruction = analyzedInstructionValueAt.getInstruction();
            if (instruction.getOpcode().odexOnly()) {
                switch (AnonymousClass2.$SwitchMap$com$android$tools$smali$dexlib2$Format[instruction.getOpcode().format.ordinal()]) {
                    case 1:
                        analyzeOdexReturnVoid(analyzedInstructionValueAt, false);
                        continue;
                        continue;
                    case 2:
                    case 3:
                        analyzePutGetVolatile(analyzedInstructionValueAt, false);
                        continue;
                        continue;
                    case 4:
                        analyzeInvokeDirectEmpty(analyzedInstructionValueAt, false);
                        continue;
                        continue;
                    case 5:
                        analyzeInvokeObjectInitRange(analyzedInstructionValueAt, false);
                        continue;
                        continue;
                    case 6:
                        registerB = ((Instruction22cs) instruction).getRegisterB();
                        break;
                    case 7:
                    case 8:
                        registerB = ((FiveRegisterInstruction) instruction).getRegisterC();
                        break;
                    case 9:
                    case 10:
                        registerB = ((RegisterRangeInstruction) instruction).getStartRegister();
                        break;
                    default:
                        continue;
                        continue;
                }
                analyzedInstructionValueAt.setDeodexedInstruction(new UnresolvedOdexInstruction(instruction, registerB));
            }
        }
    }

    private void propagateParameterTypes(int i) {
        int i2 = 0;
        for (MethodParameter methodParameter : this.method.getParameters()) {
            if (TypeUtils.isWideType(methodParameter)) {
                int i3 = i2 + 1;
                setPostRegisterTypeAndPropagateChanges(this.startOfMethod, i + i2, RegisterType.getWideRegisterType(methodParameter, true));
                i2 += 2;
                setPostRegisterTypeAndPropagateChanges(this.startOfMethod, i3 + i, RegisterType.getWideRegisterType(methodParameter, false));
            } else {
                setPostRegisterTypeAndPropagateChanges(this.startOfMethod, i2 + i, RegisterType.getRegisterType(this.classPath, methodParameter));
                i2++;
            }
        }
    }

    public List<AnalyzedInstruction> getAnalyzedInstructions() {
        return this.analyzedInstructions.getValues();
    }

    public List<Instruction> getInstructions() {
        return (List) this.analyzedInstructions.getValues().stream().map(new Function() { // from class: com.android.tools.smali.dexlib2.analysis.MethodAnalyzer$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MethodAnalyzer.lambda$getInstructions$0((AnalyzedInstruction) obj);
            }
        }).collect(Collectors.toList());
    }

    static /* synthetic */ Instruction lambda$getInstructions$0(AnalyzedInstruction analyzedInstruction) {
        if (analyzedInstruction == null) {
            return null;
        }
        return analyzedInstruction.instruction;
    }

    @Nullable
    public AnalysisException getAnalysisException() {
        return this.analysisException;
    }

    public int getParamRegisterCount() {
        return this.paramRegisterCount;
    }

    public int getInstructionAddress(@Nonnull AnalyzedInstruction analyzedInstruction) {
        return this.analyzedInstructions.keyAt(analyzedInstruction.instructionIndex);
    }

    private void setDestinationRegisterTypeAndPropagateChanges(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType) {
        setPostRegisterTypeAndPropagateChanges(analyzedInstruction, analyzedInstruction.getDestinationRegister(), registerType);
    }

    private void propagateChanges(@Nonnull BitSet bitSet, int i, boolean z) {
        while (!bitSet.isEmpty()) {
            int iNextSetBit = bitSet.nextSetBit(0);
            while (iNextSetBit >= 0) {
                bitSet.clear(iNextSetBit);
                propagateRegisterToSuccessors(this.analyzedInstructions.valueAt(iNextSetBit), i, bitSet, z);
                iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
            }
        }
    }

    private void overridePredecessorRegisterTypeAndPropagateChanges(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull AnalyzedInstruction analyzedInstruction2, int i, @Nonnull RegisterType registerType) {
        BitSet bitSet = new BitSet(this.analyzedInstructions.size());
        if (analyzedInstruction.overridePredecessorRegisterType(analyzedInstruction2, i, registerType, this.analyzedState)) {
            bitSet.set(analyzedInstruction.instructionIndex);
            propagateChanges(bitSet, i, true);
            if (registerType.category == 12) {
                checkWidePair(i, analyzedInstruction);
                overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstruction, analyzedInstruction2, i + 1, RegisterType.LONG_HI_TYPE);
            } else if (registerType.category == 14) {
                checkWidePair(i, analyzedInstruction);
                overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstruction, analyzedInstruction2, i + 1, RegisterType.DOUBLE_HI_TYPE);
            }
        }
    }

    private void initializeRefAndPropagateChanges(@Nonnull AnalyzedInstruction analyzedInstruction, int i, @Nonnull RegisterType registerType) {
        BitSet bitSet = new BitSet(this.analyzedInstructions.size());
        if (analyzedInstruction.setPostRegisterType(i, registerType)) {
            propagateRegisterToSuccessors(analyzedInstruction, i, bitSet, false);
            propagateChanges(bitSet, i, false);
            if (registerType.category == 12) {
                checkWidePair(i, analyzedInstruction);
                setPostRegisterTypeAndPropagateChanges(analyzedInstruction, i + 1, RegisterType.LONG_HI_TYPE);
            } else if (registerType.category == 14) {
                checkWidePair(i, analyzedInstruction);
                setPostRegisterTypeAndPropagateChanges(analyzedInstruction, i + 1, RegisterType.DOUBLE_HI_TYPE);
            }
        }
    }

    private void setPostRegisterTypeAndPropagateChanges(@Nonnull AnalyzedInstruction analyzedInstruction, int i, @Nonnull RegisterType registerType) {
        BitSet bitSet = new BitSet(this.analyzedInstructions.size());
        if (analyzedInstruction.setPostRegisterType(i, registerType)) {
            propagateRegisterToSuccessors(analyzedInstruction, i, bitSet, false);
            propagateChanges(bitSet, i, false);
            if (registerType.category == 12) {
                checkWidePair(i, analyzedInstruction);
                setPostRegisterTypeAndPropagateChanges(analyzedInstruction, i + 1, RegisterType.LONG_HI_TYPE);
            } else if (registerType.category == 14) {
                checkWidePair(i, analyzedInstruction);
                setPostRegisterTypeAndPropagateChanges(analyzedInstruction, i + 1, RegisterType.DOUBLE_HI_TYPE);
            }
        }
    }

    private void propagateRegisterToSuccessors(@Nonnull AnalyzedInstruction analyzedInstruction, int i, @Nonnull BitSet bitSet, boolean z) {
        RegisterType postInstructionRegisterType = analyzedInstruction.getPostInstructionRegisterType(i);
        for (AnalyzedInstruction analyzedInstruction2 : analyzedInstruction.successors) {
            if (analyzedInstruction2.mergeRegister(i, postInstructionRegisterType, this.analyzedState, z)) {
                bitSet.set(analyzedInstruction2.instructionIndex);
            }
        }
    }

    private void buildInstructionList() {
        int registerCount = this.methodImpl.getRegisterCount();
        List listUnmodifiableList = Collections.unmodifiableList(IteratorUtils.toList(this.methodImpl.getInstructions()));
        this.analyzedInstructions.ensureCapacity(listUnmodifiableList.size());
        int codeUnits = 0;
        for (int i = 0; i < listUnmodifiableList.size(); i++) {
            Instruction instruction = (Instruction) listUnmodifiableList.get(i);
            this.analyzedInstructions.append(codeUnits, new AnalyzedInstruction(this, instruction, i, registerCount));
            codeUnits += instruction.getCodeUnits();
        }
        List listMassageTryBlocks = TryListBuilder.massageTryBlocks(this.methodImpl.getTryBlocks());
        AnalyzedInstruction[][] analyzedInstructionArr = new AnalyzedInstruction[listUnmodifiableList.size()][];
        if (listMassageTryBlocks != null) {
            TryBlock<? extends ExceptionHandler> tryBlock = null;
            AnalyzedInstruction[] analyzedInstructionArrBuildExceptionHandlerArray = null;
            int i2 = 0;
            for (int i3 = 0; i3 < this.analyzedInstructions.size(); i3++) {
                AnalyzedInstruction analyzedInstructionValueAt = this.analyzedInstructions.valueAt(i3);
                Opcode opcode = analyzedInstructionValueAt.instruction.getOpcode();
                int instructionAddress = getInstructionAddress(analyzedInstructionValueAt);
                if (tryBlock != null && tryBlock.getStartCodeAddress() + tryBlock.getCodeUnitCount() <= instructionAddress) {
                    i2++;
                    tryBlock = null;
                }
                if (tryBlock == null && i2 < listMassageTryBlocks.size()) {
                    TryBlock<? extends ExceptionHandler> tryBlock2 = (TryBlock) listMassageTryBlocks.get(i2);
                    if (tryBlock2.getStartCodeAddress() <= instructionAddress) {
                        analyzedInstructionArrBuildExceptionHandlerArray = buildExceptionHandlerArray(tryBlock2);
                        tryBlock = tryBlock2;
                    }
                }
                if (tryBlock != null && opcode.canThrow()) {
                    analyzedInstructionArr[i3] = analyzedInstructionArrBuildExceptionHandlerArray;
                }
            }
        }
        BitSet bitSet = new BitSet(listUnmodifiableList.size());
        addPredecessorSuccessor(this.startOfMethod, this.analyzedInstructions.valueAt(0), analyzedInstructionArr, bitSet);
        while (!bitSet.isEmpty()) {
            int iNextSetBit = bitSet.nextSetBit(0);
            bitSet.clear(iNextSetBit);
            AnalyzedInstruction analyzedInstructionValueAt2 = this.analyzedInstructions.valueAt(iNextSetBit);
            Opcode opcode2 = analyzedInstructionValueAt2.instruction.getOpcode();
            int instructionAddress2 = getInstructionAddress(analyzedInstructionValueAt2);
            if (analyzedInstructionValueAt2.instruction.getOpcode().canContinue()) {
                if (iNextSetBit == this.analyzedInstructions.size() - 1) {
                    throw new AnalysisException("Execution can continue past the last instruction", new Object[0]);
                }
                addPredecessorSuccessor(analyzedInstructionValueAt2, this.analyzedInstructions.valueAt(iNextSetBit + 1), analyzedInstructionArr, bitSet);
            }
            if (analyzedInstructionValueAt2.instruction instanceof OffsetInstruction) {
                OffsetInstruction offsetInstruction = (OffsetInstruction) analyzedInstructionValueAt2.instruction;
                if (opcode2 == Opcode.PACKED_SWITCH || opcode2 == Opcode.SPARSE_SWITCH) {
                    AnalyzedInstruction analyzedInstruction = this.analyzedInstructions.get(offsetInstruction.getCodeOffset() + instructionAddress2);
                    if (analyzedInstruction == null) {
                        throw new AnalysisException("Invalid switch payload offset", new Object[0]);
                    }
                    Iterator<? extends SwitchElement> it = ((SwitchPayload) analyzedInstruction.instruction).getSwitchElements().iterator();
                    while (it.hasNext()) {
                        AnalyzedInstruction analyzedInstruction2 = this.analyzedInstructions.get(it.next().getOffset() + instructionAddress2);
                        if (analyzedInstruction2 == null) {
                            throw new AnalysisException("Invalid switch target offset", new Object[0]);
                        }
                        addPredecessorSuccessor(analyzedInstructionValueAt2, analyzedInstruction2, analyzedInstructionArr, bitSet);
                    }
                } else if (opcode2 != Opcode.FILL_ARRAY_DATA) {
                    addPredecessorSuccessor(analyzedInstructionValueAt2, this.analyzedInstructions.get(instructionAddress2 + offsetInstruction.getCodeOffset()), analyzedInstructionArr, bitSet);
                }
            }
        }
    }

    private void addPredecessorSuccessor(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull AnalyzedInstruction analyzedInstruction2, @Nonnull AnalyzedInstruction[][] analyzedInstructionArr, @Nonnull BitSet bitSet) {
        addPredecessorSuccessor(analyzedInstruction, analyzedInstruction2, analyzedInstructionArr, bitSet, false);
    }

    private void addPredecessorSuccessor(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull AnalyzedInstruction analyzedInstruction2, @Nonnull AnalyzedInstruction[][] analyzedInstructionArr, @Nonnull BitSet bitSet, boolean z) {
        if (!z && analyzedInstruction2.instruction.getOpcode() == Opcode.MOVE_EXCEPTION) {
            throw new AnalysisException("Execution can pass from the " + analyzedInstruction.instruction.getOpcode().name + " instruction at code address 0x" + Integer.toHexString(getInstructionAddress(analyzedInstruction)) + " to the move-exception instruction at address 0x" + Integer.toHexString(getInstructionAddress(analyzedInstruction2)), new Object[0]);
        }
        if (analyzedInstruction2.addPredecessor(analyzedInstruction)) {
            analyzedInstruction.addSuccessor(analyzedInstruction2);
            bitSet.set(analyzedInstruction2.getInstructionIndex());
            AnalyzedInstruction[] analyzedInstructionArr2 = analyzedInstructionArr[analyzedInstruction2.instructionIndex];
            if (analyzedInstructionArr2 != null) {
                for (AnalyzedInstruction analyzedInstruction3 : analyzedInstructionArr2) {
                    addPredecessorSuccessor(analyzedInstruction, analyzedInstruction3, analyzedInstructionArr, bitSet, true);
                }
            }
        }
    }

    @Nonnull
    private AnalyzedInstruction[] buildExceptionHandlerArray(@Nonnull TryBlock<? extends ExceptionHandler> tryBlock) {
        List<? extends EH> exceptionHandlers = tryBlock.getExceptionHandlers();
        AnalyzedInstruction[] analyzedInstructionArr = new AnalyzedInstruction[exceptionHandlers.size()];
        for (int i = 0; i < exceptionHandlers.size(); i++) {
            analyzedInstructionArr[i] = this.analyzedInstructions.get(((ExceptionHandler) exceptionHandlers.get(i)).getHandlerCodeAddress());
        }
        return analyzedInstructionArr;
    }

    private boolean analyzeInstruction(@Nonnull AnalyzedInstruction analyzedInstruction) {
        switch (AnonymousClass2.$SwitchMap$com$android$tools$smali$dexlib2$Opcode[analyzedInstruction.instruction.getOpcode().ordinal()]) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                analyzeMove(analyzedInstruction);
            case 1:
                return true;
            case 11:
            case 12:
            case 13:
                analyzeMoveResult(analyzedInstruction);
                return true;
            case 14:
                analyzeMoveException(analyzedInstruction);
                return true;
            case 19:
            case 20:
                analyzeOdexReturnVoid(analyzedInstruction);
            case 15:
            case 16:
            case 17:
            case 18:
                return true;
            case 21:
            case 22:
            case 23:
            case 24:
                analyzeConst(analyzedInstruction);
                return true;
            case 25:
            case 26:
            case 27:
            case 28:
                analyzeWideConst(analyzedInstruction);
                return true;
            case 29:
            case 30:
                analyzeConstString(analyzedInstruction);
                return true;
            case 31:
                analyzeConstClass(analyzedInstruction);
                return true;
            case 34:
                analyzeCheckCast(analyzedInstruction);
            case 32:
            case 33:
                return true;
            case 35:
                analyzeInstanceOf(analyzedInstruction);
                return true;
            case 36:
                analyzeArrayLength(analyzedInstruction);
                return true;
            case 37:
                analyzeNewInstance(analyzedInstruction);
                return true;
            case 38:
                analyzeNewArray(analyzedInstruction);
                return true;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
            case 49:
            case 50:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
            case 52:
                analyzeFloatWideCmp(analyzedInstruction);
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
                return true;
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
            case 64:
                analyzeIfEqzNez(analyzedInstruction);
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
            case HeaderItem.STRING_COUNT_OFFSET /* 56 */:
            case 57:
            case 58:
            case 59:
            case 60:
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
            case 62:
                return true;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                analyze32BitPrimitiveAget(analyzedInstruction, RegisterType.INTEGER_TYPE);
                return true;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                analyze32BitPrimitiveAget(analyzedInstruction, RegisterType.BOOLEAN_TYPE);
                return true;
            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                analyze32BitPrimitiveAget(analyzedInstruction, RegisterType.BYTE_TYPE);
                return true;
            case HeaderItem.TYPE_START_OFFSET /* 68 */:
                analyze32BitPrimitiveAget(analyzedInstruction, RegisterType.CHAR_TYPE);
                return true;
            case 69:
                analyze32BitPrimitiveAget(analyzedInstruction, RegisterType.SHORT_TYPE);
                return true;
            case 70:
                analyzeAgetWide(analyzedInstruction);
                return true;
            case 71:
                analyzeAgetObject(analyzedInstruction);
                return true;
            case 79:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.INTEGER_TYPE);
            case HeaderItem.PROTO_COUNT_OFFSET /* 72 */:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
                return true;
            case HeaderItem.FIELD_COUNT_OFFSET /* 80 */:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.BOOLEAN_TYPE);
                return true;
            case 81:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.BYTE_TYPE);
                return true;
            case 82:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.CHAR_TYPE);
                return true;
            case 83:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.SHORT_TYPE);
                return true;
            case HeaderItem.FIELD_START_OFFSET /* 84 */:
            case 85:
                analyzeIgetSgetWideObject(analyzedInstruction);
                return true;
            case 93:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.INTEGER_TYPE);
            case 86:
            case 87:
            case HeaderItem.METHOD_COUNT_OFFSET /* 88 */:
            case 89:
            case 90:
            case 91:
            case HeaderItem.METHOD_START_OFFSET /* 92 */:
                return true;
            case 94:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.BOOLEAN_TYPE);
                return true;
            case 95:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.BYTE_TYPE);
                return true;
            case HeaderItem.CLASS_COUNT_OFFSET /* 96 */:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.CHAR_TYPE);
                return true;
            case 97:
                analyze32BitPrimitiveIgetSget(analyzedInstruction, RegisterType.SHORT_TYPE);
                return true;
            case 98:
            case 99:
                analyzeIgetSgetWideObject(analyzedInstruction);
                return true;
            case 107:
                analyzeInvokeVirtual(analyzedInstruction, false);
            case 100:
            case TypedValues.TYPE_TARGET /* 101 */:
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
            case 103:
            case 104:
            case 105:
            case 106:
                return true;
            case 108:
                analyzeInvokeVirtual(analyzedInstruction, false);
                return true;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                analyzeInvokeDirect(analyzedInstruction);
                return true;
            case 112:
                analyzeInvokeVirtual(analyzedInstruction, true);
            case 110:
            case 111:
                return true;
            case 113:
                analyzeInvokeVirtual(analyzedInstruction, true);
                return true;
            case 114:
                analyzeInvokeDirectRange(analyzedInstruction);
                return true;
            case 117:
            case 118:
                analyzeUnaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE);
            case 115:
            case 116:
                return true;
            case 119:
            case CdexHeaderItem.DEBUG_INFO_OFFSETS_TABLE_OFFSET /* 120 */:
                analyzeUnaryOp(analyzedInstruction, RegisterType.LONG_LO_TYPE);
                return true;
            case 121:
                analyzeUnaryOp(analyzedInstruction, RegisterType.FLOAT_TYPE);
                return true;
            case 122:
                analyzeUnaryOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE);
                return true;
            case 123:
                analyzeUnaryOp(analyzedInstruction, RegisterType.LONG_LO_TYPE);
                return true;
            case CdexHeaderItem.DEBUG_INFO_BASE /* 124 */:
                analyzeUnaryOp(analyzedInstruction, RegisterType.FLOAT_TYPE);
                return true;
            case 125:
                analyzeUnaryOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE);
                return true;
            case 126:
            case WorkQueueKt.MASK /* 127 */:
                analyzeUnaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE);
                return true;
            case 128:
            case 129:
                analyzeUnaryOp(analyzedInstruction, RegisterType.FLOAT_TYPE);
                return true;
            case 130:
                analyzeUnaryOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE);
                return true;
            case 131:
                analyzeUnaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE);
                return true;
            case 132:
                analyzeUnaryOp(analyzedInstruction, RegisterType.LONG_LO_TYPE);
                return true;
            case 133:
                analyzeUnaryOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE);
                return true;
            case 134:
                analyzeUnaryOp(analyzedInstruction, RegisterType.LONG_LO_TYPE);
                return true;
            case 135:
                analyzeUnaryOp(analyzedInstruction, RegisterType.BYTE_TYPE);
                return true;
            case 136:
                analyzeUnaryOp(analyzedInstruction, RegisterType.CHAR_TYPE);
                return true;
            case 137:
                analyzeUnaryOp(analyzedInstruction, RegisterType.SHORT_TYPE);
                return true;
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
                analyzeBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, false);
                return true;
            case 146:
            case 147:
            case 148:
                analyzeBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, true);
                return true;
            case 149:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                analyzeBinaryOp(analyzedInstruction, RegisterType.LONG_LO_TYPE, false);
                return true;
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
                analyzeBinaryOp(analyzedInstruction, RegisterType.FLOAT_TYPE, false);
                return true;
            case 165:
            case 166:
            case 167:
            case 168:
            case 169:
                analyzeBinaryOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE, false);
                return true;
            case 170:
            case 171:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 177:
                analyzeBinary2AddrOp(analyzedInstruction, RegisterType.INTEGER_TYPE, false);
                return true;
            case 178:
            case 179:
            case 180:
                analyzeBinary2AddrOp(analyzedInstruction, RegisterType.INTEGER_TYPE, true);
                return true;
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
                analyzeBinary2AddrOp(analyzedInstruction, RegisterType.LONG_LO_TYPE, false);
                return true;
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
                analyzeBinary2AddrOp(analyzedInstruction, RegisterType.FLOAT_TYPE, false);
                return true;
            case 197:
            case 198:
            case 199:
            case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
            case 201:
                analyzeBinary2AddrOp(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE, false);
                return true;
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
                analyzeLiteralBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, false);
                return true;
            case 207:
            case 208:
            case 209:
                analyzeLiteralBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, true);
                return true;
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
                analyzeLiteralBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, false);
                return true;
            case 216:
            case 217:
            case 218:
                analyzeLiteralBinaryOp(analyzedInstruction, RegisterType.INTEGER_TYPE, true);
                return true;
            case 219:
                analyzeLiteralBinaryOp(analyzedInstruction, getDestTypeForLiteralShiftRight(analyzedInstruction, true), false);
                return true;
            case 220:
                analyzeLiteralBinaryOp(analyzedInstruction, getDestTypeForLiteralShiftRight(analyzedInstruction, false), false);
                return true;
            case 221:
            case 222:
            case 223:
            case 224:
            case 225:
            case 226:
            case 227:
            case 228:
            case 229:
                analyzePutGetVolatile(analyzedInstruction);
                return true;
            case 231:
                analyzeExecuteInline(analyzedInstruction);
            case 230:
                return true;
            case 232:
                analyzeExecuteInlineRange(analyzedInstruction);
                return true;
            case 233:
                analyzeInvokeDirectEmpty(analyzedInstruction);
                return true;
            case 234:
                analyzeInvokeObjectInitRange(analyzedInstruction);
                return true;
            case 235:
            case 236:
            case 237:
            case 238:
            case 239:
            case 240:
            case 241:
            case 242:
            case 243:
            case 244:
            case 245:
            case 246:
            case 247:
            case 248:
                return analyzeIputIgetQuick(analyzedInstruction);
            case 249:
                return analyzeInvokeVirtualQuick(analyzedInstruction, false, false);
            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                return analyzeInvokeVirtualQuick(analyzedInstruction, true, false);
            case 251:
                return analyzeInvokeVirtualQuick(analyzedInstruction, false, true);
            case 252:
                return analyzeInvokeVirtualQuick(analyzedInstruction, true, true);
            case 253:
            case 254:
            case 255:
                analyzePutGetVolatile(analyzedInstruction);
                return true;
            default:
                return true;
        }
    }

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.analysis.MethodAnalyzer$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Format;
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Opcode;

        static {
            int[] iArr = new int[Opcode.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Opcode = iArr;
            try {
                iArr[Opcode.NOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_FROM16.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE_FROM16.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE_16.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT_FROM16.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT_16.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT_WIDE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT_OBJECT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_EXCEPTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_VOID.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_WIDE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_OBJECT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_VOID_BARRIER.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_VOID_NO_BARRIER.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_4.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_16.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_HIGH16.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_16.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_32.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_HIGH16.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_STRING.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_STRING_JUMBO.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_CLASS.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MONITOR_ENTER.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MONITOR_EXIT.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CHECK_CAST.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INSTANCE_OF.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ARRAY_LENGTH.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEW_INSTANCE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEW_ARRAY.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILLED_NEW_ARRAY.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILLED_NEW_ARRAY_RANGE.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILL_ARRAY_DATA.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.THROW.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO_16.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO_32.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.PACKED_SWITCH.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPARSE_SWITCH.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPL_FLOAT.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPG_FLOAT.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPL_DOUBLE.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPG_DOUBLE.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMP_LONG.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_EQ.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_NE.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LT.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GT.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LE.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LTZ.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GEZ.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GTZ.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LEZ.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_EQZ.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_NEZ.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_BOOLEAN.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_BYTE.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_CHAR.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_SHORT.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_WIDE.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_OBJECT.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_BOOLEAN.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_BYTE.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_CHAR.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_SHORT.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_WIDE.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_OBJECT.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BOOLEAN.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BYTE.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_CHAR.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_SHORT.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_WIDE.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_OBJECT.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BOOLEAN.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BYTE.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_CHAR.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_SHORT.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_WIDE.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_OBJECT.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_BOOLEAN.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_BYTE.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_CHAR.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_SHORT.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_WIDE.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_OBJECT.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_BOOLEAN.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_BYTE.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_CHAR.ordinal()] = 103;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_SHORT.ordinal()] = 104;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_WIDE.ordinal()] = 105;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_OBJECT.ordinal()] = 106;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL.ordinal()] = 107;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER.ordinal()] = 108;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_DIRECT.ordinal()] = 109;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_STATIC.ordinal()] = 110;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_INTERFACE.ordinal()] = 111;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL_RANGE.ordinal()] = 112;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER_RANGE.ordinal()] = 113;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_DIRECT_RANGE.ordinal()] = 114;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_STATIC_RANGE.ordinal()] = 115;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_INTERFACE_RANGE.ordinal()] = 116;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_INT.ordinal()] = 117;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NOT_INT.ordinal()] = 118;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_LONG.ordinal()] = 119;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NOT_LONG.ordinal()] = 120;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_FLOAT.ordinal()] = 121;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_DOUBLE.ordinal()] = 122;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_LONG.ordinal()] = 123;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_FLOAT.ordinal()] = 124;
            } catch (NoSuchFieldError unused124) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_DOUBLE.ordinal()] = 125;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_INT.ordinal()] = 126;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_INT.ordinal()] = 127;
            } catch (NoSuchFieldError unused127) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_FLOAT.ordinal()] = 128;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_FLOAT.ordinal()] = 129;
            } catch (NoSuchFieldError unused129) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_DOUBLE.ordinal()] = 130;
            } catch (NoSuchFieldError unused130) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_INT.ordinal()] = 131;
            } catch (NoSuchFieldError unused131) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_LONG.ordinal()] = 132;
            } catch (NoSuchFieldError unused132) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_DOUBLE.ordinal()] = 133;
            } catch (NoSuchFieldError unused133) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_LONG.ordinal()] = 134;
            } catch (NoSuchFieldError unused134) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_BYTE.ordinal()] = 135;
            } catch (NoSuchFieldError unused135) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_CHAR.ordinal()] = 136;
            } catch (NoSuchFieldError unused136) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_SHORT.ordinal()] = 137;
            } catch (NoSuchFieldError unused137) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT.ordinal()] = 138;
            } catch (NoSuchFieldError unused138) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_INT.ordinal()] = 139;
            } catch (NoSuchFieldError unused139) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT.ordinal()] = 140;
            } catch (NoSuchFieldError unused140) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT.ordinal()] = 141;
            } catch (NoSuchFieldError unused141) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT.ordinal()] = 142;
            } catch (NoSuchFieldError unused142) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT.ordinal()] = 143;
            } catch (NoSuchFieldError unused143) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT.ordinal()] = 144;
            } catch (NoSuchFieldError unused144) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT.ordinal()] = 145;
            } catch (NoSuchFieldError unused145) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT.ordinal()] = 146;
            } catch (NoSuchFieldError unused146) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT.ordinal()] = 147;
            } catch (NoSuchFieldError unused147) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT.ordinal()] = 148;
            } catch (NoSuchFieldError unused148) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_LONG.ordinal()] = 149;
            } catch (NoSuchFieldError unused149) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_LONG.ordinal()] = 150;
            } catch (NoSuchFieldError unused150) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_LONG.ordinal()] = 151;
            } catch (NoSuchFieldError unused151) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_LONG.ordinal()] = 152;
            } catch (NoSuchFieldError unused152) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_LONG.ordinal()] = 153;
            } catch (NoSuchFieldError unused153) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_LONG.ordinal()] = 154;
            } catch (NoSuchFieldError unused154) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_LONG.ordinal()] = 155;
            } catch (NoSuchFieldError unused155) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_LONG.ordinal()] = 156;
            } catch (NoSuchFieldError unused156) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_LONG.ordinal()] = 157;
            } catch (NoSuchFieldError unused157) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_LONG.ordinal()] = 158;
            } catch (NoSuchFieldError unused158) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_LONG.ordinal()] = 159;
            } catch (NoSuchFieldError unused159) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_FLOAT.ordinal()] = 160;
            } catch (NoSuchFieldError unused160) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_FLOAT.ordinal()] = 161;
            } catch (NoSuchFieldError unused161) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_FLOAT.ordinal()] = 162;
            } catch (NoSuchFieldError unused162) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_FLOAT.ordinal()] = 163;
            } catch (NoSuchFieldError unused163) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_FLOAT.ordinal()] = 164;
            } catch (NoSuchFieldError unused164) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_DOUBLE.ordinal()] = 165;
            } catch (NoSuchFieldError unused165) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_DOUBLE.ordinal()] = 166;
            } catch (NoSuchFieldError unused166) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_DOUBLE.ordinal()] = 167;
            } catch (NoSuchFieldError unused167) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_DOUBLE.ordinal()] = 168;
            } catch (NoSuchFieldError unused168) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_DOUBLE.ordinal()] = 169;
            } catch (NoSuchFieldError unused169) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_2ADDR.ordinal()] = 170;
            } catch (NoSuchFieldError unused170) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_INT_2ADDR.ordinal()] = 171;
            } catch (NoSuchFieldError unused171) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_2ADDR.ordinal()] = 172;
            } catch (NoSuchFieldError unused172) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_2ADDR.ordinal()] = 173;
            } catch (NoSuchFieldError unused173) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_2ADDR.ordinal()] = 174;
            } catch (NoSuchFieldError unused174) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT_2ADDR.ordinal()] = 175;
            } catch (NoSuchFieldError unused175) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT_2ADDR.ordinal()] = 176;
            } catch (NoSuchFieldError unused176) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT_2ADDR.ordinal()] = 177;
            } catch (NoSuchFieldError unused177) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_2ADDR.ordinal()] = 178;
            } catch (NoSuchFieldError unused178) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_2ADDR.ordinal()] = 179;
            } catch (NoSuchFieldError unused179) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_2ADDR.ordinal()] = 180;
            } catch (NoSuchFieldError unused180) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_LONG_2ADDR.ordinal()] = 181;
            } catch (NoSuchFieldError unused181) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_LONG_2ADDR.ordinal()] = 182;
            } catch (NoSuchFieldError unused182) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_LONG_2ADDR.ordinal()] = 183;
            } catch (NoSuchFieldError unused183) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_LONG_2ADDR.ordinal()] = 184;
            } catch (NoSuchFieldError unused184) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_LONG_2ADDR.ordinal()] = 185;
            } catch (NoSuchFieldError unused185) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_LONG_2ADDR.ordinal()] = 186;
            } catch (NoSuchFieldError unused186) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_LONG_2ADDR.ordinal()] = 187;
            } catch (NoSuchFieldError unused187) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_LONG_2ADDR.ordinal()] = 188;
            } catch (NoSuchFieldError unused188) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_LONG_2ADDR.ordinal()] = 189;
            } catch (NoSuchFieldError unused189) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_LONG_2ADDR.ordinal()] = 190;
            } catch (NoSuchFieldError unused190) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_LONG_2ADDR.ordinal()] = 191;
            } catch (NoSuchFieldError unused191) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_FLOAT_2ADDR.ordinal()] = 192;
            } catch (NoSuchFieldError unused192) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_FLOAT_2ADDR.ordinal()] = 193;
            } catch (NoSuchFieldError unused193) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_FLOAT_2ADDR.ordinal()] = 194;
            } catch (NoSuchFieldError unused194) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_FLOAT_2ADDR.ordinal()] = 195;
            } catch (NoSuchFieldError unused195) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_FLOAT_2ADDR.ordinal()] = 196;
            } catch (NoSuchFieldError unused196) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_DOUBLE_2ADDR.ordinal()] = 197;
            } catch (NoSuchFieldError unused197) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_DOUBLE_2ADDR.ordinal()] = 198;
            } catch (NoSuchFieldError unused198) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_DOUBLE_2ADDR.ordinal()] = 199;
            } catch (NoSuchFieldError unused199) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_DOUBLE_2ADDR.ordinal()] = 200;
            } catch (NoSuchFieldError unused200) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_DOUBLE_2ADDR.ordinal()] = 201;
            } catch (NoSuchFieldError unused201) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_LIT16.ordinal()] = 202;
            } catch (NoSuchFieldError unused202) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RSUB_INT.ordinal()] = 203;
            } catch (NoSuchFieldError unused203) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_LIT16.ordinal()] = 204;
            } catch (NoSuchFieldError unused204) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_LIT16.ordinal()] = 205;
            } catch (NoSuchFieldError unused205) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_LIT16.ordinal()] = 206;
            } catch (NoSuchFieldError unused206) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_LIT16.ordinal()] = 207;
            } catch (NoSuchFieldError unused207) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_LIT16.ordinal()] = 208;
            } catch (NoSuchFieldError unused208) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_LIT16.ordinal()] = 209;
            } catch (NoSuchFieldError unused209) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_LIT8.ordinal()] = 210;
            } catch (NoSuchFieldError unused210) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RSUB_INT_LIT8.ordinal()] = 211;
            } catch (NoSuchFieldError unused211) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_LIT8.ordinal()] = 212;
            } catch (NoSuchFieldError unused212) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_LIT8.ordinal()] = 213;
            } catch (NoSuchFieldError unused213) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_LIT8.ordinal()] = 214;
            } catch (NoSuchFieldError unused214) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT_LIT8.ordinal()] = 215;
            } catch (NoSuchFieldError unused215) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_LIT8.ordinal()] = 216;
            } catch (NoSuchFieldError unused216) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_LIT8.ordinal()] = 217;
            } catch (NoSuchFieldError unused217) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_LIT8.ordinal()] = 218;
            } catch (NoSuchFieldError unused218) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT_LIT8.ordinal()] = 219;
            } catch (NoSuchFieldError unused219) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT_LIT8.ordinal()] = 220;
            } catch (NoSuchFieldError unused220) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_VOLATILE.ordinal()] = 221;
            } catch (NoSuchFieldError unused221) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_VOLATILE.ordinal()] = 222;
            } catch (NoSuchFieldError unused222) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_VOLATILE.ordinal()] = 223;
            } catch (NoSuchFieldError unused223) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_VOLATILE.ordinal()] = 224;
            } catch (NoSuchFieldError unused224) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_OBJECT_VOLATILE.ordinal()] = 225;
            } catch (NoSuchFieldError unused225) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_WIDE_VOLATILE.ordinal()] = 226;
            } catch (NoSuchFieldError unused226) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_WIDE_VOLATILE.ordinal()] = 227;
            } catch (NoSuchFieldError unused227) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_WIDE_VOLATILE.ordinal()] = 228;
            } catch (NoSuchFieldError unused228) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_WIDE_VOLATILE.ordinal()] = 229;
            } catch (NoSuchFieldError unused229) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.THROW_VERIFICATION_ERROR.ordinal()] = 230;
            } catch (NoSuchFieldError unused230) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.EXECUTE_INLINE.ordinal()] = 231;
            } catch (NoSuchFieldError unused231) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.EXECUTE_INLINE_RANGE.ordinal()] = 232;
            } catch (NoSuchFieldError unused232) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_DIRECT_EMPTY.ordinal()] = 233;
            } catch (NoSuchFieldError unused233) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_OBJECT_INIT_RANGE.ordinal()] = 234;
            } catch (NoSuchFieldError unused234) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_QUICK.ordinal()] = 235;
            } catch (NoSuchFieldError unused235) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_WIDE_QUICK.ordinal()] = 236;
            } catch (NoSuchFieldError unused236) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_OBJECT_QUICK.ordinal()] = 237;
            } catch (NoSuchFieldError unused237) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_QUICK.ordinal()] = 238;
            } catch (NoSuchFieldError unused238) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_WIDE_QUICK.ordinal()] = 239;
            } catch (NoSuchFieldError unused239) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_OBJECT_QUICK.ordinal()] = 240;
            } catch (NoSuchFieldError unused240) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BOOLEAN_QUICK.ordinal()] = 241;
            } catch (NoSuchFieldError unused241) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BYTE_QUICK.ordinal()] = 242;
            } catch (NoSuchFieldError unused242) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_CHAR_QUICK.ordinal()] = 243;
            } catch (NoSuchFieldError unused243) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_SHORT_QUICK.ordinal()] = 244;
            } catch (NoSuchFieldError unused244) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BOOLEAN_QUICK.ordinal()] = 245;
            } catch (NoSuchFieldError unused245) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BYTE_QUICK.ordinal()] = 246;
            } catch (NoSuchFieldError unused246) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_CHAR_QUICK.ordinal()] = 247;
            } catch (NoSuchFieldError unused247) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_SHORT_QUICK.ordinal()] = 248;
            } catch (NoSuchFieldError unused248) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL_QUICK.ordinal()] = 249;
            } catch (NoSuchFieldError unused249) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER_QUICK.ordinal()] = 250;
            } catch (NoSuchFieldError unused250) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL_QUICK_RANGE.ordinal()] = 251;
            } catch (NoSuchFieldError unused251) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER_QUICK_RANGE.ordinal()] = 252;
            } catch (NoSuchFieldError unused252) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_OBJECT_VOLATILE.ordinal()] = 253;
            } catch (NoSuchFieldError unused253) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_OBJECT_VOLATILE.ordinal()] = 254;
            } catch (NoSuchFieldError unused254) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_OBJECT_VOLATILE.ordinal()] = 255;
            } catch (NoSuchFieldError unused255) {
            }
            int[] iArr2 = new int[Format.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Format = iArr2;
            try {
                iArr2[Format.Format10x.ordinal()] = 1;
            } catch (NoSuchFieldError unused256) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21c.ordinal()] = 2;
            } catch (NoSuchFieldError unused257) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22c.ordinal()] = 3;
            } catch (NoSuchFieldError unused258) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35c.ordinal()] = 4;
            } catch (NoSuchFieldError unused259) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rc.ordinal()] = 5;
            } catch (NoSuchFieldError unused260) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22cs.ordinal()] = 6;
            } catch (NoSuchFieldError unused261) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35mi.ordinal()] = 7;
            } catch (NoSuchFieldError unused262) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35ms.ordinal()] = 8;
            } catch (NoSuchFieldError unused263) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rmi.ordinal()] = 9;
            } catch (NoSuchFieldError unused264) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rms.ordinal()] = 10;
            } catch (NoSuchFieldError unused265) {
            }
        }
    }

    private void analyzeMove(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, analyzedInstruction.getPreInstructionRegisterType(((TwoRegisterInstruction) analyzedInstruction.instruction).getRegisterB()));
    }

    private void analyzeMoveResult(@Nonnull AnalyzedInstruction analyzedInstruction) {
        RegisterType registerType;
        AnalyzedInstruction analyzedInstructionValueAt = analyzedInstruction.instructionIndex > 0 ? this.analyzedInstructions.valueAt(analyzedInstruction.instructionIndex - 1) : null;
        if (analyzedInstructionValueAt == null || !analyzedInstructionValueAt.instruction.getOpcode().setsResult()) {
            throw new AnalysisException(analyzedInstruction.instruction.getOpcode().name + " must occur after an invoke-*/fill-new-array instruction", new Object[0]);
        }
        Reference reference = ((ReferenceInstruction) analyzedInstructionValueAt.instruction).getReference();
        if (reference instanceof MethodReference) {
            registerType = RegisterType.getRegisterType(this.classPath, ((MethodReference) reference).getReturnType());
        } else {
            registerType = RegisterType.getRegisterType(this.classPath, (TypeReference) reference);
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeMoveException(@Nonnull AnalyzedInstruction analyzedInstruction) {
        int instructionAddress = getInstructionAddress(analyzedInstruction);
        RegisterType registerType = RegisterType.UNKNOWN_TYPE;
        Iterator<? extends TryBlock<? extends ExceptionHandler>> it = this.methodImpl.getTryBlocks().iterator();
        while (it.hasNext()) {
            Iterator it2 = it.next().getExceptionHandlers().iterator();
            while (it2.hasNext()) {
                ExceptionHandler exceptionHandler = (ExceptionHandler) it2.next();
                if (exceptionHandler.getHandlerCodeAddress() == instructionAddress) {
                    String exceptionType = exceptionHandler.getExceptionType();
                    if (exceptionType == null) {
                        registerType = RegisterType.getRegisterType((byte) 18, this.classPath.getClass("Ljava/lang/Throwable;"));
                    } else {
                        registerType = RegisterType.getRegisterType((byte) 18, this.classPath.getClass(exceptionType)).merge(registerType);
                    }
                }
            }
        }
        if (registerType.category == 0) {
            throw new AnalysisException("move-exception must be the first instruction in an exception handler block", new Object[0]);
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeOdexReturnVoid(AnalyzedInstruction analyzedInstruction) {
        analyzeOdexReturnVoid(analyzedInstruction, true);
    }

    private void analyzeOdexReturnVoid(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        analyzedInstruction.setDeodexedInstruction(new ImmutableInstruction10x(Opcode.RETURN_VOID));
        if (z) {
            analyzeInstruction(analyzedInstruction);
        }
    }

    private void analyzeConst(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterTypeForLiteral(((NarrowLiteralInstruction) analyzedInstruction.instruction).getNarrowLiteral()));
    }

    private void analyzeWideConst(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.LONG_LO_TYPE);
    }

    private void analyzeConstString(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType((byte) 18, this.classPath.getClass("Ljava/lang/String;")));
    }

    private void analyzeConstClass(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType((byte) 18, this.classPath.getClass("Ljava/lang/Class;")));
    }

    private void analyzeCheckCast(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType(this.classPath, (TypeReference) ((ReferenceInstruction) analyzedInstruction.instruction).getReference()));
    }

    public static boolean isNotWideningConversion(RegisterType registerType, RegisterType registerType2) {
        if (registerType.type != null && registerType2.type != null) {
            if (registerType.type.isInterface()) {
                return registerType2.type.implementsInterface(registerType.type.getType());
            }
            TypeProto commonSuperclass = registerType2.type.getCommonSuperclass(registerType.type);
            if (!commonSuperclass.getType().equals(registerType.type.getType()) && commonSuperclass.getType().equals(registerType2.type.getType())) {
                return false;
            }
        }
        return true;
    }

    static boolean canPropagateTypeAfterInstanceOf(AnalyzedInstruction analyzedInstruction, AnalyzedInstruction analyzedInstruction2, ClassPath classPath) {
        if (classPath.isArt() && ((Instruction21t) analyzedInstruction2.instruction).getRegisterA() == analyzedInstruction.getDestinationRegister()) {
            RegisterType registerType = RegisterType.getRegisterType(classPath, (TypeReference) ((Instruction22c) analyzedInstruction.getInstruction()).getReference());
            try {
                if (registerType.type != null && !registerType.type.isInterface()) {
                    return isNotWideningConversion(analyzedInstruction2.getPreInstructionRegisterType(((TwoRegisterInstruction) analyzedInstruction.getInstruction()).getRegisterB()), registerType);
                }
            } catch (UnresolvedClassException unused) {
            }
        }
        return false;
    }

    private void analyzeIfEqzNez(@Nonnull AnalyzedInstruction analyzedInstruction) {
        if (this.classPath.isArt() && analyzedInstruction.getInstructionIndex() > 0 && analyzedInstruction.getPredecessorCount() == 1) {
            AnalyzedInstruction analyzedInstructionFirst = analyzedInstruction.getPredecessors().first();
            if (analyzedInstructionFirst.instruction.getOpcode() == Opcode.INSTANCE_OF) {
                AnalyzedInstruction analyzedInstructionValueAt = this.analyzedInstructions.valueAt(analyzedInstruction.getInstructionIndex() + 1);
                AnalyzedInstruction analyzedInstruction2 = this.analyzedInstructions.get(getInstructionAddress(analyzedInstruction) + ((Instruction21t) analyzedInstruction.instruction).getCodeOffset());
                RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(((Instruction22c) analyzedInstructionFirst.instruction).getRegisterB());
                RegisterType registerType = RegisterType.getRegisterType(this.classPath, (TypeReference) ((Instruction22c) analyzedInstructionFirst.instruction).getReference());
                Iterator<Integer> it = analyzedInstruction.getSetRegisters().iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    if (analyzedInstruction.instruction.getOpcode() == Opcode.IF_EQZ) {
                        overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstructionValueAt, analyzedInstruction, iIntValue, registerType);
                        overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstruction2, analyzedInstruction, iIntValue, preInstructionRegisterType);
                    } else {
                        overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstructionValueAt, analyzedInstruction, iIntValue, preInstructionRegisterType);
                        overridePredecessorRegisterTypeAndPropagateChanges(analyzedInstruction2, analyzedInstruction, iIntValue, registerType);
                    }
                }
            }
        }
    }

    private void analyzeInstanceOf(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.BOOLEAN_TYPE);
    }

    private void analyzeArrayLength(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.INTEGER_TYPE);
    }

    private void analyzeNewInstance(@Nonnull AnalyzedInstruction analyzedInstruction) {
        ReferenceInstruction referenceInstruction = (ReferenceInstruction) analyzedInstruction.instruction;
        if (analyzedInstruction.getPostInstructionRegisterType(((OneRegisterInstruction) analyzedInstruction.instruction).getRegisterA()).category != 0) {
            return;
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType((byte) 16, RegisterType.getRegisterType(this.classPath, (TypeReference) referenceInstruction.getReference()).type));
    }

    private void analyzeNewArray(@Nonnull AnalyzedInstruction analyzedInstruction) {
        TypeReference typeReference = (TypeReference) ((ReferenceInstruction) analyzedInstruction.instruction).getReference();
        if (typeReference.getType().charAt(0) != '[') {
            throw new AnalysisException("new-array used with non-array type", new Object[0]);
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType(this.classPath, typeReference));
    }

    private void analyzeFloatWideCmp(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.BYTE_TYPE);
    }

    private void analyze32BitPrimitiveAget(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeAgetWide(@Nonnull AnalyzedInstruction analyzedInstruction) {
        RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(((ThreeRegisterInstruction) analyzedInstruction.instruction).getRegisterB());
        if (preInstructionRegisterType.category != 2) {
            if (preInstructionRegisterType.category != 18 || !(preInstructionRegisterType.type instanceof ArrayProto)) {
                throw new AnalysisException("aget-wide used with non-array register: %s", preInstructionRegisterType.toString());
            }
            ArrayProto arrayProto = (ArrayProto) preInstructionRegisterType.type;
            if (arrayProto.dimensions != 1) {
                throw new AnalysisException("aget-wide used with multi-dimensional array: %s", preInstructionRegisterType.toString());
            }
            char cCharAt = arrayProto.getElementType().charAt(0);
            if (cCharAt == 'J') {
                setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.LONG_LO_TYPE);
                return;
            } else {
                if (cCharAt == 'D') {
                    setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.DOUBLE_LO_TYPE);
                    return;
                }
                throw new AnalysisException("aget-wide used with narrow array: %s", preInstructionRegisterType);
            }
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.LONG_LO_TYPE);
    }

    private void analyzeAgetObject(@Nonnull AnalyzedInstruction analyzedInstruction) {
        RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(((ThreeRegisterInstruction) analyzedInstruction.instruction).getRegisterB());
        if (preInstructionRegisterType.category != 2) {
            if (preInstructionRegisterType.category != 18 || !(preInstructionRegisterType.type instanceof ArrayProto)) {
                throw new AnalysisException("aget-object used with non-array register: %s", preInstructionRegisterType.toString());
            }
            setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType((byte) 18, this.classPath.getClass(((ArrayProto) preInstructionRegisterType.type).getImmediateElementType())));
            return;
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.NULL_TYPE);
    }

    private void analyze32BitPrimitiveIgetSget(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeIgetSgetWideObject(@Nonnull AnalyzedInstruction analyzedInstruction) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, RegisterType.getRegisterType(this.classPath, ((FieldReference) ((ReferenceInstruction) analyzedInstruction.instruction).getReference()).getType()));
    }

    private void analyzeInvokeDirect(@Nonnull AnalyzedInstruction analyzedInstruction) {
        analyzeInvokeDirectCommon(analyzedInstruction, ((FiveRegisterInstruction) analyzedInstruction.instruction).getRegisterC());
    }

    private void analyzeInvokeDirectRange(@Nonnull AnalyzedInstruction analyzedInstruction) {
        analyzeInvokeDirectCommon(analyzedInstruction, ((RegisterRangeInstruction) analyzedInstruction.instruction).getStartRegister());
    }

    private void analyzeInvokeDirectCommon(@Nonnull AnalyzedInstruction analyzedInstruction, int i) {
        if (analyzedInstruction.isInvokeInit()) {
            RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(i);
            if (preInstructionRegisterType.category == 16 || preInstructionRegisterType.category == 17) {
                RegisterType registerType = RegisterType.getRegisterType((byte) 18, preInstructionRegisterType.type);
                Iterator<Integer> it = analyzedInstruction.getSetRegisters().iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    RegisterType preInstructionRegisterType2 = analyzedInstruction.getPreInstructionRegisterType(iIntValue);
                    if (preInstructionRegisterType2 == preInstructionRegisterType) {
                        setPostRegisterTypeAndPropagateChanges(analyzedInstruction, iIntValue, registerType);
                    } else {
                        setPostRegisterTypeAndPropagateChanges(analyzedInstruction, iIntValue, preInstructionRegisterType2);
                    }
                }
            }
        }
    }

    private void analyzeUnaryOp(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType) {
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeBinaryOp(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType, boolean z) {
        if (z) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) analyzedInstruction.instruction;
            RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(threeRegisterInstruction.getRegisterB());
            RegisterType preInstructionRegisterType2 = analyzedInstruction.getPreInstructionRegisterType(threeRegisterInstruction.getRegisterC());
            BitSet bitSet = BooleanCategories;
            if (bitSet.get(preInstructionRegisterType.category) && bitSet.get(preInstructionRegisterType2.category)) {
                registerType = RegisterType.BOOLEAN_TYPE;
            }
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeBinary2AddrOp(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType, boolean z) {
        if (z) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) analyzedInstruction.instruction;
            RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(twoRegisterInstruction.getRegisterA());
            RegisterType preInstructionRegisterType2 = analyzedInstruction.getPreInstructionRegisterType(twoRegisterInstruction.getRegisterB());
            BitSet bitSet = BooleanCategories;
            if (bitSet.get(preInstructionRegisterType.category) && bitSet.get(preInstructionRegisterType2.category)) {
                registerType = RegisterType.BOOLEAN_TYPE;
            }
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private void analyzeLiteralBinaryOp(@Nonnull AnalyzedInstruction analyzedInstruction, @Nonnull RegisterType registerType, boolean z) {
        int narrowLiteral;
        if (z) {
            if (BooleanCategories.get(analyzedInstruction.getPreInstructionRegisterType(((TwoRegisterInstruction) analyzedInstruction.instruction).getRegisterB()).category) && ((narrowLiteral = ((NarrowLiteralInstruction) analyzedInstruction.instruction).getNarrowLiteral()) == 0 || narrowLiteral == 1)) {
                registerType = RegisterType.BOOLEAN_TYPE;
            }
        }
        setDestinationRegisterTypeAndPropagateChanges(analyzedInstruction, registerType);
    }

    private RegisterType getDestTypeForLiteralShiftRight(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        RegisterType andCheckSourceRegister = getAndCheckSourceRegister(analyzedInstruction, ((TwoRegisterInstruction) analyzedInstruction.instruction).getRegisterB(), Primitive32BitCategories);
        long narrowLiteral = ((NarrowLiteralInstruction) analyzedInstruction.instruction).getNarrowLiteral();
        if (narrowLiteral == 0) {
            return andCheckSourceRegister;
        }
        RegisterType registerType = !z ? RegisterType.INTEGER_TYPE : andCheckSourceRegister;
        long j = narrowLiteral & 31;
        switch (andCheckSourceRegister.category) {
            case 2:
            case 3:
            case 4:
                return RegisterType.NULL_TYPE;
            case 5:
                return registerType;
            case 6:
                return RegisterType.POS_BYTE_TYPE;
            case 7:
                return (!z || j < 8) ? registerType : RegisterType.BYTE_TYPE;
            case 8:
                return j >= 8 ? RegisterType.POS_BYTE_TYPE : registerType;
            case 9:
                return j > 8 ? RegisterType.POS_BYTE_TYPE : registerType;
            case 10:
            case 11:
                if (z) {
                    if (j >= 24) {
                        return RegisterType.BYTE_TYPE;
                    }
                    return j >= 16 ? RegisterType.SHORT_TYPE : registerType;
                }
                if (j > 24) {
                    return RegisterType.POS_BYTE_TYPE;
                }
                return j >= 16 ? RegisterType.CHAR_TYPE : registerType;
            default:
                return registerType;
        }
    }

    private void analyzeExecuteInline(@Nonnull AnalyzedInstruction analyzedInstruction) {
        Opcode opcode;
        if (this.inlineResolver == null) {
            throw new AnalysisException("Cannot analyze an odexed instruction unless we are deodexing", new Object[0]);
        }
        Instruction35mi instruction35mi = (Instruction35mi) analyzedInstruction.instruction;
        Method methodResolveExecuteInline = this.inlineResolver.resolveExecuteInline(analyzedInstruction);
        int accessFlags = methodResolveExecuteInline.getAccessFlags();
        if (AccessFlags.STATIC.isSet(accessFlags)) {
            opcode = Opcode.INVOKE_STATIC;
        } else if (AccessFlags.PRIVATE.isSet(accessFlags)) {
            opcode = Opcode.INVOKE_DIRECT;
        } else {
            opcode = Opcode.INVOKE_VIRTUAL;
        }
        analyzedInstruction.setDeodexedInstruction(new ImmutableInstruction35c(opcode, instruction35mi.getRegisterCount(), instruction35mi.getRegisterC(), instruction35mi.getRegisterD(), instruction35mi.getRegisterE(), instruction35mi.getRegisterF(), instruction35mi.getRegisterG(), methodResolveExecuteInline));
        analyzeInstruction(analyzedInstruction);
    }

    private void analyzeExecuteInlineRange(@Nonnull AnalyzedInstruction analyzedInstruction) {
        Opcode opcode;
        if (this.inlineResolver == null) {
            throw new AnalysisException("Cannot analyze an odexed instruction unless we are deodexing", new Object[0]);
        }
        Instruction3rmi instruction3rmi = (Instruction3rmi) analyzedInstruction.instruction;
        Method methodResolveExecuteInline = this.inlineResolver.resolveExecuteInline(analyzedInstruction);
        int accessFlags = methodResolveExecuteInline.getAccessFlags();
        if (AccessFlags.STATIC.isSet(accessFlags)) {
            opcode = Opcode.INVOKE_STATIC_RANGE;
        } else if (AccessFlags.PRIVATE.isSet(accessFlags)) {
            opcode = Opcode.INVOKE_DIRECT_RANGE;
        } else {
            opcode = Opcode.INVOKE_VIRTUAL_RANGE;
        }
        analyzedInstruction.setDeodexedInstruction(new ImmutableInstruction3rc(opcode, instruction3rmi.getStartRegister(), instruction3rmi.getRegisterCount(), methodResolveExecuteInline));
        analyzeInstruction(analyzedInstruction);
    }

    private void analyzeInvokeDirectEmpty(@Nonnull AnalyzedInstruction analyzedInstruction) {
        analyzeInvokeDirectEmpty(analyzedInstruction, true);
    }

    private void analyzeInvokeDirectEmpty(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        Instruction35c instruction35c = (Instruction35c) analyzedInstruction.instruction;
        analyzedInstruction.setDeodexedInstruction(new ImmutableInstruction35c(Opcode.INVOKE_DIRECT, instruction35c.getRegisterCount(), instruction35c.getRegisterC(), instruction35c.getRegisterD(), instruction35c.getRegisterE(), instruction35c.getRegisterF(), instruction35c.getRegisterG(), instruction35c.getReference()));
        if (z) {
            analyzeInstruction(analyzedInstruction);
        }
    }

    private void analyzeInvokeObjectInitRange(@Nonnull AnalyzedInstruction analyzedInstruction) {
        analyzeInvokeObjectInitRange(analyzedInstruction, true);
    }

    private void analyzeInvokeObjectInitRange(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        Instruction immutableInstruction3rc;
        Instruction3rc instruction3rc = (Instruction3rc) analyzedInstruction.instruction;
        int startRegister = instruction3rc.getStartRegister();
        if (startRegister < 16) {
            immutableInstruction3rc = new ImmutableInstruction35c(Opcode.INVOKE_DIRECT, 1, startRegister, 0, 0, 0, 0, instruction3rc.getReference());
        } else {
            immutableInstruction3rc = new ImmutableInstruction3rc(Opcode.INVOKE_DIRECT_RANGE, startRegister, 1, instruction3rc.getReference());
        }
        analyzedInstruction.setDeodexedInstruction(immutableInstruction3rc);
        if (z) {
            analyzeInstruction(analyzedInstruction);
        }
    }

    private boolean analyzeIputIgetQuick(@Nonnull AnalyzedInstruction analyzedInstruction) {
        Instruction22cs instruction22cs = (Instruction22cs) analyzedInstruction.instruction;
        int fieldOffset = instruction22cs.getFieldOffset();
        RegisterType andCheckSourceRegister = getAndCheckSourceRegister(analyzedInstruction, instruction22cs.getRegisterB(), ReferenceOrUninitCategories);
        if (andCheckSourceRegister.category == 2) {
            return false;
        }
        TypeProto typeProto = andCheckSourceRegister.type;
        FieldReference fieldByOffset = this.classPath.getClass(typeProto.getType()).getFieldByOffset(fieldOffset);
        if (fieldByOffset == null) {
            throw new AnalysisException("Could not resolve the field in class %s at offset %d", andCheckSourceRegister.type.getType(), Integer.valueOf(fieldOffset));
        }
        ClassDef classDef = this.classPath.getClassDef(this.method.getDefiningClass());
        if (!TypeUtils.canAccessClass(classDef.getType(), this.classPath.getClassDef(fieldByOffset.getDefiningClass()))) {
            ClassDef classDef2 = this.classPath.getClassDef(typeProto.getType());
            while (!TypeUtils.canAccessClass(classDef.getType(), classDef2)) {
                String superclass = classDef2.getSuperclass();
                if (superclass == null) {
                    throw new ExceptionWithContext("Couldn't find accessible class while resolving field %s", fieldByOffset);
                }
                classDef2 = this.classPath.getClassDef(superclass);
            }
            FieldReference fieldByOffset2 = this.classPath.getClass(classDef2.getType()).getFieldByOffset(fieldOffset);
            if (fieldByOffset2 == null) {
                throw new ExceptionWithContext("Couldn't find accessible class while resolving field %s", fieldByOffset);
            }
            fieldByOffset = new ImmutableFieldReference(classDef2.getType(), fieldByOffset2.getName(), fieldByOffset2.getType());
        }
        analyzedInstruction.setDeodexedInstruction(new ImmutableInstruction22c(this.classPath.getFieldInstructionMapper().getAndCheckDeodexedOpcode(fieldByOffset.getType(), instruction22cs.getOpcode()), (byte) instruction22cs.getRegisterA(), (byte) instruction22cs.getRegisterB(), fieldByOffset));
        analyzeInstruction(analyzedInstruction);
        return true;
    }

    private boolean analyzeInvokeVirtual(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        MethodReference methodReference;
        Instruction immutableInstruction35c;
        if (!this.normalizeVirtualMethods) {
            return true;
        }
        if (z) {
            methodReference = (MethodReference) ((Instruction3rc) analyzedInstruction.instruction).getReference();
        } else {
            methodReference = (MethodReference) ((Instruction35c) analyzedInstruction.instruction).getReference();
        }
        MethodReference methodReferenceNormalizeMethodReference = normalizeMethodReference(methodReference);
        if (methodReferenceNormalizeMethodReference != null && !methodReferenceNormalizeMethodReference.equals(methodReference)) {
            if (z) {
                Instruction3rc instruction3rc = (Instruction3rc) analyzedInstruction.instruction;
                immutableInstruction35c = new ImmutableInstruction3rc(instruction3rc.getOpcode(), instruction3rc.getStartRegister(), instruction3rc.getRegisterCount(), methodReferenceNormalizeMethodReference);
            } else {
                Instruction35c instruction35c = (Instruction35c) analyzedInstruction.instruction;
                immutableInstruction35c = new ImmutableInstruction35c(instruction35c.getOpcode(), instruction35c.getRegisterCount(), instruction35c.getRegisterC(), instruction35c.getRegisterD(), instruction35c.getRegisterE(), instruction35c.getRegisterF(), instruction35c.getRegisterG(), methodReferenceNormalizeMethodReference);
            }
            analyzedInstruction.setDeodexedInstruction(immutableInstruction35c);
        }
        return true;
    }

    private boolean analyzeInvokeVirtualQuick(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z, boolean z2) {
        int vtableIndex;
        int registerC;
        MethodReference methodByVtableIndex;
        Opcode opcode;
        Instruction immutableInstruction35c;
        Opcode opcode2;
        MethodReference methodReferenceNormalizeMethodReference;
        if (z2) {
            Instruction3rms instruction3rms = (Instruction3rms) analyzedInstruction.instruction;
            vtableIndex = instruction3rms.getVtableIndex();
            registerC = instruction3rms.getStartRegister();
        } else {
            Instruction35ms instruction35ms = (Instruction35ms) analyzedInstruction.instruction;
            vtableIndex = instruction35ms.getVtableIndex();
            registerC = instruction35ms.getRegisterC();
        }
        RegisterType andCheckSourceRegister = getAndCheckSourceRegister(analyzedInstruction, registerC, ReferenceOrUninitCategories);
        TypeProto typeProto = andCheckSourceRegister.type;
        if (andCheckSourceRegister.category == 2) {
            return false;
        }
        if (z) {
            TypeProto typeProto2 = this.classPath.getClass(this.method.getDefiningClass());
            String superclass = typeProto2.getSuperclass();
            if (superclass != null) {
                typeProto2 = this.classPath.getClass(superclass);
            }
            methodByVtableIndex = typeProto2.getMethodByVtableIndex(vtableIndex);
        } else {
            methodByVtableIndex = typeProto.getMethodByVtableIndex(vtableIndex);
        }
        if (methodByVtableIndex == null) {
            throw new AnalysisException("Could not resolve the method in class %s at index %d", andCheckSourceRegister.type.getType(), Integer.valueOf(vtableIndex));
        }
        ClassDef classDef = this.classPath.getClassDef(this.method.getDefiningClass());
        if (this.classPath.getClass(methodByVtableIndex.getDefiningClass()).isInterface()) {
            methodByVtableIndex = new ReparentedMethodReference(methodByVtableIndex, typeProto.getType());
        } else if (!z && !TypeUtils.canAccessClass(classDef.getType(), this.classPath.getClassDef(methodByVtableIndex.getDefiningClass()))) {
            ClassDef classDef2 = this.classPath.getClassDef(typeProto.getType());
            while (!TypeUtils.canAccessClass(classDef.getType(), classDef2)) {
                String superclass2 = classDef2.getSuperclass();
                if (superclass2 == null) {
                    throw new ExceptionWithContext("Couldn't find accessible class while resolving method %s", methodByVtableIndex);
                }
                classDef2 = this.classPath.getClassDef(superclass2);
            }
            Method methodByVtableIndex2 = this.classPath.getClass(classDef2.getType()).getMethodByVtableIndex(vtableIndex);
            if (methodByVtableIndex2 == null) {
                throw new ExceptionWithContext("Couldn't find accessible class while resolving method %s", methodByVtableIndex);
            }
            methodByVtableIndex = new ImmutableMethodReference(classDef2.getType(), methodByVtableIndex2.getName(), methodByVtableIndex2.getParameterTypes(), methodByVtableIndex2.getReturnType());
        }
        if (this.normalizeVirtualMethods && (methodReferenceNormalizeMethodReference = normalizeMethodReference(methodByVtableIndex)) != null) {
            methodByVtableIndex = methodReferenceNormalizeMethodReference;
        }
        if (z2) {
            Instruction3rms instruction3rms2 = (Instruction3rms) analyzedInstruction.instruction;
            if (z) {
                opcode2 = Opcode.INVOKE_SUPER_RANGE;
            } else {
                opcode2 = Opcode.INVOKE_VIRTUAL_RANGE;
            }
            immutableInstruction35c = new ImmutableInstruction3rc(opcode2, instruction3rms2.getStartRegister(), instruction3rms2.getRegisterCount(), methodByVtableIndex);
        } else {
            Instruction35ms instruction35ms2 = (Instruction35ms) analyzedInstruction.instruction;
            if (z) {
                opcode = Opcode.INVOKE_SUPER;
            } else {
                opcode = Opcode.INVOKE_VIRTUAL;
            }
            immutableInstruction35c = new ImmutableInstruction35c(opcode, instruction35ms2.getRegisterCount(), instruction35ms2.getRegisterC(), instruction35ms2.getRegisterD(), instruction35ms2.getRegisterE(), instruction35ms2.getRegisterF(), instruction35ms2.getRegisterG(), methodByVtableIndex);
        }
        analyzedInstruction.setDeodexedInstruction(immutableInstruction35c);
        analyzeInstruction(analyzedInstruction);
        return true;
    }

    private boolean analyzePutGetVolatile(@Nonnull AnalyzedInstruction analyzedInstruction) {
        return analyzePutGetVolatile(analyzedInstruction, true);
    }

    private boolean analyzePutGetVolatile(@Nonnull AnalyzedInstruction analyzedInstruction, boolean z) {
        Instruction immutableInstruction22c;
        FieldReference fieldReference = (FieldReference) ((ReferenceInstruction) analyzedInstruction.instruction).getReference();
        String type = fieldReference.getType();
        Opcode opcode = analyzedInstruction.instruction.getOpcode();
        Opcode andCheckDeodexedOpcode = this.classPath.getFieldInstructionMapper().getAndCheckDeodexedOpcode(type, opcode);
        if (opcode.isStaticFieldAccessor()) {
            immutableInstruction22c = new ImmutableInstruction21c(andCheckDeodexedOpcode, ((OneRegisterInstruction) analyzedInstruction.instruction).getRegisterA(), fieldReference);
        } else {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) analyzedInstruction.instruction;
            immutableInstruction22c = new ImmutableInstruction22c(andCheckDeodexedOpcode, twoRegisterInstruction.getRegisterA(), twoRegisterInstruction.getRegisterB(), fieldReference);
        }
        analyzedInstruction.setDeodexedInstruction(immutableInstruction22c);
        if (!z) {
            return true;
        }
        analyzeInstruction(analyzedInstruction);
        return true;
    }

    @Nonnull
    private static RegisterType getAndCheckSourceRegister(@Nonnull AnalyzedInstruction analyzedInstruction, int i, BitSet bitSet) {
        RegisterType preInstructionRegisterType = analyzedInstruction.getPreInstructionRegisterType(i);
        checkRegister(preInstructionRegisterType, i, bitSet);
        BitSet bitSet2 = WideLowCategories;
        if (bitSet == bitSet2) {
            checkRegister(preInstructionRegisterType, i, bitSet2);
            checkWidePair(i, analyzedInstruction);
            int i2 = i + 1;
            checkRegister(analyzedInstruction.getPreInstructionRegisterType(i2), i2, WideHighCategories);
        }
        return preInstructionRegisterType;
    }

    private static void checkRegister(RegisterType registerType, int i, BitSet bitSet) {
        if (!bitSet.get(registerType.category)) {
            throw new AnalysisException(String.format("Invalid register type %s for register v%d.", registerType.toString(), Integer.valueOf(i)), new Object[0]);
        }
    }

    private static void checkWidePair(int i, AnalyzedInstruction analyzedInstruction) {
        if (i + 1 >= analyzedInstruction.postRegisterMap.length) {
            throw new AnalysisException(String.format("v%d cannot be used as the first register in a wide registerpair because it is the last register.", Integer.valueOf(i)), new Object[0]);
        }
    }

    @Nullable
    private MethodReference normalizeMethodReference(@Nonnull MethodReference methodReference) {
        Method methodByVtableIndex;
        TypeProto typeProto = this.classPath.getClass(methodReference.getDefiningClass());
        try {
            int iFindMethodIndexInVtable = typeProto.findMethodIndexInVtable(methodReference);
            if (iFindMethodIndexInVtable < 0) {
                return null;
            }
            ClassProto classProto = (ClassProto) this.classPath.getClass(this.method.getDefiningClass());
            Method methodByVtableIndex2 = typeProto.getMethodByVtableIndex(iFindMethodIndexInVtable);
            while (true) {
                String superclass = typeProto.getSuperclass();
                if (superclass == null || (methodByVtableIndex = (typeProto = this.classPath.getClass(superclass)).getMethodByVtableIndex(iFindMethodIndexInVtable)) == null) {
                    break;
                }
                if (!methodByVtableIndex.equals(methodByVtableIndex2) && AnalyzedMethodUtil.canAccess(classProto, methodByVtableIndex, false, false, true)) {
                    methodByVtableIndex2 = methodByVtableIndex;
                }
            }
            return methodByVtableIndex2;
        } catch (UnresolvedClassException unused) {
            return null;
        }
    }

    private static class ReparentedMethodReference extends BaseMethodReference {
        private final MethodReference baseReference;
        private final String definingClass;

        public ReparentedMethodReference(MethodReference methodReference, String str) {
            this.baseReference = methodReference;
            this.definingClass = str;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getName() {
            return this.baseReference.getName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
        @Nonnull
        public List<? extends CharSequence> getParameterTypes() {
            return this.baseReference.getParameterTypes();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
        @Nonnull
        public String getReturnType() {
            return this.baseReference.getReturnType();
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
        @Nonnull
        public String getDefiningClass() {
            return this.definingClass;
        }
    }
}
