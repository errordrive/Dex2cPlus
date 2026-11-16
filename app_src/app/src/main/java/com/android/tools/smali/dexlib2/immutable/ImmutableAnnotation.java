package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.base.BaseAnnotation;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.util.ImmutableConverter;
import com.android.tools.smali.util.ImmutableUtils;
import java.util.Collection;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableAnnotation extends BaseAnnotation {
    private static final ImmutableConverter<ImmutableAnnotation, Annotation> CONVERTER = new ImmutableConverter<ImmutableAnnotation, Annotation>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableAnnotation.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull Annotation annotation) {
            return annotation instanceof ImmutableAnnotation;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableAnnotation makeImmutable(@Nonnull Annotation annotation) {
            return ImmutableAnnotation.of(annotation);
        }
    };

    @Nonnull
    protected final Set<? extends ImmutableAnnotationElement> elements;

    @Nonnull
    protected final String type;
    protected final int visibility;

    public ImmutableAnnotation(int i, @Nonnull String str, @Nullable Collection<? extends AnnotationElement> collection) {
        this.visibility = i;
        this.type = str;
        this.elements = ImmutableAnnotationElement.immutableSetOf(collection);
    }

    public ImmutableAnnotation(int i, @Nonnull String str, @Nullable Set<? extends ImmutableAnnotationElement> set) {
        this.visibility = i;
        this.type = str;
        this.elements = ImmutableUtils.nullToEmptySet(set);
    }

    public static ImmutableAnnotation of(Annotation annotation) {
        if (annotation instanceof ImmutableAnnotation) {
            return (ImmutableAnnotation) annotation;
        }
        return new ImmutableAnnotation(annotation.getVisibility(), annotation.getType(), annotation.getElements());
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation
    public int getVisibility() {
        return this.visibility;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public String getType() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation, com.android.tools.smali.dexlib2.iface.BasicAnnotation
    @Nonnull
    public Set<? extends ImmutableAnnotationElement> getElements() {
        return this.elements;
    }

    @Nonnull
    public static Set<ImmutableAnnotation> immutableSetOf(@Nullable Iterable<? extends Annotation> iterable) {
        return CONVERTER.toSet(iterable);
    }
}
