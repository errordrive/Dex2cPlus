package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.iface.Field;
import java.util.function.Predicate;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class FieldUtil {
    public static Predicate<Field> FIELD_IS_STATIC = new Predicate<Field>() { // from class: com.android.tools.smali.dexlib2.util.FieldUtil.1
        @Override // java.util.function.Predicate
        public boolean test(@Nullable Field field) {
            return field != null && FieldUtil.isStatic(field);
        }
    };
    public static Predicate<Field> FIELD_IS_INSTANCE = new Predicate<Field>() { // from class: com.android.tools.smali.dexlib2.util.FieldUtil.2
        @Override // java.util.function.Predicate
        public boolean test(@Nullable Field field) {
            return (field == null || FieldUtil.isStatic(field)) ? false : true;
        }
    };

    public static boolean isStatic(@Nonnull Field field) {
        return AccessFlags.STATIC.isSet(field.getAccessFlags());
    }

    private FieldUtil() {
    }
}
