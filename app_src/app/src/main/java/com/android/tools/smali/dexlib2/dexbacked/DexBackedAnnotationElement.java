package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.base.BaseAnnotationElement;
import com.android.tools.smali.dexlib2.dexbacked.value.DexBackedEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedAnnotationElement extends BaseAnnotationElement {

    @Nonnull
    private final DexBackedDexFile dexFile;
    public final int nameIndex;

    @Nonnull
    public final EncodedValue value;

    public DexBackedAnnotationElement(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        this.dexFile = dexBackedDexFile;
        this.nameIndex = dexReader.readSmallUleb128();
        this.value = DexBackedEncodedValue.readFrom(dexBackedDexFile, dexReader);
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public String getName() {
        return (String) this.dexFile.getStringSection().get(this.nameIndex);
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public EncodedValue getValue() {
        return this.value;
    }
}
