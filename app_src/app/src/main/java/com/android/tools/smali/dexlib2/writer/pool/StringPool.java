package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.writer.StringSection;
import com.android.tools.smali.util.ExceptionWithContext;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class StringPool extends StringTypeBasePool implements StringSection<CharSequence, StringReference> {
    public StringPool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull CharSequence charSequence) {
        this.internedItems.put((Key) charSequence.toString(), (Value) 0);
    }

    public void internNullable(@Nullable CharSequence charSequence) {
        if (charSequence != null) {
            intern(charSequence);
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.StringSection
    public int getItemIndex(@Nonnull StringReference stringReference) {
        Integer num = (Integer) this.internedItems.get(stringReference.toString());
        if (num == null) {
            throw new ExceptionWithContext("Item not found.: %s", stringReference.toString());
        }
        return num.intValue();
    }

    @Override // com.android.tools.smali.dexlib2.writer.StringSection
    public boolean hasJumboIndexes() {
        return this.internedItems.size() > 65536;
    }
}
