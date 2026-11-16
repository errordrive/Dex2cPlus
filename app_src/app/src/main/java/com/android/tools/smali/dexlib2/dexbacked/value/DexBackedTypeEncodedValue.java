package com.android.tools.smali.dexlib2.dexbacked.value;

import com.android.tools.smali.dexlib2.base.value.BaseTypeEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedTypeEncodedValue extends BaseTypeEncodedValue {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int typeIndex;

    public DexBackedTypeEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        this.dexFile = dexBackedDexFile;
        this.typeIndex = dexReader.readSizedSmallUint(i + 1);
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue
    @Nonnull
    public String getValue() {
        return (String) this.dexFile.getTypeSection().get(this.typeIndex);
    }
}
