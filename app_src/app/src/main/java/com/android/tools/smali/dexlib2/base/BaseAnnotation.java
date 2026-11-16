package com.android.tools.smali.dexlib2.base;

import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.util.CollectionUtils;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAnnotation implements Annotation {
    public static final Comparator<? super Annotation> BY_TYPE = new Comparator<Annotation>() { // from class: com.android.tools.smali.dexlib2.base.BaseAnnotation.1
        @Override // java.util.Comparator
        public int compare(Annotation annotation, Annotation annotation2) {
            return annotation.getType().compareTo(annotation2.getType());
        }
    };

    @Override // com.android.tools.smali.dexlib2.iface.Annotation
    public int hashCode() {
        return (((getVisibility() * 31) + getType().hashCode()) * 31) + getElements().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.Annotation
    public boolean equals(Object obj) {
        if (obj instanceof Annotation) {
            Annotation annotation = (Annotation) obj;
            if (getVisibility() == annotation.getVisibility() && getType().equals(annotation.getType()) && getElements().equals(annotation.getElements())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(Annotation annotation) {
        int iCompare = Integer.compare(getVisibility(), annotation.getVisibility());
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompareTo = getType().compareTo(annotation.getType());
        return iCompareTo != 0 ? iCompareTo : CollectionUtils.compareAsSet(getElements(), annotation.getElements());
    }
}
