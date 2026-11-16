package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MethodIdItem {
    public static final int CLASS_OFFSET = 0;
    public static final int ITEM_SIZE = 8;
    public static final int NAME_OFFSET = 4;
    public static final int PROTO_OFFSET = 2;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.MethodIdItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "method_id_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                annotatedBytes.annotate(2, "class_idx = %s", TypeIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readUshort(annotatedBytes.getCursor())));
                annotatedBytes.annotate(2, "proto_idx = %s", ProtoIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readUshort(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "name_idx = %s", StringIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
            }
        };
    }

    @Nonnull
    public static String asString(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        int offset = dexBackedDexFile.getMethodSection().getOffset(i);
        return String.format("%s->%s%s", (String) dexBackedDexFile.getTypeSection().get(dexBackedDexFile.getBuffer().readUshort(offset)), (String) dexBackedDexFile.getStringSection().get(dexBackedDexFile.getBuffer().readSmallUint(offset + 4)), ProtoIdItem.asString(dexBackedDexFile, dexBackedDexFile.getBuffer().readUshort(offset + 2)));
    }

    @Nonnull
    public static String getReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        try {
            return String.format("method_id_item[%d]: %s", Integer.valueOf(i), asString(dexBackedDexFile, i));
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return String.format("method_id_item[%d]", Integer.valueOf(i));
        }
    }

    public static String[] getMethods(@Nonnull DexBackedDexFile dexBackedDexFile) {
        MapItem mapItemForSection = dexBackedDexFile.getMapItemForSection(5);
        if (mapItemForSection == null) {
            return new String[0];
        }
        int itemCount = mapItemForSection.getItemCount();
        String[] strArr = new String[itemCount];
        for (int i = 0; i < itemCount; i++) {
            strArr[i] = asString(dexBackedDexFile, i);
        }
        return strArr;
    }
}
