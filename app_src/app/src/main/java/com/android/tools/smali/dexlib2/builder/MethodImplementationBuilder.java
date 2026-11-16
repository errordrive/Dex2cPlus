package com.android.tools.smali.dexlib2.builder;

import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import java.util.HashMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MethodImplementationBuilder {
    private MethodLocation currentLocation;

    @Nonnull
    private final MutableMethodImplementation impl;
    private final HashMap<String, Label> labels = new HashMap<>();

    public MethodImplementationBuilder(int i) {
        MutableMethodImplementation mutableMethodImplementation = new MutableMethodImplementation(i);
        this.impl = mutableMethodImplementation;
        this.currentLocation = mutableMethodImplementation.instructionList.get(0);
    }

    public MethodImplementation getMethodImplementation() {
        return this.impl;
    }

    @Nonnull
    public Label addLabel(@Nonnull String str) {
        Label label = this.labels.get(str);
        if (label != null) {
            if (label.isPlaced()) {
                throw new IllegalArgumentException("There is already a label with that name.");
            }
            this.currentLocation.getLabels().add(label);
            return label;
        }
        Label labelAddNewLabel = this.currentLocation.addNewLabel();
        this.labels.put(str, labelAddNewLabel);
        return labelAddNewLabel;
    }

    @Nonnull
    public Label getLabel(@Nonnull String str) {
        Label label = this.labels.get(str);
        if (label != null) {
            return label;
        }
        Label label2 = new Label();
        this.labels.put(str, label2);
        return label2;
    }

    public void addCatch(@Nullable TypeReference typeReference, @Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.impl.addCatch(typeReference, label, label2, label3);
    }

    public void addCatch(@Nullable String str, @Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.impl.addCatch(str, label, label2, label3);
    }

    public void addCatch(@Nonnull Label label, @Nonnull Label label2, @Nonnull Label label3) {
        this.impl.addCatch(label, label2, label3);
    }

    public void addLineNumber(int i) {
        this.currentLocation.addLineNumber(i);
    }

    public void addStartLocal(int i, @Nullable StringReference stringReference, @Nullable TypeReference typeReference, @Nullable StringReference stringReference2) {
        this.currentLocation.addStartLocal(i, stringReference, typeReference, stringReference2);
    }

    public void addEndLocal(int i) {
        this.currentLocation.addEndLocal(i);
    }

    public void addRestartLocal(int i) {
        this.currentLocation.addRestartLocal(i);
    }

    public void addPrologue() {
        this.currentLocation.addPrologue();
    }

    public void addEpilogue() {
        this.currentLocation.addEpilogue();
    }

    public void addSetSourceFile(@Nullable StringReference stringReference) {
        this.currentLocation.addSetSourceFile(stringReference);
    }

    public void addInstruction(@Nullable BuilderInstruction builderInstruction) {
        this.impl.addInstruction(builderInstruction);
        this.currentLocation = this.impl.instructionList.get(this.impl.instructionList.size() - 1);
    }
}
