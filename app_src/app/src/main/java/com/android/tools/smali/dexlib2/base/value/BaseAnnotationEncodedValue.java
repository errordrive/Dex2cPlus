package com.android.tools.smali.dexlib2.base.value;

import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.util.CollectionUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAnnotationEncodedValue implements AnnotationEncodedValue {
    @Override // com.android.tools.smali.dexlib2.iface.value.EncodedValue
    public int getValueType() {
        return 29;
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue
    public int hashCode() {
        return (getType().hashCode() * 31) + getElements().hashCode();
    }

    @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnnotationEncodedValue) {
            AnnotationEncodedValue annotationEncodedValue = (AnnotationEncodedValue) obj;
            if (getType().equals(annotationEncodedValue.getType()) && getElements().equals(annotationEncodedValue.getElements())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(@Nonnull EncodedValue encodedValue) {
        int iCompare = Integer.compare(getValueType(), encodedValue.getValueType());
        if (iCompare != 0) {
            return iCompare;
        }
        AnnotationEncodedValue annotationEncodedValue = (AnnotationEncodedValue) encodedValue;
        int iCompareTo = getType().compareTo(annotationEncodedValue.getType());
        return iCompareTo != 0 ? iCompareTo : CollectionUtils.compareAsSet(getElements(), annotationEncodedValue.getElements());
    }

    public String toString() {
        return DexFormatter.INSTANCE.getEncodedValue(this);
    }
}
