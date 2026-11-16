package com.android.tools.smali.dexlib2.dexbacked.value;

import com.android.tools.smali.dexlib2.base.value.BaseArrayEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedArrayEncodedValue extends BaseArrayEncodedValue implements ArrayEncodedValue {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int elementCount;
    private final int encodedArrayOffset;

    public DexBackedArrayEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        this.dexFile = dexBackedDexFile;
        int smallUleb128 = dexReader.readSmallUleb128();
        this.elementCount = smallUleb128;
        this.encodedArrayOffset = dexReader.getOffset();
        skipElementsFrom(dexReader, smallUleb128);
    }

    public static void skipFrom(@Nonnull DexReader<? extends DexBuffer> dexReader) {
        skipElementsFrom(dexReader, dexReader.readSmallUleb128());
    }

    private static void skipElementsFrom(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            DexBackedEncodedValue.skipFrom(dexReader);
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue
    @Nonnull
    public List<? extends EncodedValue> getValue() {
        return new VariableSizeList<EncodedValue>(this.dexFile.getDataBuffer(), this.encodedArrayOffset, this.elementCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.value.DexBackedArrayEncodedValue.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            @Nonnull
            protected /* bridge */ /* synthetic */ EncodedValue readNextItem(@Nonnull DexReader dexReader, int i) {
                return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            @Nonnull
            protected EncodedValue readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                return DexBackedEncodedValue.readFrom(DexBackedArrayEncodedValue.this.dexFile, dexReader);
            }
        };
    }
}
