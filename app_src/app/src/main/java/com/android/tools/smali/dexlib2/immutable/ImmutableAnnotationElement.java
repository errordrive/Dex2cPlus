package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.base.BaseAnnotationElement;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValueFactory;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableAnnotationElement extends BaseAnnotationElement {
    private static final ImmutableConverter<ImmutableAnnotationElement, AnnotationElement> CONVERTER = new ImmutableConverter<ImmutableAnnotationElement, AnnotationElement>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableAnnotationElement.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull AnnotationElement annotationElement) {
            return annotationElement instanceof ImmutableAnnotationElement;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableAnnotationElement makeImmutable(@Nonnull AnnotationElement annotationElement) {
            return ImmutableAnnotationElement.of(annotationElement);
        }
    };

    @Nonnull
    protected final String name;

    @Nonnull
    protected final ImmutableEncodedValue value;

    public ImmutableAnnotationElement(@Nonnull String str, @Nonnull EncodedValue encodedValue) {
        this.name = str;
        this.value = ImmutableEncodedValueFactory.of(encodedValue);
    }

    public ImmutableAnnotationElement(@Nonnull String str, @Nonnull ImmutableEncodedValue immutableEncodedValue) {
        this.name = str;
        this.value = immutableEncodedValue;
    }

    public static ImmutableAnnotationElement of(AnnotationElement annotationElement) {
        if (annotationElement instanceof ImmutableAnnotationElement) {
            return (ImmutableAnnotationElement) annotationElement;
        }
        return new ImmutableAnnotationElement(annotationElement.getName(), annotationElement.getValue());
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public String getName() {
        return this.name;
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    @Nonnull
    public EncodedValue getValue() {
        return this.value;
    }

    @Nonnull
    public static Set<ImmutableAnnotationElement> immutableSetOf(@Nullable Iterable<? extends AnnotationElement> iterable) {
        return CONVERTER.toSet(iterable);
    }
}
