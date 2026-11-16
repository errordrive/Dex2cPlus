package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.base.BaseAnnotation;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedAnnotation extends BaseAnnotation {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int elementsOffset;
    public final int typeIndex;
    public final int visibility;

    public DexBackedAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        this.dexFile = dexBackedDexFile;
        DexReader<? extends DexBuffer> dexReader = dexBackedDexFile.getDataBuffer().readerAt(i);
        this.visibility = dexReader.readUbyte();
        this.typeIndex = dexReader.readSmallUleb128();
        this.elementsOffset = dexReader.getOffset();
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation
    public int getVisibility() {
        return this.visibility;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public String getType() {
        return (String) this.dexFile.getTypeSection().get(this.typeIndex);
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public Set<? extends DexBackedAnnotationElement> getElements() {
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.elementsOffset);
        return new VariableSizeSet<DexBackedAnnotationElement>(this.dexFile.getDataBuffer(), dexReader.getOffset(), dexReader.readSmallUleb128()) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedAnnotation.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet
            @Nonnull
            protected /* bridge */ /* synthetic */ DexBackedAnnotationElement readNextItem(@Nonnull DexReader dexReader2, int i) {
                return readNextItem((DexReader<? extends DexBuffer>) dexReader2, i);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet
            @Nonnull
            protected DexBackedAnnotationElement readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2, int i) {
                return new DexBackedAnnotationElement(DexBackedAnnotation.this.dexFile, dexReader2);
            }
        };
    }
}
