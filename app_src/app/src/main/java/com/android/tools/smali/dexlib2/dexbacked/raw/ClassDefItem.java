package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import com.android.tools.smali.util.StringUtils;
import java.util.Arrays;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ClassDefItem {
    public static final int ACCESS_FLAGS_OFFSET = 4;
    public static final int ANNOTATIONS_OFFSET = 20;
    public static final int CLASS_DATA_OFFSET = 24;
    public static final int CLASS_OFFSET = 0;
    public static final int INTERFACES_OFFSET = 12;
    public static final int ITEM_SIZE = 32;
    public static final int SOURCE_FILE_OFFSET = 16;
    public static final int STATIC_VALUES_OFFSET = 28;
    public static final int SUPERCLASS_OFFSET = 8;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.ClassDefItem.1
            private SectionAnnotator classDataAnnotator = null;

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public void annotateSection(@Nonnull AnnotatedBytes annotatedBytes) {
                this.classDataAnnotator = this.annotator.getAnnotator(8192);
                super.annotateSection(annotatedBytes);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "class_def_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int smallUint = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "class_idx = %s", TypeIdItem.getReferenceAnnotation(this.dexFile, smallUint));
                int i2 = this.dexFile.getBuffer().readInt(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "access_flags = 0x%x: %s", Integer.valueOf(i2), StringUtils.join(Arrays.asList(AccessFlags.getAccessFlagsForClass(i2)), "|"));
                annotatedBytes.annotate(4, "superclass_idx = %s", TypeIdItem.getOptionalReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readOptionalUint(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "interfaces_off = %s", TypeListItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "source_file_idx = %s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readOptionalUint(annotatedBytes.getCursor())));
                int smallUint2 = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                if (smallUint2 == 0) {
                    annotatedBytes.annotate(4, "annotations_off = annotations_directory_item[NO_OFFSET]", new Object[0]);
                } else {
                    annotatedBytes.annotate(4, "annotations_off = annotations_directory_item[0x%x]", Integer.valueOf(smallUint2));
                }
                int smallUint3 = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                if (smallUint3 == 0) {
                    annotatedBytes.annotate(4, "class_data_off = class_data_item[NO_OFFSET]", new Object[0]);
                } else {
                    annotatedBytes.annotate(4, "class_data_off = class_data_item[0x%x]", Integer.valueOf(smallUint3));
                    addClassDataIdentity(smallUint3, (String) this.dexFile.getTypeSection().get(smallUint));
                }
                int smallUint4 = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                if (smallUint4 == 0) {
                    annotatedBytes.annotate(4, "static_values_off = encoded_array_item[NO_OFFSET]", new Object[0]);
                } else {
                    annotatedBytes.annotate(4, "static_values_off = encoded_array_item[0x%x]", Integer.valueOf(smallUint4));
                }
            }

            private void addClassDataIdentity(int i, String str) {
                SectionAnnotator sectionAnnotator = this.classDataAnnotator;
                if (sectionAnnotator != null) {
                    sectionAnnotator.setItemIdentity(i, str);
                }
            }
        };
    }

    @Nonnull
    public static String asString(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        return (String) dexBackedDexFile.getTypeSection().get(dexBackedDexFile.getBuffer().readSmallUint(dexBackedDexFile.getClassSection().getOffset(i)));
    }

    public static String[] getClasses(@Nonnull DexBackedDexFile dexBackedDexFile) {
        MapItem mapItemForSection = dexBackedDexFile.getMapItemForSection(6);
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
