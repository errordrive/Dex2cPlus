package com.android.tools.smali.dexlib2.writer;

import com.android.tools.smali.util.ExceptionWithContext;
import java.io.IOException;
import java.lang.CharSequence;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DebugWriter<StringKey extends CharSequence, TypeKey extends CharSequence> {
    private static final int FIRST_SPECIAL = 10;
    private static final int LINE_BASE = -4;
    private static final int LINE_RANGE = 15;
    private int currentAddress;
    private int currentLine;

    @Nonnull
    private final StringSection<StringKey, ?> stringSection;

    @Nonnull
    private final TypeSection<StringKey, TypeKey, ?> typeSection;

    @Nonnull
    private final DexDataWriter writer;

    DebugWriter(@Nonnull StringSection<StringKey, ?> stringSection, @Nonnull TypeSection<StringKey, TypeKey, ?> typeSection, @Nonnull DexDataWriter dexDataWriter) {
        this.stringSection = stringSection;
        this.typeSection = typeSection;
        this.writer = dexDataWriter;
    }

    void reset(int i) {
        this.currentAddress = 0;
        this.currentLine = i;
    }

    public void writeStartLocal(int i, int i2, @Nullable StringKey stringkey, @Nullable TypeKey typekey, @Nullable StringKey stringkey2) throws IOException {
        int nullableItemIndex = this.stringSection.getNullableItemIndex(stringkey);
        int nullableItemIndex2 = this.typeSection.getNullableItemIndex(typekey);
        int nullableItemIndex3 = this.stringSection.getNullableItemIndex(stringkey2);
        writeAdvancePC(i);
        if (nullableItemIndex3 == -1) {
            this.writer.write(3);
            this.writer.writeUleb128(i2);
            this.writer.writeUleb128(nullableItemIndex + 1);
            this.writer.writeUleb128(nullableItemIndex2 + 1);
            return;
        }
        this.writer.write(4);
        this.writer.writeUleb128(i2);
        this.writer.writeUleb128(nullableItemIndex + 1);
        this.writer.writeUleb128(nullableItemIndex2 + 1);
        this.writer.writeUleb128(nullableItemIndex3 + 1);
    }

    public void writeEndLocal(int i, int i2) throws IOException {
        writeAdvancePC(i);
        this.writer.write(5);
        this.writer.writeUleb128(i2);
    }

    public void writeRestartLocal(int i, int i2) throws IOException {
        writeAdvancePC(i);
        this.writer.write(6);
        this.writer.writeUleb128(i2);
    }

    public void writePrologueEnd(int i) throws IOException {
        writeAdvancePC(i);
        this.writer.write(7);
    }

    public void writeEpilogueBegin(int i) throws IOException {
        writeAdvancePC(i);
        this.writer.write(8);
    }

    public void writeLineNumber(int i, int i2) throws IOException {
        int i3 = i2 - this.currentLine;
        int i4 = i - this.currentAddress;
        if (i4 < 0) {
            throw new ExceptionWithContext("debug info items must have non-decreasing code addresses", new Object[0]);
        }
        if (i3 < -4 || i3 > 10) {
            writeAdvanceLine(i2);
            i3 = 0;
        }
        if ((i3 < 2 && i4 > 16) || (i3 > 1 && i4 > 15)) {
            writeAdvancePC(i);
            i4 = 0;
        }
        writeSpecialOpcode(i3, i4);
    }

    public void writeSetSourceFile(int i, @Nullable StringKey stringkey) throws IOException {
        writeAdvancePC(i);
        this.writer.write(9);
        this.writer.writeUleb128(this.stringSection.getNullableItemIndex(stringkey) + 1);
    }

    private void writeAdvancePC(int i) throws IOException {
        int i2 = i - this.currentAddress;
        if (i2 > 0) {
            this.writer.write(1);
            this.writer.writeUleb128(i2);
            this.currentAddress = i;
        }
    }

    private void writeAdvanceLine(int i) throws IOException {
        int i2 = i - this.currentLine;
        if (i2 != 0) {
            this.writer.write(2);
            this.writer.writeSleb128(i2);
            this.currentLine = i;
        }
    }

    private void writeSpecialOpcode(int i, int i2) throws IOException {
        this.writer.write((byte) ((i2 * 15) + 10 + i + 4));
        this.currentLine += i;
        this.currentAddress += i2;
    }
}
