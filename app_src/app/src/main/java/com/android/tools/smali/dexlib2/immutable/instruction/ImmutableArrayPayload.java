package com.android.tools.smali.dexlib2.immutable.instruction;

import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload;
import com.android.tools.smali.dexlib2.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableArrayPayload extends ImmutableInstruction implements ArrayPayload {
    public static final Opcode OPCODE = Opcode.ARRAY_PAYLOAD;

    @Nonnull
    protected final List<Number> arrayElements;
    protected final int elementWidth;

    public ImmutableArrayPayload(int i, @Nullable List<Number> list) {
        List listUnmodifiableList;
        super(OPCODE);
        this.elementWidth = Preconditions.checkArrayPayloadElementWidth(i);
        if (list == null) {
            listUnmodifiableList = Collections.EMPTY_LIST;
        } else {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        }
        this.arrayElements = Preconditions.checkArrayPayloadElements(i, listUnmodifiableList);
    }

    @Nonnull
    public static ImmutableArrayPayload of(ArrayPayload arrayPayload) {
        if (arrayPayload instanceof ImmutableArrayPayload) {
            return (ImmutableArrayPayload) arrayPayload;
        }
        return new ImmutableArrayPayload(arrayPayload.getElementWidth(), arrayPayload.getArrayElements());
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload
    public int getElementWidth() {
        return this.elementWidth;
    }

    @Override // com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload
    @Nonnull
    public List<Number> getArrayElements() {
        return this.arrayElements;
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction, com.android.tools.smali.dexlib2.iface.instruction.Instruction
    public int getCodeUnits() {
        return (((this.elementWidth * this.arrayElements.size()) + 1) / 2) + 4;
    }

    @Override // com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction
    public Format getFormat() {
        return OPCODE.format;
    }
}
