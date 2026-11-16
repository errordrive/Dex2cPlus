package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnnotationItem {
    public static final int ANNOTATION_OFFSET = 1;
    public static final int VISIBILITY_OFFSET = 0;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "annotation_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int ubyte = this.dexFile.getBuffer().readUbyte(annotatedBytes.getCursor());
                annotatedBytes.annotate(1, "visibility = %d: %s", Integer.valueOf(ubyte), AnnotationItem.getAnnotationVisibility(ubyte));
                EncodedValue.annotateEncodedAnnotation(this.dexFile, annotatedBytes, this.dexFile.getBuffer().readerAt(annotatedBytes.getCursor()));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAnnotationVisibility(int i) {
        if (i == 0) {
            return "build";
        }
        if (i == 1) {
            return "runtime";
        }
        if (i == 2) {
            return "system";
        }
        return "invalid visibility";
    }

    public static String getReferenceAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        try {
            DexReader<? extends DexBuffer> dexReader = dexBackedDexFile.getDataBuffer().readerAt(i);
            dexReader.readUbyte();
            return String.format("annotation_item[0x%x]: %s", Integer.valueOf(i), (String) dexBackedDexFile.getTypeSection().get(dexReader.readSmallUleb128()));
        } catch (Exception e) {
            e.printStackTrace(System.err);
            return String.format("annotation_item[0x%x]", Integer.valueOf(i));
        }
    }
}
