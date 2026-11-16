package com.android.tools.smali.dexlib2.dexbacked.value;

import com.android.tools.smali.dexlib2.base.value.BaseMethodEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedMethodEncodedValue extends BaseMethodEncodedValue {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int methodIndex;

    public DexBackedMethodEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        this.dexFile = dexBackedDexFile;
        this.methodIndex = dexReader.readSizedSmallUint(i + 1);
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue
    @Nonnull
    public MethodReference getValue() {
        return new DexBackedMethodReference(this.dexFile, this.methodIndex);
    }
}
