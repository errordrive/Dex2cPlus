package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.writer.TypeSection;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TypePool extends StringTypeBasePool implements TypeSection<CharSequence, CharSequence, TypeReference> {
    @Override // com.android.tools.smali.dexlib2.writer.TypeSection
    @Nonnull
    public CharSequence getString(@Nonnull CharSequence charSequence) {
        return charSequence;
    }

    public TypePool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull CharSequence charSequence) {
        CharSequence string = charSequence.toString();
        if (((Integer) this.internedItems.put((Key) string, (Value) 0)) == null) {
            ((StringPool) this.dexPool.stringSection).intern(string);
        }
    }

    public void internNullable(@Nullable CharSequence charSequence) {
        if (charSequence != null) {
            intern(charSequence);
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.TypeSection
    public int getItemIndex(@Nonnull TypeReference typeReference) {
        return getItemIndex((CharSequence) typeReference.getType());
    }
}
