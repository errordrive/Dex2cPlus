package com.android.tools.smali.dexlib2.dexbacked.reference;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodProtoReference;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedMethodProtoReference extends BaseMethodProtoReference {

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int protoIndex;

    public DexBackedMethodProtoReference(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        this.dexFile = dexBackedDexFile;
        this.protoIndex = i;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    @Nonnull
    public List<String> getParameterTypes() {
        int smallUint = this.dexFile.getBuffer().readSmallUint(this.dexFile.getProtoSection().getOffset(this.protoIndex) + 8);
        if (smallUint > 0) {
            final int smallUint2 = this.dexFile.getDataBuffer().readSmallUint(smallUint);
            final int i = smallUint + 4;
            return new FixedSizeList<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodProtoReference.1
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
                @Nonnull
                public String readItem(int i2) {
                    return (String) DexBackedMethodProtoReference.this.dexFile.getTypeSection().get(DexBackedMethodProtoReference.this.dexFile.getDataBuffer().readUshort(i + (i2 * 2)));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return smallUint2;
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
    @Nonnull
    public String getReturnType() {
        return (String) this.dexFile.getTypeSection().get(this.dexFile.getBuffer().readSmallUint(this.dexFile.getProtoSection().getOffset(this.protoIndex) + 4));
    }

    public int getSize() {
        List<String> parameterTypes = getParameterTypes();
        if (parameterTypes.isEmpty()) {
            return 12;
        }
        return (parameterTypes.size() * 2) + 16;
    }

    @Override // com.android.tools.smali.dexlib2.base.reference.BaseReference, com.android.tools.smali.dexlib2.iface.reference.Reference
    public void validateReference() throws Reference.InvalidReferenceException {
        int i = this.protoIndex;
        if (i < 0 || i >= this.dexFile.getProtoSection().size()) {
            throw new Reference.InvalidReferenceException("proto@" + this.protoIndex);
        }
    }
}
