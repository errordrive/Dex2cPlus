package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnnotationDirectoryItem {
    public static final int ANNOTATED_METHOD_SIZE_OFFSET = 8;
    public static final int ANNOTATED_PARAMETERS_SIZE = 12;
    public static final int CLASS_ANNOTATIONS_OFFSET = 0;
    public static final int FIELD_SIZE_OFFSET = 4;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.AnnotationDirectoryItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public int getItemAlignment() {
                return 4;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "annotation_directory_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                annotatedBytes.annotate(4, "class_annotations_off = %s", AnnotationSetItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                int smallUint = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "fields_size = %d", Integer.valueOf(smallUint));
                int smallUint2 = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "annotated_methods_size = %d", Integer.valueOf(smallUint2));
                int smallUint3 = this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "annotated_parameters_size = %d", Integer.valueOf(smallUint3));
                if (smallUint > 0) {
                    annotatedBytes.annotate(0, "field_annotations:", new Object[0]);
                    annotatedBytes.indent();
                    for (int i2 = 0; i2 < smallUint; i2++) {
                        annotatedBytes.annotate(0, "field_annotation[%d]", Integer.valueOf(i2));
                        annotatedBytes.indent();
                        annotatedBytes.annotate(4, "%s", FieldIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.annotate(4, "%s", AnnotationSetItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.deindent();
                    }
                    annotatedBytes.deindent();
                }
                if (smallUint2 > 0) {
                    annotatedBytes.annotate(0, "method_annotations:", new Object[0]);
                    annotatedBytes.indent();
                    for (int i3 = 0; i3 < smallUint2; i3++) {
                        annotatedBytes.annotate(0, "method_annotation[%d]", Integer.valueOf(i3));
                        annotatedBytes.indent();
                        annotatedBytes.annotate(4, "%s", MethodIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.annotate(4, "%s", AnnotationSetItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.deindent();
                    }
                    annotatedBytes.deindent();
                }
                if (smallUint3 > 0) {
                    annotatedBytes.annotate(0, "parameter_annotations:", new Object[0]);
                    annotatedBytes.indent();
                    for (int i4 = 0; i4 < smallUint3; i4++) {
                        annotatedBytes.annotate(0, "parameter_annotation[%d]", Integer.valueOf(i4));
                        annotatedBytes.indent();
                        annotatedBytes.annotate(4, "%s", MethodIdItem.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.annotate(4, "%s", AnnotationSetRefList.getReferenceAnnotation(this.dexFile, this.dexFile.getBuffer().readSmallUint(annotatedBytes.getCursor())));
                        annotatedBytes.deindent();
                    }
                    annotatedBytes.deindent();
                }
            }
        };
    }
}
