package com.android.tools.smali.dexlib2.dexbacked.value;

import com.android.tools.smali.dexlib2.base.value.BaseAnnotationEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedAnnotationElement;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet;
import com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedAnnotationEncodedValue extends BaseAnnotationEncodedValue implements AnnotationEncodedValue {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int elementCount;
    private final int elementsOffset;

    @Nonnull
    public final String type;

    public DexBackedAnnotationEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        this.dexFile = dexBackedDexFile;
        this.type = (String) dexBackedDexFile.getTypeSection().get(dexReader.readSmallUleb128());
        int smallUleb128 = dexReader.readSmallUleb128();
        this.elementCount = smallUleb128;
        this.elementsOffset = dexReader.getOffset();
        skipElements(dexReader, smallUleb128);
    }

    public static void skipFrom(@Nonnull DexReader<? extends DexBuffer> dexReader) {
        dexReader.skipUleb128();
        skipElements(dexReader, dexReader.readSmallUleb128());
    }

    private static void skipElements(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            dexReader.skipUleb128();
            DexBackedEncodedValue.skipFrom(dexReader);
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public String getType() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public Set<? extends DexBackedAnnotationElement> getElements() {
        return new VariableSizeSet<DexBackedAnnotationElement>(this.dexFile.getDataBuffer(), this.elementsOffset, this.elementCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.value.DexBackedAnnotationEncodedValue.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet
            @Nonnull
            protected /* bridge */ /* synthetic */ DexBackedAnnotationElement readNextItem(@Nonnull DexReader dexReader, int i) {
                return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeSet
            @Nonnull
            protected DexBackedAnnotationElement readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                return new DexBackedAnnotationElement(DexBackedAnnotationEncodedValue.this.dexFile, dexReader);
            }
        };
    }
}
