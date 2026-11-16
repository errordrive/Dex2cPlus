package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import com.android.tools.smali.util.StringUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class StringIdItem {
    public static final int ITEM_SIZE = 4;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.StringIdItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "string_id_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int smallUint = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                try {
                    annotatedBytes.annotate(4, "string_data_item[0x%x]: \"%s\"", Integer.valueOf(smallUint), StringUtils.escapeString((String) this.dexFile.getStringSection().get(i)));
                } catch (Exception e) {
                    System.err.print("Error while resolving string value at index: ");
                    System.err.print(i);
                    e.printStackTrace(System.err);
                    annotatedBytes.annotate(4, "string_id_item[0x%x]", Integer.valueOf(smallUint));
                }
            }
        };
    }

    @Nonnull
    public static String getReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        return getReferenceAnnotation(dexBackedDexFile, i, false);
    }

    public static String getReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i, boolean z) {
        try {
            String str = (String) dexBackedDexFile.getStringSection().get(i);
            if (z) {
                str = String.format("\"%s\"", StringUtils.escapeString(str));
            }
            return String.format("string_id_item[%d]: %s", Integer.valueOf(i), str);
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return String.format("string_id_item[%d]", Integer.valueOf(i));
        }
    }

    @Nonnull
    public static String getOptionalReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        return getOptionalReferenceAnnotation(dexBackedDexFile, i, false);
    }

    public static String getOptionalReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i, boolean z) {
        if (i == -1) {
            return "string_id_item[NO_INDEX]";
        }
        return getReferenceAnnotation(dexBackedDexFile, i, z);
    }
}
