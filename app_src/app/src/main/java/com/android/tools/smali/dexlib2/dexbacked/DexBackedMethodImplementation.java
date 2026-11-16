package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.dexbacked.instruction.DexBackedInstruction;
import com.android.tools.smali.dexlib2.dexbacked.util.DebugInfo;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.util.AlignmentUtils;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedMethodImplementation implements MethodImplementation {
    protected final int codeOffset;

    @Nonnull
    public final DexBackedDexFile dexFile;

    @Nonnull
    public final DexBackedMethod method;

    protected DexBackedMethodImplementation(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexBackedMethod dexBackedMethod, int i) {
        this.dexFile = dexBackedDexFile;
        this.method = dexBackedMethod;
        this.codeOffset = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    public int getRegisterCount() {
        return this.dexFile.getDataBuffer().readUshort(this.codeOffset);
    }

    public int getInstructionsSize() {
        return this.dexFile.getDataBuffer().readSmallUint(this.codeOffset + 12);
    }

    protected int getInstructionsStartOffset() {
        return this.codeOffset + 16;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public Iterable<? extends Instruction> getInstructions() {
        int instructionsSize = getInstructionsSize();
        final int instructionsStartOffset = getInstructionsStartOffset();
        final int i = (instructionsSize * 2) + instructionsStartOffset;
        return new Iterable<Instruction>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedMethodImplementation.1
            @Override // java.lang.Iterable
            public Iterator<Instruction> iterator() {
                return new VariableSizeLookaheadIterator<Instruction>(DexBackedMethodImplementation.this.dexFile.getDataBuffer(), instructionsStartOffset) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedMethodImplementation.1.1
                    @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                    protected /* bridge */ /* synthetic */ Instruction readNextItem(@Nonnull DexReader dexReader) {
                        return readNextItem((DexReader<? extends DexBuffer>) dexReader);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                    protected Instruction readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader) {
                        if (dexReader.getOffset() >= i) {
                            return endOfData();
                        }
                        Instruction from = DexBackedInstruction.readFrom(DexBackedMethodImplementation.this.dexFile, dexReader);
                        int offset = dexReader.getOffset();
                        if (offset > i || offset < 0) {
                            throw new ExceptionWithContext("The last instruction in method %s is truncated", DexBackedMethodImplementation.this.method);
                        }
                        return from;
                    }
                };
            }
        };
    }

    protected int getTriesSize() {
        return this.dexFile.getDataBuffer().readUshort(this.codeOffset + 6);
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<? extends DexBackedTryBlock> getTryBlocks() {
        final int triesSize = getTriesSize();
        if (triesSize > 0) {
            final int iAlignOffset = AlignmentUtils.alignOffset(getInstructionsStartOffset() + (getInstructionsSize() * 2), 4);
            final int i = (triesSize * 8) + iAlignOffset;
            return new FixedSizeList<DexBackedTryBlock>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedMethodImplementation.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
                @Nonnull
                public DexBackedTryBlock readItem(int i2) {
                    return new DexBackedTryBlock(DexBackedMethodImplementation.this.dexFile, iAlignOffset + (i2 * 8), i);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return triesSize;
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    protected int getDebugOffset() {
        return this.dexFile.getDataBuffer().readInt(this.codeOffset + 8);
    }

    @Nonnull
    private DebugInfo getDebugInfo() {
        int debugOffset = getDebugOffset();
        if (debugOffset == -1 || debugOffset == 0) {
            return DebugInfo.newOrEmpty(this.dexFile, 0, this);
        }
        if (debugOffset < 0) {
            System.err.println(String.format("%s: Invalid debug offset", this.method));
            return DebugInfo.newOrEmpty(this.dexFile, 0, this);
        }
        if (this.dexFile.getBaseDataOffset() + debugOffset >= this.dexFile.getBuffer().buf.length) {
            System.err.println(String.format("%s: Invalid debug offset", this.method));
            return DebugInfo.newOrEmpty(this.dexFile, 0, this);
        }
        return DebugInfo.newOrEmpty(this.dexFile, debugOffset, this);
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public Iterable<? extends DebugItem> getDebugItems() {
        return getDebugInfo();
    }

    @Nonnull
    public Iterator<String> getParameterNames(@Nullable DexReader dexReader) {
        return getDebugInfo().getParameterNames(dexReader);
    }

    public int getSize() {
        int instructionsStartOffset = getInstructionsStartOffset() + (getInstructionsSize() * 2);
        Iterator<? extends DexBackedTryBlock> it = getTryBlocks().iterator();
        while (it.hasNext()) {
            Iterator<? extends DexBackedExceptionHandler> it2 = it.next().getExceptionHandlers().iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            instructionsStartOffset = ((VariableSizeListIterator) it2).getReaderOffset();
        }
        return instructionsStartOffset - this.codeOffset;
    }
}
