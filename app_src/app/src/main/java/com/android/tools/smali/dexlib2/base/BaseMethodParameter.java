package com.android.tools.smali.dexlib2.base;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.StringEncodedValue;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMethodParameter extends BaseTypeReference implements MethodParameter {
    @Override // com.android.tools.smali.dexlib2.iface.MethodParameter, com.android.tools.smali.dexlib2.iface.debug.LocalInfo
    @Nullable
    public String getSignature() {
        Annotation next;
        ArrayEncodedValue arrayEncodedValue;
        Iterator<? extends Annotation> it = getAnnotations().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!next.getType().equals("Ldalvik/annotation/Signature;"));
        if (next == null) {
            return null;
        }
        Iterator<? extends AnnotationElement> it2 = next.getElements().iterator();
        while (true) {
            if (!it2.hasNext()) {
                arrayEncodedValue = null;
                break;
            }
            AnnotationElement next2 = it2.next();
            if (next2.getName().equals("value")) {
                EncodedValue value = next2.getValue();
                if (value.getValueType() == 28) {
                    arrayEncodedValue = (ArrayEncodedValue) value;
                    break;
                }
                return null;
            }
        }
        if (arrayEncodedValue == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (EncodedValue encodedValue : arrayEncodedValue.getValue()) {
            if (encodedValue.getValueType() != 23) {
                return null;
            }
            sb.append(((StringEncodedValue) encodedValue).getValue());
        }
        return sb.toString();
    }
}
