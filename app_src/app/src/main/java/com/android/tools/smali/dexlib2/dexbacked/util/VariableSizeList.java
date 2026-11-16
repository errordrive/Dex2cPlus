package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import java.util.AbstractSequentialList;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class VariableSizeList<T> extends AbstractSequentialList<T> {

    @Nonnull
    private final DexBuffer buffer;
    private final int offset;
    private final int size;

    protected abstract T readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i);

    public VariableSizeList(@Nonnull DexBuffer dexBuffer, int i, int i2) {
        this.buffer = dexBuffer;
        this.offset = i;
        this.size = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public VariableSizeListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    @Nonnull
    public VariableSizeListIterator<T> listIterator(int i) {
        VariableSizeListIterator<T> variableSizeListIterator = new VariableSizeListIterator<T>(this.buffer, this.offset, this.size) { // from class: com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
            protected T readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i2) {
                return (T) VariableSizeList.this.readNextItem(dexReader, i2);
            }
        };
        for (int i2 = 0; i2 < i; i2++) {
            variableSizeListIterator.next();
        }
        return variableSizeListIterator;
    }
}
