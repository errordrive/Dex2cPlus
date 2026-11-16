package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TypeListItem {
    public static final int LIST_OFFSET = 4;
    public static final int SIZE_OFFSET = 0;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.TypeListItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public int getItemAlignment() {
                return 4;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "type_list";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int smallUint = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "size: %d", Integer.valueOf(smallUint));
                for (int i2 = 0; i2 < smallUint; i2++) {
                    annotatedBytes.annotate(2, TypeIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readUshort(annotatedBytes.getCursor())), new Object[0]);
                }
            }
        };
    }

    @Nonnull
    public static String getReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        if (i == 0) {
            return "type_list_item[NO_OFFSET]";
        }
        try {
            return String.format("type_list_item[0x%x]: %s", Integer.valueOf(i), asString(dexBackedDexFile, i));
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return String.format("type_list_item[0x%x]", Integer.valueOf(i));
        }
    }

    @Nonnull
    public static String asString(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        if (i == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int smallUint = dexBackedDexFile.getDataBuffer().readSmallUint(i);
        for (int i2 = 0; i2 < smallUint; i2++) {
            sb.append((String) dexBackedDexFile.getTypeSection().get(dexBackedDexFile.getDataBuffer().readUshort(i + 4 + (i2 * 2))));
        }
        return sb.toString();
    }
}
