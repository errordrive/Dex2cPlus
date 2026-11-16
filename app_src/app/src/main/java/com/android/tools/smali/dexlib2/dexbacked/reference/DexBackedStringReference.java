package com.android.tools.smali.dexlib2.dexbacked.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseStringReference;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedStringReference extends BaseStringReference {

    @Nonnull
    public final DexBackedDexFile dexFile;
    public final int stringIndex;

    public DexBackedStringReference(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        this.dexFile = dexBackedDexFile;
        this.stringIndex = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.StringReference
    @Nonnull
    public String getString() {
        return (String) this.dexFile.getStringSection().get(this.stringIndex);
    }

    public int getSize() {
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.dexFile.getBuffer().readSmallUint(this.dexFile.getStringSection().getOffset(this.stringIndex)));
        return dexReader.peekSmallUleb128Size() + 4 + dexReader.peekStringLength(dexReader.readSmallUleb128());
    }

    @Override // com.android.tools.smali.dexlib2.base.reference.BaseReference, com.android.tools.smali.dexlib2.iface.reference.Reference
    public void validateReference() throws Reference.InvalidReferenceException {
        int i = this.stringIndex;
        if (i < 0 || i >= this.dexFile.getStringSection().size()) {
            throw new Reference.InvalidReferenceException("string@" + this.stringIndex);
        }
    }
}
