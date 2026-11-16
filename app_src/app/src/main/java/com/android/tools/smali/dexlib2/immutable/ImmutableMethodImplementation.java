package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.immutable.debug.ImmutableDebugItem;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableMethodImplementation implements MethodImplementation {

    @Nonnull
    protected final List<? extends ImmutableDebugItem> debugItems;

    @Nonnull
    protected final List<? extends ImmutableInstruction> instructions;
    protected final int registerCount;

    @Nonnull
    protected final List<? extends ImmutableTryBlock> tryBlocks;

    public ImmutableMethodImplementation(int i, @Nullable Iterable<? extends Instruction> iterable, @Nullable List<? extends TryBlock<? extends ExceptionHandler>> list, @Nullable Iterable<? extends DebugItem> iterable2) {
        this.registerCount = i;
        this.instructions = ImmutableInstruction.immutableListOf(iterable);
        this.tryBlocks = ImmutableTryBlock.immutableListOf(list);
        this.debugItems = ImmutableDebugItem.immutableListOf(iterable2);
    }

    public ImmutableMethodImplementation(int i, @Nullable List<? extends ImmutableInstruction> list, @Nullable List<? extends ImmutableTryBlock> list2, @Nullable List<? extends ImmutableDebugItem> list3) {
        this.registerCount = i;
        this.instructions = ImmutableUtils.nullToEmptyList(list);
        this.tryBlocks = ImmutableUtils.nullToEmptyList(list2);
        this.debugItems = ImmutableUtils.nullToEmptyList(list3);
    }

    @Nullable
    public static ImmutableMethodImplementation of(@Nullable MethodImplementation methodImplementation) {
        if (methodImplementation == null) {
            return null;
        }
        if (methodImplementation instanceof ImmutableMethodImplementation) {
            return (ImmutableMethodImplementation) methodImplementation;
        }
        return new ImmutableMethodImplementation(methodImplementation.getRegisterCount(), methodImplementation.getInstructions(), methodImplementation.getTryBlocks(), methodImplementation.getDebugItems());
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<? extends ImmutableInstruction> getInstructions() {
        return this.instructions;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<? extends ImmutableTryBlock> getTryBlocks() {
        return this.tryBlocks;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MethodImplementation
    @Nonnull
    public List<? extends ImmutableDebugItem> getDebugItems() {
        return this.debugItems;
    }
}
