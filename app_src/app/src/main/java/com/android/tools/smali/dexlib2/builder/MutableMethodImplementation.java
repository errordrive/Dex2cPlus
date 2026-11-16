package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.builder.debug.BuilderEndLocal;
import com.android.tools.smali.dexlib2.builder.debug.BuilderEpilogueBegin;
import com.android.tools.smali.dexlib2.builder.debug.BuilderLineNumber;
import com.android.tools.smali.dexlib2.builder.debug.BuilderPrologueEnd;
import com.android.tools.smali.dexlib2.builder.debug.BuilderRestartLocal;
import com.android.tools.smali.dexlib2.builder.debug.BuilderSetSourceFile;
import com.android.tools.smali.dexlib2.builder.debug.BuilderStartLocal;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderArrayPayload;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction10t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction10x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction11n;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction11x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction12x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction20bc;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction20t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction21c;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction21ih;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction21lh;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction21s;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction21t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22b;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22c;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22cs;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22s;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction22x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction23x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction30t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction31c;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction31i;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction31t;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction32x;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction35c;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction35mi;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction35ms;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction3rc;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction3rmi;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction3rms;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction45cc;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction51l;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderPackedSwitchPayload;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderSparseSwitchPayload;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.debug.EndLocal;
import com.android.tools.smali.dexlib2.iface.debug.LineNumber;
import com.android.tools.smali.dexlib2.iface.debug.RestartLocal;
import com.android.tools.smali.dexlib2.iface.debug.SetSourceFile;
import com.android.tools.smali.dexlib2.iface.debug.StartLocal;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction11n;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction11x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction12x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20bc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21ih;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21lh;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21s;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22b;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22cs;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22s;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction23x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction30t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31i;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction32x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35mi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35ms;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rmi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rms;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction45cc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction51l;
import com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.SparseSwitchPayload;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MutableMethodImplementation implements MethodImplementation {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private boolean fixInstructions;
    final ArrayList<MethodLocation> instructionList;
    private final int registerCount;
    private final ArrayList<BuilderTryBlock> tryBlocks;

    private interface Task {
        void perform();
    }

    public MutableMethodImplementation(@Nonnull MethodImplementation methodImplementation) {
        int i = 0;
        this.instructionList = new ArrayList<>(Arrays.asList(new MethodLocation(null, 0, 0)));
        this.tryBlocks = new ArrayList<>();
        this.fixInstructions = true;
        this.registerCount = methodImplementation.getRegisterCount();
        Iterator<? extends Instruction> it = methodImplementation.getInstructions().iterator();
        int codeUnits = 0;
        int i2 = 0;
        while (it.hasNext()) {
            codeUnits += it.next().getCodeUnits();
            i2++;
            this.instructionList.add(new MethodLocation(null, codeUnits, i2));
        }
        final int[] iArr = new int[codeUnits + 1];
        Arrays.fill(iArr, -1);
        for (int i3 = 0; i3 < this.instructionList.size(); i3++) {
            iArr[this.instructionList.get(i3).codeAddress] = i3;
        }
        ArrayList arrayList = new ArrayList();
        for (final Instruction instruction : methodImplementation.getInstructions()) {
            final MethodLocation methodLocation = this.instructionList.get(i);
            Opcode opcode = instruction.getOpcode();
            if (opcode == Opcode.PACKED_SWITCH_PAYLOAD || opcode == Opcode.SPARSE_SWITCH_PAYLOAD) {
                arrayList.add(new Task() { // from class: com.android.tools.smali.dexlib2.builder.MutableMethodImplementation.1
                    @Override // com.android.tools.smali.dexlib2.builder.MutableMethodImplementation.Task
                    public void perform() {
                        MutableMethodImplementation.this.convertAndSetInstruction(methodLocation, iArr, instruction);
                    }
                });
            } else {
                convertAndSetInstruction(methodLocation, iArr, instruction);
            }
            i++;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Task) it2.next()).perform();
        }
        for (DebugItem debugItem : methodImplementation.getDebugItems()) {
            MethodLocation methodLocation2 = this.instructionList.get(mapCodeAddressToIndex(iArr, debugItem.getCodeAddress()));
            BuilderDebugItem builderDebugItemConvertDebugItem = convertDebugItem(debugItem);
            methodLocation2.getDebugItems().add(builderDebugItemConvertDebugItem);
            builderDebugItemConvertDebugItem.location = methodLocation2;
        }
        for (TryBlock<? extends ExceptionHandler> tryBlock : methodImplementation.getTryBlocks()) {
            Label labelNewLabel = newLabel(iArr, tryBlock.getStartCodeAddress());
            Label labelNewLabel2 = newLabel(iArr, tryBlock.getStartCodeAddress() + tryBlock.getCodeUnitCount());
            Iterator it3 = tryBlock.getExceptionHandlers().iterator();
            while (it3.hasNext()) {
                ExceptionHandler exceptionHandler = (ExceptionHandler) it3.next();
                this.tryBlocks.add(new BuilderTryBlock(labelNewLabel, labelNewLabel2, exceptionHandler.getExceptionTypeReference(), newLabel(iArr, exceptionHandler.getHandlerCodeAddress())));
            }
        }
    }

    public MutableMethodImplementation(int i) {
        this.instructionList = new ArrayList<>(Arrays.asList(new MethodLocation(null, 0, 0)));
        this.tryBlocks = new ArrayList<>();
        this.fixInstructions = true;
        this.registerCount = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<BuilderInstruction> getInstructions() {
        if (this.fixInstructions) {
            fixInstructions();
        }
        return new AbstractList<BuilderInstruction>() { // from class: com.android.tools.smali.dexlib2.builder.MutableMethodImplementation.2
            @Override // java.util.AbstractList, java.util.List
            public BuilderInstruction get(int i) {
                if (i < size()) {
                    if (MutableMethodImplementation.this.fixInstructions) {
                        MutableMethodImplementation.this.fixInstructions();
                    }
                    return MutableMethodImplementation.this.instructionList.get(i).instruction;
                }
                throw new IndexOutOfBoundsException();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                if (MutableMethodImplementation.this.fixInstructions) {
                    MutableMethodImplementation.this.fixInstructions();
                }
                return MutableMethodImplementation.this.instructionList.size() - 1;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<BuilderTryBlock> getTryBlocks() {
        if (this.fixInstructions) {
            fixInstructions();
        }
        return Collections.unmodifiableList(this.tryBlocks);
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public Iterable<? extends DebugItem> getDebugItems() {
        if (this.fixInstructions) {
            fixInstructions();
        }
        ArrayList arrayList = new ArrayList();
        for (MethodLocation methodLocation : this.instructionList) {
            if (this.fixInstructions) {
                throw new IllegalStateException("This iterator was invalidated by a change to this MutableMethodImplementation.");
            }
            arrayList.addAll(methodLocation.getDebugItems());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void addCatch(@Nullable TypeReference typeReference, @Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.tryBlocks.add(new BuilderTryBlock(label, label2, typeReference, label3));
    }

    public void addCatch(@Nullable String str, @Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.tryBlocks.add(new BuilderTryBlock(label, label2, str, label3));
    }

    public void addCatch(@Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.tryBlocks.add(new BuilderTryBlock(label, label2, label3));
    }

    public void addInstruction(int i, BuilderInstruction builderInstruction) {
        if (i >= this.instructionList.size()) {
            throw new IndexOutOfBoundsException();
        }
        if (i == this.instructionList.size() - 1) {
            addInstruction(builderInstruction);
            return;
        }
        int codeAddress = this.instructionList.get(i).getCodeAddress();
        MethodLocation methodLocation = new MethodLocation(builderInstruction, codeAddress, i);
        this.instructionList.add(i, methodLocation);
        builderInstruction.location = methodLocation;
        int codeUnits = codeAddress + builderInstruction.getCodeUnits();
        for (int i2 = i + 1; i2 < this.instructionList.size(); i2++) {
            MethodLocation methodLocation2 = this.instructionList.get(i2);
            methodLocation2.index++;
            methodLocation2.codeAddress = codeUnits;
            if (methodLocation2.instruction != null) {
                codeUnits += methodLocation2.instruction.getCodeUnits();
            }
        }
        this.fixInstructions = true;
    }

    public void addInstruction(@Nonnull BuilderInstruction builderInstruction) {
        ArrayList<MethodLocation> arrayList = this.instructionList;
        MethodLocation methodLocation = arrayList.get(arrayList.size() - 1);
        methodLocation.instruction = builderInstruction;
        builderInstruction.location = methodLocation;
        this.instructionList.add(new MethodLocation(null, methodLocation.codeAddress + builderInstruction.getCodeUnits(), this.instructionList.size()));
        this.fixInstructions = true;
    }

    public void replaceInstruction(int i, @Nonnull BuilderInstruction builderInstruction) {
        if (i >= this.instructionList.size() - 1) {
            throw new IndexOutOfBoundsException();
        }
        MethodLocation methodLocation = this.instructionList.get(i);
        builderInstruction.location = methodLocation;
        methodLocation.instruction.location = null;
        methodLocation.instruction = builderInstruction;
        int codeUnits = methodLocation.codeAddress + methodLocation.instruction.getCodeUnits();
        for (int i2 = i + 1; i2 < this.instructionList.size(); i2++) {
            MethodLocation methodLocation2 = this.instructionList.get(i2);
            methodLocation2.codeAddress = codeUnits;
            Instruction instruction = methodLocation2.getInstruction();
            if (instruction != null) {
                codeUnits += instruction.getCodeUnits();
            }
        }
        this.fixInstructions = true;
    }

    public void removeInstruction(int i) {
        if (i >= this.instructionList.size() - 1) {
            throw new IndexOutOfBoundsException();
        }
        MethodLocation methodLocation = this.instructionList.get(i);
        methodLocation.instruction = null;
        methodLocation.mergeInto(this.instructionList.get(i + 1));
        this.instructionList.remove(i);
        int codeUnits = methodLocation.codeAddress;
        while (i < this.instructionList.size()) {
            MethodLocation methodLocation2 = this.instructionList.get(i);
            methodLocation2.index = i;
            methodLocation2.codeAddress = codeUnits;
            Instruction instruction = methodLocation2.getInstruction();
            if (instruction != null) {
                codeUnits += instruction.getCodeUnits();
            }
            i++;
        }
        this.fixInstructions = true;
    }

    public void swapInstructions(int i, int i2) {
        if (i >= this.instructionList.size() - 1 || i2 >= this.instructionList.size() - 1) {
            throw new IndexOutOfBoundsException();
        }
        MethodLocation methodLocation = this.instructionList.get(i);
        MethodLocation methodLocation2 = this.instructionList.get(i2);
        methodLocation.instruction.location = methodLocation2;
        methodLocation2.instruction.location = methodLocation;
        BuilderInstruction builderInstruction = methodLocation2.instruction;
        methodLocation2.instruction = methodLocation.instruction;
        methodLocation.instruction = builderInstruction;
        if (i2 < i) {
            i2 = i;
            i = i2;
        }
        int codeUnits = methodLocation.codeAddress + methodLocation.instruction.getCodeUnits();
        for (int i3 = i + 1; i3 <= i2; i3++) {
            MethodLocation methodLocation3 = this.instructionList.get(i3);
            methodLocation3.codeAddress = codeUnits;
            BuilderInstruction builderInstruction2 = methodLocation3.instruction;
            codeUnits += methodLocation3.instruction.getCodeUnits();
        }
        this.fixInstructions = true;
    }

    @Nullable
    private BuilderInstruction getFirstNonNop(int i) {
        while (i < this.instructionList.size() - 1) {
            BuilderInstruction builderInstruction = this.instructionList.get(i).instruction;
            if (builderInstruction.getOpcode() != Opcode.NOP) {
                return builderInstruction;
            }
            i++;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixInstructions() {
        boolean z;
        BuilderInstruction builderInstruction30t;
        int i;
        HashSet hashSet = new HashSet();
        for (MethodLocation methodLocation : this.instructionList) {
            BuilderInstruction builderInstruction = methodLocation.instruction;
            if (builderInstruction != null && ((i = AnonymousClass3.$SwitchMap$com$android$tools$smali$dexlib2$Opcode[builderInstruction.getOpcode().ordinal()]) == 1 || i == 2)) {
                MethodLocation location = ((BuilderOffsetInstruction) builderInstruction).getTarget().getLocation();
                BuilderInstruction firstNonNop = location.instruction;
                if (firstNonNop == null) {
                    throw new IllegalStateException(String.format("Switch instruction at address/index 0x%x/%d points to the end of the method.", Integer.valueOf(methodLocation.codeAddress), Integer.valueOf(methodLocation.index)));
                }
                if (firstNonNop.getOpcode() == Opcode.NOP) {
                    firstNonNop = getFirstNonNop(location.index + 1);
                }
                if (firstNonNop == null || !(firstNonNop instanceof BuilderSwitchPayload)) {
                    throw new IllegalStateException(String.format("Switch instruction at address/index 0x%x/%d does not refer to a payload instruction.", Integer.valueOf(methodLocation.codeAddress), Integer.valueOf(methodLocation.index)));
                }
                if ((builderInstruction.opcode == Opcode.PACKED_SWITCH && firstNonNop.getOpcode() != Opcode.PACKED_SWITCH_PAYLOAD) || (builderInstruction.opcode == Opcode.SPARSE_SWITCH && firstNonNop.getOpcode() != Opcode.SPARSE_SWITCH_PAYLOAD)) {
                    throw new IllegalStateException(String.format("Switch instruction at address/index 0x%x/%d refers to the wrong type of payload instruction.", Integer.valueOf(methodLocation.codeAddress), Integer.valueOf(methodLocation.index)));
                }
                if (!hashSet.add(location)) {
                    throw new IllegalStateException("Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)");
                }
                ((BuilderSwitchPayload) firstNonNop).referrer = methodLocation;
            }
        }
        do {
            int i2 = 0;
            z = false;
            while (i2 < this.instructionList.size()) {
                MethodLocation methodLocation2 = this.instructionList.get(i2);
                BuilderInstruction builderInstruction2 = methodLocation2.instruction;
                if (builderInstruction2 != null) {
                    int i3 = AnonymousClass3.$SwitchMap$com$android$tools$smali$dexlib2$Opcode[builderInstruction2.getOpcode().ordinal()];
                    if (i3 == 3) {
                        BuilderOffsetInstruction builderOffsetInstruction = (BuilderOffsetInstruction) builderInstruction2;
                        int iInternalGetCodeOffset = builderOffsetInstruction.internalGetCodeOffset();
                        if (iInternalGetCodeOffset < -128 || iInternalGetCodeOffset > 127) {
                            if (iInternalGetCodeOffset < -32768 || iInternalGetCodeOffset > 32767) {
                                builderInstruction30t = new BuilderInstruction30t(Opcode.GOTO_32, builderOffsetInstruction.getTarget());
                            } else {
                                builderInstruction30t = new BuilderInstruction20t(Opcode.GOTO_16, builderOffsetInstruction.getTarget());
                            }
                            replaceInstruction(methodLocation2.index, builderInstruction30t);
                            z = true;
                        }
                    } else if (i3 == 4) {
                        BuilderOffsetInstruction builderOffsetInstruction2 = (BuilderOffsetInstruction) builderInstruction2;
                        int iInternalGetCodeOffset2 = builderOffsetInstruction2.internalGetCodeOffset();
                        if (iInternalGetCodeOffset2 < -32768 || iInternalGetCodeOffset2 > 32767) {
                            replaceInstruction(methodLocation2.index, new BuilderInstruction30t(Opcode.GOTO_32, builderOffsetInstruction2.getTarget()));
                            z = true;
                        }
                    } else {
                        if (i3 == 5 || i3 == 6) {
                            if (((BuilderSwitchPayload) builderInstruction2).referrer == null) {
                                removeInstruction(i2);
                            }
                            i2--;
                            z = true;
                        } else if (i3 != 7) {
                        }
                        if ((methodLocation2.codeAddress & 1) != 0) {
                            int i4 = methodLocation2.index - 1;
                            if (this.instructionList.get(i4).instruction.getOpcode() == Opcode.NOP) {
                                removeInstruction(i4);
                                i2--;
                            } else {
                                addInstruction(methodLocation2.index, new BuilderInstruction10x(Opcode.NOP));
                                i2++;
                            }
                            z = true;
                        }
                    }
                }
                i2++;
            }
        } while (z);
        this.fixInstructions = false;
    }

    private int mapCodeAddressToIndex(@Nonnull int[] iArr, int i) {
        while (true) {
            if (i >= iArr.length) {
                i = iArr.length - 1;
            }
            int i2 = iArr[i];
            if (i2 >= 0) {
                return i2;
            }
            i--;
        }
    }

    private int mapCodeAddressToIndex(int i) {
        int size = (int) (i / 1.9f);
        if (size >= this.instructionList.size()) {
            size = this.instructionList.size() - 1;
        }
        MethodLocation methodLocation = this.instructionList.get(size);
        if (methodLocation.codeAddress == i) {
            return size;
        }
        if (methodLocation.codeAddress > i) {
            do {
                size--;
            } while (this.instructionList.get(size).codeAddress > i);
            return size;
        }
        while (true) {
            int i2 = size + 1;
            if (i2 >= this.instructionList.size() || this.instructionList.get(i2).codeAddress > i) {
                break;
            }
            size = i2;
        }
        return size;
    }

    @Nonnull
    public Label newLabelForAddress(int i) {
        if (i >= 0) {
            ArrayList<MethodLocation> arrayList = this.instructionList;
            if (i <= arrayList.get(arrayList.size() - 1).codeAddress) {
                return this.instructionList.get(mapCodeAddressToIndex(i)).addNewLabel();
            }
        }
        throw new IndexOutOfBoundsException(String.format("codeAddress %d out of bounds", Integer.valueOf(i)));
    }

    @Nonnull
    public Label newLabelForIndex(int i) {
        if (i < 0 || i >= this.instructionList.size()) {
            throw new IndexOutOfBoundsException(String.format("instruction index %d out of bounds", Integer.valueOf(i)));
        }
        return this.instructionList.get(i).addNewLabel();
    }

    @Nonnull
    private Label newLabel(@Nonnull int[] iArr, int i) {
        return this.instructionList.get(mapCodeAddressToIndex(iArr, i)).addNewLabel();
    }

    private static class SwitchPayloadReferenceLabel extends Label {

        @Nonnull
        public MethodLocation switchLocation;

        private SwitchPayloadReferenceLabel() {
        }
    }

    @Nonnull
    public Label newSwitchPayloadReferenceLabel(@Nonnull MethodLocation methodLocation, @Nonnull int[] iArr, int i) {
        MethodLocation methodLocation2 = this.instructionList.get(mapCodeAddressToIndex(iArr, i));
        SwitchPayloadReferenceLabel switchPayloadReferenceLabel = new SwitchPayloadReferenceLabel();
        switchPayloadReferenceLabel.switchLocation = methodLocation;
        methodLocation2.getLabels().add(switchPayloadReferenceLabel);
        return switchPayloadReferenceLabel;
    }

    private void setInstruction(@Nonnull MethodLocation methodLocation, @Nonnull BuilderInstruction builderInstruction) {
        methodLocation.instruction = builderInstruction;
        builderInstruction.location = methodLocation;
    }

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.builder.MutableMethodImplementation$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Format;
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Opcode;

        static {
            int[] iArr = new int[Format.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Format = iArr;
            try {
                iArr[Format.Format10t.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format10x.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format11n.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format11x.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format12x.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format20bc.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format20t.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21c.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21ih.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21lh.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21s.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21t.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22b.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22c.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22cs.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22s.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22x.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format23x.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format30t.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31c.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31i.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31t.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format32x.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35c.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35mi.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35ms.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rc.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rmi.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rms.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format45cc.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format51l.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.PackedSwitchPayload.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.SparseSwitchPayload.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.ArrayPayload.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            int[] iArr2 = new int[Opcode.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Opcode = iArr2;
            try {
                iArr2[Opcode.SPARSE_SWITCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.PACKED_SWITCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO.ordinal()] = 3;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO_16.ordinal()] = 4;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPARSE_SWITCH_PAYLOAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.PACKED_SWITCH_PAYLOAD.ordinal()] = 6;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ARRAY_PAYLOAD.ordinal()] = 7;
            } catch (NoSuchFieldError unused42) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void convertAndSetInstruction(@Nonnull MethodLocation methodLocation, int[] iArr, @Nonnull Instruction instruction) {
        switch (AnonymousClass3.$SwitchMap$com$android$tools$smali$dexlib2$Format[instruction.getOpcode().format.ordinal()]) {
            case 1:
                setInstruction(methodLocation, newBuilderInstruction10t(methodLocation.codeAddress, iArr, (Instruction10t) instruction));
                return;
            case 2:
                setInstruction(methodLocation, newBuilderInstruction10x((Instruction10x) instruction));
                return;
            case 3:
                setInstruction(methodLocation, newBuilderInstruction11n((Instruction11n) instruction));
                return;
            case 4:
                setInstruction(methodLocation, newBuilderInstruction11x((Instruction11x) instruction));
                return;
            case 5:
                setInstruction(methodLocation, newBuilderInstruction12x((Instruction12x) instruction));
                return;
            case 6:
                setInstruction(methodLocation, newBuilderInstruction20bc((Instruction20bc) instruction));
                return;
            case 7:
                setInstruction(methodLocation, newBuilderInstruction20t(methodLocation.codeAddress, iArr, (Instruction20t) instruction));
                return;
            case 8:
                setInstruction(methodLocation, newBuilderInstruction21c((Instruction21c) instruction));
                return;
            case 9:
                setInstruction(methodLocation, newBuilderInstruction21ih((Instruction21ih) instruction));
                return;
            case 10:
                setInstruction(methodLocation, newBuilderInstruction21lh((Instruction21lh) instruction));
                return;
            case 11:
                setInstruction(methodLocation, newBuilderInstruction21s((Instruction21s) instruction));
                return;
            case 12:
                setInstruction(methodLocation, newBuilderInstruction21t(methodLocation.codeAddress, iArr, (Instruction21t) instruction));
                return;
            case 13:
                setInstruction(methodLocation, newBuilderInstruction22b((Instruction22b) instruction));
                return;
            case 14:
                setInstruction(methodLocation, newBuilderInstruction22c((Instruction22c) instruction));
                return;
            case 15:
                setInstruction(methodLocation, newBuilderInstruction22cs((Instruction22cs) instruction));
                return;
            case 16:
                setInstruction(methodLocation, newBuilderInstruction22s((Instruction22s) instruction));
                return;
            case 17:
                setInstruction(methodLocation, newBuilderInstruction22t(methodLocation.codeAddress, iArr, (Instruction22t) instruction));
                return;
            case 18:
                setInstruction(methodLocation, newBuilderInstruction22x((Instruction22x) instruction));
                return;
            case 19:
                setInstruction(methodLocation, newBuilderInstruction23x((Instruction23x) instruction));
                return;
            case 20:
                setInstruction(methodLocation, newBuilderInstruction30t(methodLocation.codeAddress, iArr, (Instruction30t) instruction));
                return;
            case 21:
                setInstruction(methodLocation, newBuilderInstruction31c((Instruction31c) instruction));
                return;
            case 22:
                setInstruction(methodLocation, newBuilderInstruction31i((Instruction31i) instruction));
                return;
            case 23:
                setInstruction(methodLocation, newBuilderInstruction31t(methodLocation, iArr, (Instruction31t) instruction));
                return;
            case 24:
                setInstruction(methodLocation, newBuilderInstruction32x((Instruction32x) instruction));
                return;
            case 25:
                setInstruction(methodLocation, newBuilderInstruction35c((Instruction35c) instruction));
                return;
            case 26:
                setInstruction(methodLocation, newBuilderInstruction35mi((Instruction35mi) instruction));
                return;
            case 27:
                setInstruction(methodLocation, newBuilderInstruction35ms((Instruction35ms) instruction));
                return;
            case 28:
                setInstruction(methodLocation, newBuilderInstruction3rc((Instruction3rc) instruction));
                return;
            case 29:
                setInstruction(methodLocation, newBuilderInstruction3rmi((Instruction3rmi) instruction));
                return;
            case 30:
                setInstruction(methodLocation, newBuilderInstruction3rms((Instruction3rms) instruction));
                return;
            case 31:
                setInstruction(methodLocation, newBuilderInstruction45cc((Instruction45cc) instruction));
                return;
            case 32:
                setInstruction(methodLocation, newBuilderInstruction51l((Instruction51l) instruction));
                return;
            case 33:
                setInstruction(methodLocation, newBuilderPackedSwitchPayload(methodLocation, iArr, (PackedSwitchPayload) instruction));
                return;
            case 34:
                setInstruction(methodLocation, newBuilderSparseSwitchPayload(methodLocation, iArr, (SparseSwitchPayload) instruction));
                return;
            case 35:
                setInstruction(methodLocation, newBuilderArrayPayload((ArrayPayload) instruction));
                return;
            default:
                throw new ExceptionWithContext("Instruction format %s not supported", instruction.getOpcode().format);
        }
    }

    @Nonnull
    private BuilderInstruction10t newBuilderInstruction10t(int i, int[] iArr, @Nonnull Instruction10t instruction10t) {
        return new BuilderInstruction10t(instruction10t.getOpcode(), newLabel(iArr, i + instruction10t.getCodeOffset()));
    }

    @Nonnull
    private BuilderInstruction10x newBuilderInstruction10x(@Nonnull Instruction10x instruction10x) {
        return new BuilderInstruction10x(instruction10x.getOpcode());
    }

    @Nonnull
    private BuilderInstruction11n newBuilderInstruction11n(@Nonnull Instruction11n instruction11n) {
        return new BuilderInstruction11n(instruction11n.getOpcode(), instruction11n.getRegisterA(), instruction11n.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction11x newBuilderInstruction11x(@Nonnull Instruction11x instruction11x) {
        return new BuilderInstruction11x(instruction11x.getOpcode(), instruction11x.getRegisterA());
    }

    @Nonnull
    private BuilderInstruction12x newBuilderInstruction12x(@Nonnull Instruction12x instruction12x) {
        return new BuilderInstruction12x(instruction12x.getOpcode(), instruction12x.getRegisterA(), instruction12x.getRegisterB());
    }

    @Nonnull
    private BuilderInstruction20bc newBuilderInstruction20bc(@Nonnull Instruction20bc instruction20bc) {
        return new BuilderInstruction20bc(instruction20bc.getOpcode(), instruction20bc.getVerificationError(), instruction20bc.getReference());
    }

    @Nonnull
    private BuilderInstruction20t newBuilderInstruction20t(int i, int[] iArr, @Nonnull Instruction20t instruction20t) {
        return new BuilderInstruction20t(instruction20t.getOpcode(), newLabel(iArr, i + instruction20t.getCodeOffset()));
    }

    @Nonnull
    private BuilderInstruction21c newBuilderInstruction21c(@Nonnull Instruction21c instruction21c) {
        return new BuilderInstruction21c(instruction21c.getOpcode(), instruction21c.getRegisterA(), instruction21c.getReference());
    }

    @Nonnull
    private BuilderInstruction21ih newBuilderInstruction21ih(@Nonnull Instruction21ih instruction21ih) {
        return new BuilderInstruction21ih(instruction21ih.getOpcode(), instruction21ih.getRegisterA(), instruction21ih.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction21lh newBuilderInstruction21lh(@Nonnull Instruction21lh instruction21lh) {
        return new BuilderInstruction21lh(instruction21lh.getOpcode(), instruction21lh.getRegisterA(), instruction21lh.getWideLiteral());
    }

    @Nonnull
    private BuilderInstruction21s newBuilderInstruction21s(@Nonnull Instruction21s instruction21s) {
        return new BuilderInstruction21s(instruction21s.getOpcode(), instruction21s.getRegisterA(), instruction21s.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction21t newBuilderInstruction21t(int i, int[] iArr, @Nonnull Instruction21t instruction21t) {
        return new BuilderInstruction21t(instruction21t.getOpcode(), instruction21t.getRegisterA(), newLabel(iArr, i + instruction21t.getCodeOffset()));
    }

    @Nonnull
    private BuilderInstruction22b newBuilderInstruction22b(@Nonnull Instruction22b instruction22b) {
        return new BuilderInstruction22b(instruction22b.getOpcode(), instruction22b.getRegisterA(), instruction22b.getRegisterB(), instruction22b.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction22c newBuilderInstruction22c(@Nonnull Instruction22c instruction22c) {
        return new BuilderInstruction22c(instruction22c.getOpcode(), instruction22c.getRegisterA(), instruction22c.getRegisterB(), instruction22c.getReference());
    }

    @Nonnull
    private BuilderInstruction22cs newBuilderInstruction22cs(@Nonnull Instruction22cs instruction22cs) {
        return new BuilderInstruction22cs(instruction22cs.getOpcode(), instruction22cs.getRegisterA(), instruction22cs.getRegisterB(), instruction22cs.getFieldOffset());
    }

    @Nonnull
    private BuilderInstruction22s newBuilderInstruction22s(@Nonnull Instruction22s instruction22s) {
        return new BuilderInstruction22s(instruction22s.getOpcode(), instruction22s.getRegisterA(), instruction22s.getRegisterB(), instruction22s.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction22t newBuilderInstruction22t(int i, int[] iArr, @Nonnull Instruction22t instruction22t) {
        return new BuilderInstruction22t(instruction22t.getOpcode(), instruction22t.getRegisterA(), instruction22t.getRegisterB(), newLabel(iArr, i + instruction22t.getCodeOffset()));
    }

    @Nonnull
    private BuilderInstruction22x newBuilderInstruction22x(@Nonnull Instruction22x instruction22x) {
        return new BuilderInstruction22x(instruction22x.getOpcode(), instruction22x.getRegisterA(), instruction22x.getRegisterB());
    }

    @Nonnull
    private BuilderInstruction23x newBuilderInstruction23x(@Nonnull Instruction23x instruction23x) {
        return new BuilderInstruction23x(instruction23x.getOpcode(), instruction23x.getRegisterA(), instruction23x.getRegisterB(), instruction23x.getRegisterC());
    }

    @Nonnull
    private BuilderInstruction30t newBuilderInstruction30t(int i, int[] iArr, @Nonnull Instruction30t instruction30t) {
        return new BuilderInstruction30t(instruction30t.getOpcode(), newLabel(iArr, i + instruction30t.getCodeOffset()));
    }

    @Nonnull
    private BuilderInstruction31c newBuilderInstruction31c(@Nonnull Instruction31c instruction31c) {
        return new BuilderInstruction31c(instruction31c.getOpcode(), instruction31c.getRegisterA(), instruction31c.getReference());
    }

    @Nonnull
    private BuilderInstruction31i newBuilderInstruction31i(@Nonnull Instruction31i instruction31i) {
        return new BuilderInstruction31i(instruction31i.getOpcode(), instruction31i.getRegisterA(), instruction31i.getNarrowLiteral());
    }

    @Nonnull
    private BuilderInstruction31t newBuilderInstruction31t(@Nonnull MethodLocation methodLocation, int[] iArr, @Nonnull Instruction31t instruction31t) {
        Label labelNewLabel;
        int codeAddress = methodLocation.getCodeAddress();
        if (instruction31t.getOpcode() != Opcode.FILL_ARRAY_DATA) {
            labelNewLabel = newSwitchPayloadReferenceLabel(methodLocation, iArr, codeAddress + instruction31t.getCodeOffset());
        } else {
            labelNewLabel = newLabel(iArr, codeAddress + instruction31t.getCodeOffset());
        }
        return new BuilderInstruction31t(instruction31t.getOpcode(), instruction31t.getRegisterA(), labelNewLabel);
    }

    @Nonnull
    private BuilderInstruction32x newBuilderInstruction32x(@Nonnull Instruction32x instruction32x) {
        return new BuilderInstruction32x(instruction32x.getOpcode(), instruction32x.getRegisterA(), instruction32x.getRegisterB());
    }

    @Nonnull
    private BuilderInstruction35c newBuilderInstruction35c(@Nonnull Instruction35c instruction35c) {
        return new BuilderInstruction35c(instruction35c.getOpcode(), instruction35c.getRegisterCount(), instruction35c.getRegisterC(), instruction35c.getRegisterD(), instruction35c.getRegisterE(), instruction35c.getRegisterF(), instruction35c.getRegisterG(), instruction35c.getReference());
    }

    @Nonnull
    private BuilderInstruction35mi newBuilderInstruction35mi(@Nonnull Instruction35mi instruction35mi) {
        return new BuilderInstruction35mi(instruction35mi.getOpcode(), instruction35mi.getRegisterCount(), instruction35mi.getRegisterC(), instruction35mi.getRegisterD(), instruction35mi.getRegisterE(), instruction35mi.getRegisterF(), instruction35mi.getRegisterG(), instruction35mi.getInlineIndex());
    }

    @Nonnull
    private BuilderInstruction35ms newBuilderInstruction35ms(@Nonnull Instruction35ms instruction35ms) {
        return new BuilderInstruction35ms(instruction35ms.getOpcode(), instruction35ms.getRegisterCount(), instruction35ms.getRegisterC(), instruction35ms.getRegisterD(), instruction35ms.getRegisterE(), instruction35ms.getRegisterF(), instruction35ms.getRegisterG(), instruction35ms.getVtableIndex());
    }

    @Nonnull
    private BuilderInstruction3rc newBuilderInstruction3rc(@Nonnull Instruction3rc instruction3rc) {
        return new BuilderInstruction3rc(instruction3rc.getOpcode(), instruction3rc.getStartRegister(), instruction3rc.getRegisterCount(), instruction3rc.getReference());
    }

    @Nonnull
    private BuilderInstruction3rmi newBuilderInstruction3rmi(@Nonnull Instruction3rmi instruction3rmi) {
        return new BuilderInstruction3rmi(instruction3rmi.getOpcode(), instruction3rmi.getStartRegister(), instruction3rmi.getRegisterCount(), instruction3rmi.getInlineIndex());
    }

    @Nonnull
    private BuilderInstruction3rms newBuilderInstruction3rms(@Nonnull Instruction3rms instruction3rms) {
        return new BuilderInstruction3rms(instruction3rms.getOpcode(), instruction3rms.getStartRegister(), instruction3rms.getRegisterCount(), instruction3rms.getVtableIndex());
    }

    @Nonnull
    private BuilderInstruction45cc newBuilderInstruction45cc(@Nonnull Instruction45cc instruction45cc) {
        return new BuilderInstruction45cc(instruction45cc.getOpcode(), instruction45cc.getRegisterCount(), instruction45cc.getRegisterC(), instruction45cc.getRegisterD(), instruction45cc.getRegisterE(), instruction45cc.getRegisterF(), instruction45cc.getRegisterG(), instruction45cc.getReference(), instruction45cc.getReference2());
    }

    @Nonnull
    private BuilderInstruction51l newBuilderInstruction51l(@Nonnull Instruction51l instruction51l) {
        return new BuilderInstruction51l(instruction51l.getOpcode(), instruction51l.getRegisterA(), instruction51l.getWideLiteral());
    }

    @Nullable
    private MethodLocation findSwitchForPayload(@Nonnull MethodLocation methodLocation) {
        MethodLocation methodLocation2 = null;
        do {
            for (Label label : methodLocation.getLabels()) {
                if (label instanceof SwitchPayloadReferenceLabel) {
                    if (methodLocation2 != null) {
                        throw new IllegalStateException("Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)");
                    }
                    methodLocation2 = ((SwitchPayloadReferenceLabel) label).switchLocation;
                }
            }
            if (methodLocation.index == 0) {
                break;
            }
            methodLocation = this.instructionList.get(methodLocation.index - 1);
            if (methodLocation.instruction == null) {
                break;
            }
        } while (methodLocation.instruction.getOpcode() == Opcode.NOP);
        return methodLocation2;
    }

    @Nonnull
    private BuilderPackedSwitchPayload newBuilderPackedSwitchPayload(@Nonnull MethodLocation methodLocation, @Nonnull int[] iArr, @Nonnull PackedSwitchPayload packedSwitchPayload) {
        List<? extends SwitchElement> switchElements = packedSwitchPayload.getSwitchElements();
        if (switchElements.size() == 0) {
            return new BuilderPackedSwitchPayload(0, null);
        }
        MethodLocation methodLocationFindSwitchForPayload = findSwitchForPayload(methodLocation);
        int i = methodLocationFindSwitchForPayload == null ? 0 : methodLocationFindSwitchForPayload.codeAddress;
        ArrayList arrayList = new ArrayList();
        Iterator<? extends SwitchElement> it = switchElements.iterator();
        while (it.hasNext()) {
            arrayList.add(newLabel(iArr, it.next().getOffset() + i));
        }
        return new BuilderPackedSwitchPayload(switchElements.get(0).getKey(), arrayList);
    }

    @Nonnull
    private BuilderSparseSwitchPayload newBuilderSparseSwitchPayload(@Nonnull MethodLocation methodLocation, @Nonnull int[] iArr, @Nonnull SparseSwitchPayload sparseSwitchPayload) {
        List<? extends SwitchElement> switchElements = sparseSwitchPayload.getSwitchElements();
        if (switchElements.size() == 0) {
            return new BuilderSparseSwitchPayload(null);
        }
        MethodLocation methodLocationFindSwitchForPayload = findSwitchForPayload(methodLocation);
        int i = methodLocationFindSwitchForPayload == null ? 0 : methodLocationFindSwitchForPayload.codeAddress;
        ArrayList arrayList = new ArrayList();
        for (SwitchElement switchElement : switchElements) {
            arrayList.add(new SwitchLabelElement(switchElement.getKey(), newLabel(iArr, switchElement.getOffset() + i)));
        }
        return new BuilderSparseSwitchPayload(arrayList);
    }

    @Nonnull
    private BuilderArrayPayload newBuilderArrayPayload(@Nonnull ArrayPayload arrayPayload) {
        return new BuilderArrayPayload(arrayPayload.getElementWidth(), arrayPayload.getArrayElements());
    }

    @Nonnull
    private BuilderDebugItem convertDebugItem(@Nonnull DebugItem debugItem) {
        switch (debugItem.getDebugItemType()) {
            case 3:
                StartLocal startLocal = (StartLocal) debugItem;
                return new BuilderStartLocal(startLocal.getRegister(), startLocal.getNameReference(), startLocal.getTypeReference(), startLocal.getSignatureReference());
            case 4:
            default:
                throw new ExceptionWithContext("Invalid debug item type: " + debugItem.getDebugItemType(), new Object[0]);
            case 5:
                return new BuilderEndLocal(((EndLocal) debugItem).getRegister());
            case 6:
                return new BuilderRestartLocal(((RestartLocal) debugItem).getRegister());
            case 7:
                return new BuilderPrologueEnd();
            case 8:
                return new BuilderEpilogueBegin();
            case 9:
                return new BuilderSetSourceFile(((SetSourceFile) debugItem).getSourceFileReference());
            case 10:
                return new BuilderLineNumber(((LineNumber) debugItem).getLineNumber());
        }
    }
}
