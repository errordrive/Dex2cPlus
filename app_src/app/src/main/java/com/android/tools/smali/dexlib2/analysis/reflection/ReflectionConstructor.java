package com.android.tools.smali.dexlib2.analysis.reflection;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.analysis.reflection.util.ReflectionUtils;
import com.android.tools.smali.dexlib2.base.BaseMethodParameter;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import java.lang.reflect.Constructor;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ReflectionConstructor extends BaseMethodReference implements Method {
    private final Constructor constructor;

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nullable
    public MethodImplementation getImplementation() {
        return null;
    }

    public ReflectionConstructor(Constructor constructor) {
        this.constructor = constructor;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public List<? extends MethodParameter> getParameters() {
        return new AbstractList<MethodParameter>(this.constructor) { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionConstructor.1
            private final Class[] parameters;
            final /* synthetic */ Constructor val$method;

            {
                this.val$method = constructor;
                this.parameters = constructor.getParameterTypes();
            }

            @Override // java.util.AbstractList, java.util.List
            public MethodParameter get(final int i) {
                return new BaseMethodParameter() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionConstructor.1.1
                    @Override // com.android.tools.smali.dexlib2.iface.MethodParameter, com.android.tools.smali.dexlib2.iface.debug.LocalInfo
                    @Nullable
                    public String getName() {
                        return null;
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.MethodParameter
                    @Nonnull
                    public Set<? extends Annotation> getAnnotations() {
                        return Collections.EMPTY_SET;
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
                    @Nonnull
                    public String getType() {
                        return ReflectionUtils.javaToDexName(AnonymousClass1.this.parameters[i].getName());
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.parameters.length;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    public int getAccessFlags() {
        return this.constructor.getModifiers();
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends Annotation> getAnnotations() {
        return Collections.EMPTY_SET;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getDefiningClass() {
        return ReflectionUtils.javaToDexName(this.constructor.getDeclaringClass().getName());
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getName() {
        return this.constructor.getName();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
    @Nonnull
    public List<String> getParameterTypes() {
        return new AbstractList<String>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionConstructor.2
            private final List<? extends MethodParameter> parameters;

            {
                this.parameters = ReflectionConstructor.this.getParameters();
            }

            @Override // java.util.AbstractList, java.util.List
            public String get(int i) {
                return this.parameters.get(i).getType();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.parameters.size();
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public String getReturnType() {
        return "V";
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
        return Collections.EMPTY_SET;
    }
}
