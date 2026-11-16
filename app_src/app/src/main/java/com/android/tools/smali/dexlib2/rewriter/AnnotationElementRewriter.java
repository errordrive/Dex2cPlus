package com.android.tools.smali.dexlib2.rewriter;

import com.android.tools.smali.dexlib2.base.BaseAnnotationElement;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class AnnotationElementRewriter implements Rewriter<AnnotationElement> {

    @Nonnull
    protected final Rewriters rewriters;

    public AnnotationElementRewriter(@Nonnull Rewriters rewriters) {
        this.rewriters = rewriters;
    }

    @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
    @Nonnull
    public AnnotationElement rewrite(@Nonnull AnnotationElement annotationElement) {
        return new RewrittenAnnotationElement(annotationElement);
    }

    protected class RewrittenAnnotationElement extends BaseAnnotationElement {

        @Nonnull
        protected AnnotationElement annotationElement;

        public RewrittenAnnotationElement(AnnotationElement annotationElement) {
            this.annotationElement = annotationElement;
        }

        @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
        @Nonnull
        public String getName() {
            return this.annotationElement.getName();
        }

        @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
        @Nonnull
        public EncodedValue getValue() {
            return AnnotationElementRewriter.this.rewriters.getEncodedValueRewriter().rewrite(this.annotationElement.getValue());
        }
    }
}
