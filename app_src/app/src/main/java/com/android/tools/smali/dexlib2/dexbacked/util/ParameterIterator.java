package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.base.BaseMethodParameter;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ParameterIterator implements Iterator<MethodParameter> {
    private final Iterator<? extends Set<? extends Annotation>> parameterAnnotations;
    private final Iterator<String> parameterNames;
    private final Iterator<? extends CharSequence> parameterTypes;

    public ParameterIterator(@Nonnull List<? extends CharSequence> list, @Nonnull List<? extends Set<? extends Annotation>> list2, @Nonnull Iterator<String> it) {
        this.parameterTypes = list.iterator();
        this.parameterAnnotations = list2.iterator();
        this.parameterNames = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.parameterTypes.hasNext();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public MethodParameter next() {
        final Set<? extends Annotation> next;
        final String string = this.parameterTypes.next().toString();
        if (this.parameterAnnotations.hasNext()) {
            next = this.parameterAnnotations.next();
        } else {
            next = Collections.EMPTY_SET;
        }
        final String next2 = this.parameterNames.hasNext() ? this.parameterNames.next() : null;
        return new BaseMethodParameter() { // from class: com.android.tools.smali.dexlib2.dexbacked.util.ParameterIterator.1
            @Override // com.android.tools.smali.dexlib2.iface.MethodParameter
            @Nonnull
            public Set<? extends Annotation> getAnnotations() {
                return next;
            }

            @Override // com.android.tools.smali.dexlib2.iface.MethodParameter, com.android.tools.smali.dexlib2.iface.debug.LocalInfo
            @Nullable
            public String getName() {
                return next2;
            }

            @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
            @Nonnull
            public String getType() {
                return string;
            }
        };
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
