package com.android.tools.smali.dexlib2.base;

import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import java.util.Comparator;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAnnotationElement implements AnnotationElement {
    public static final Comparator<AnnotationElement> BY_NAME = new Comparator<AnnotationElement>() { // from class: com.android.tools.smali.dexlib2.base.BaseAnnotationElement.1
        @Override // java.util.Comparator
        public int compare(@Nonnull AnnotationElement annotationElement, @Nonnull AnnotationElement annotationElement2) {
            return annotationElement.getName().compareTo(annotationElement2.getName());
        }
    };

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    public int hashCode() {
        return (getName().hashCode() * 31) + getValue().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.AnnotationElement
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof AnnotationElement)) {
            AnnotationElement annotationElement = (AnnotationElement) obj;
            if (getName().equals(annotationElement.getName()) && getValue().equals(annotationElement.getValue())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(AnnotationElement annotationElement) {
        int iCompareTo = getName().compareTo(annotationElement.getName());
        return iCompareTo != 0 ? iCompareTo : getValue().compareTo(annotationElement.getValue());
    }
}
