package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.writer.EncodedArraySection;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class EncodedArrayPool extends BaseOffsetPool<ArrayEncodedValue> implements EncodedArraySection<ArrayEncodedValue, EncodedValue> {
    public EncodedArrayPool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull ArrayEncodedValue arrayEncodedValue) {
        if (((Integer) this.internedItems.put((Key) arrayEncodedValue, (Value) 0)) == null) {
            Iterator<? extends EncodedValue> it = arrayEncodedValue.getValue().iterator();
            while (it.hasNext()) {
                this.dexPool.internEncodedValue(it.next());
            }
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.EncodedArraySection
    public List<? extends EncodedValue> getEncodedValueList(ArrayEncodedValue arrayEncodedValue) {
        return arrayEncodedValue.getValue();
    }
}
