package com.android.tools.smali.dexlib2.rewriter;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.util.ChainedIterable;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ClassDefRewriter implements Rewriter<ClassDef> {

    @Nonnull
    protected final Rewriters rewriters;

    public ClassDefRewriter(@Nonnull Rewriters rewriters) {
        this.rewriters = rewriters;
    }

    @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
    @Nonnull
    public ClassDef rewrite(@Nonnull ClassDef classDef) {
        return new RewrittenClassDef(classDef);
    }

    protected class RewrittenClassDef extends BaseTypeReference implements ClassDef {

        @Nonnull
        protected ClassDef classDef;

        public RewrittenClassDef(ClassDef classDef) {
            this.classDef = classDef;
        }

        @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public String getType() {
            return ClassDefRewriter.this.rewriters.getTypeRewriter().rewrite(this.classDef.getType());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        public int getAccessFlags() {
            return this.classDef.getAccessFlags();
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nullable
        public String getSuperclass() {
            return (String) RewriterUtils.rewriteNullable(ClassDefRewriter.this.rewriters.getTypeRewriter(), this.classDef.getSuperclass());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public List<String> getInterfaces() {
            return RewriterUtils.rewriteList(ClassDefRewriter.this.rewriters.getTypeRewriter(), this.classDef.getInterfaces());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nullable
        public String getSourceFile() {
            return this.classDef.getSourceFile();
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
        @Nonnull
        public Set<? extends Annotation> getAnnotations() {
            return RewriterUtils.rewriteSet(ClassDefRewriter.this.rewriters.getAnnotationRewriter(), this.classDef.getAnnotations());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Field> getStaticFields() {
            return RewriterUtils.rewriteIterable(ClassDefRewriter.this.rewriters.getFieldRewriter(), this.classDef.getStaticFields());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Field> getInstanceFields() {
            return RewriterUtils.rewriteIterable(ClassDefRewriter.this.rewriters.getFieldRewriter(), this.classDef.getInstanceFields());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Field> getFields() {
            return new ChainedIterable(getStaticFields(), getInstanceFields());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Method> getDirectMethods() {
            return RewriterUtils.rewriteIterable(ClassDefRewriter.this.rewriters.getMethodRewriter(), this.classDef.getDirectMethods());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Method> getVirtualMethods() {
            return RewriterUtils.rewriteIterable(ClassDefRewriter.this.rewriters.getMethodRewriter(), this.classDef.getVirtualMethods());
        }

        @Override // com.android.tools.smali.dexlib2.iface.ClassDef
        @Nonnull
        public Iterable<? extends Method> getMethods() {
            return new ChainedIterable(getDirectMethods(), getVirtualMethods());
        }
    }
}
