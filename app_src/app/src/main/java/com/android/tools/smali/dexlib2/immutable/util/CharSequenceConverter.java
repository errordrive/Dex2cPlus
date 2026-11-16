package com.android.tools.smali.dexlib2.immutable.util;

import com.android.tools.smali.util.ImmutableConverter;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class CharSequenceConverter {
    private static final ImmutableConverter<String, CharSequence> CONVERTER = new ImmutableConverter<String, CharSequence>() { // from class: com.android.tools.smali.dexlib2.immutable.util.CharSequenceConverter.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull CharSequence charSequence) {
            return charSequence instanceof String;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public String makeImmutable(@Nonnull CharSequence charSequence) {
            return charSequence.toString();
        }
    };

    private CharSequenceConverter() {
    }

    @Nonnull
    public static List<String> immutableStringList(@Nullable Iterable<? extends CharSequence> iterable) {
        return CONVERTER.toList(iterable);
    }
}
