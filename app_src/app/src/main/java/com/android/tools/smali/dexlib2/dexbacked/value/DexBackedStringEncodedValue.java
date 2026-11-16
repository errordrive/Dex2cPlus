package com.android.tools.smali.dexlib2.dexbacked.value;

import com.android.tools.smali.dexlib2.base.value.BaseStringEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedStringEncodedValue extends BaseStringEncodedValue {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int stringIndex;

    public DexBackedStringEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        this.dexFile = dexBackedDexFile;
        this.stringIndex = dexReader.readSizedSmallUint(i + 1);
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.StringEncodedValue
    @Nonnull
    public String getValue() {
        return (String) this.dexFile.getStringSection().get(this.stringIndex);
    }
}
