package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.builder.debug.BuilderEndLocal;
import com.android.tools.smali.dexlib2.builder.debug.BuilderEpilogueBegin;
import com.android.tools.smali.dexlib2.builder.debug.BuilderLineNumber;
import com.android.tools.smali.dexlib2.builder.debug.BuilderPrologueEnd;
import com.android.tools.smali.dexlib2.builder.debug.BuilderRestartLocal;
import com.android.tools.smali.dexlib2.builder.debug.BuilderSetSourceFile;
import com.android.tools.smali.dexlib2.builder.debug.BuilderStartLocal;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MethodLocation {
    int codeAddress;
    int index;

    @Nullable
    BuilderInstruction instruction;
    private final LocatedItems<BuilderDebugItem> debugItems = new LocatedDebugItems();
    private final LocatedItems<Label> labels = new LocatedLabels();

    MethodLocation(@Nullable BuilderInstruction builderInstruction, int i, int i2) {
        this.instruction = builderInstruction;
        this.codeAddress = i;
        this.index = i2;
    }

    @Nullable
    public Instruction getInstruction() {
        return this.instruction;
    }

    public int getCodeAddress() {
        return this.codeAddress;
    }

    public int getIndex() {
        return this.index;
    }

    void mergeInto(@Nonnull MethodLocation methodLocation) {
        this.labels.mergeItemsIntoNext(methodLocation, methodLocation.labels);
        this.debugItems.mergeItemsIntoNext(methodLocation, methodLocation.debugItems);
    }

    @Nonnull
    public Set<Label> getLabels() {
        return this.labels.getModifiableItems(this);
    }

    @Nonnull
    public Label addNewLabel() {
        Label label = new Label();
        getLabels().add(label);
        return label;
    }

    @Nonnull
    public Set<BuilderDebugItem> getDebugItems() {
        return this.debugItems.getModifiableItems(this);
    }

    public void addLineNumber(int i) {
        getDebugItems().add(new BuilderLineNumber(i));
    }

    public void addStartLocal(int i, @Nullable StringReference stringReference, @Nullable TypeReference typeReference, @Nullable StringReference stringReference2) {
        getDebugItems().add(new BuilderStartLocal(i, stringReference, typeReference, stringReference2));
    }

    public void addEndLocal(int i) {
        getDebugItems().add(new BuilderEndLocal(i));
    }

    public void addRestartLocal(int i) {
        getDebugItems().add(new BuilderRestartLocal(i));
    }

    public void addPrologue() {
        getDebugItems().add(new BuilderPrologueEnd());
    }

    public void addEpilogue() {
        getDebugItems().add(new BuilderEpilogueBegin());
    }

    public void addSetSourceFile(@Nullable StringReference stringReference) {
        getDebugItems().add(new BuilderSetSourceFile(stringReference));
    }
}
