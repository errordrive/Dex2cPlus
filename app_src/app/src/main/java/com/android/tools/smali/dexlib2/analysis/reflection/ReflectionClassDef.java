package com.android.tools.smali.dexlib2.analysis.reflection;

import com.android.tools.smali.dexlib2.analysis.reflection.util.ReflectionUtils;
import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.util.ChainedIterable;
import com.android.tools.smali.util.IteratorUtils;
import com.android.tools.smali.util.TransformedIterable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ReflectionClassDef extends BaseTypeReference implements ClassDef {
    private static final int DIRECT_MODIFIERS = 10;
    private final Class cls;

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSourceFile() {
        return null;
    }

    public ReflectionClassDef(Class cls) {
        this.cls = cls;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    public int getAccessFlags() {
        return this.cls.getModifiers();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSuperclass() {
        if (Modifier.isInterface(this.cls.getModifiers())) {
            return "Ljava/lang/Object;";
        }
        Class superclass = this.cls.getSuperclass();
        if (superclass == null) {
            return null;
        }
        return ReflectionUtils.javaToDexName(superclass.getName());
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public List<String> getInterfaces() {
        return (List) Arrays.asList(this.cls.getInterfaces()).stream().map(new Function() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ReflectionClassDef.lambda$getInterfaces$0((Class) obj);
            }
        }).collect(Collectors.toList());
    }

    static /* synthetic */ String lambda$getInterfaces$0(Class cls) {
        if (cls == null) {
            return null;
        }
        return ReflectionUtils.javaToDexName(cls.getName());
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends Annotation> getAnnotations() {
        return Collections.EMPTY_SET;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends Field> getStaticFields() {
        return new Iterable<Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.1
            @Override // java.lang.Iterable
            @Nonnull
            public Iterator<Field> iterator() {
                return new TransformedIterable.TransformedIterator((Iterator) IteratorUtils.filter(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredFields()), new Predicate<java.lang.reflect.Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.1.1
                    @Override // java.util.function.Predicate
                    public boolean test(@Nullable java.lang.reflect.Field field) {
                        return field != null && Modifier.isStatic(field.getModifiers());
                    }
                }), (Function) new Function<java.lang.reflect.Field, Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.1.2
                    @Override // java.util.function.Function
                    @Nullable
                    public Field apply(@Nullable java.lang.reflect.Field field) {
                        return new ReflectionField(field);
                    }
                });
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends Field> getInstanceFields() {
        return new Iterable<Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.2
            @Override // java.lang.Iterable
            @Nonnull
            public Iterator<Field> iterator() {
                return new TransformedIterable.TransformedIterator((Iterator) IteratorUtils.filter(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredFields()), new Predicate<java.lang.reflect.Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.2.1
                    @Override // java.util.function.Predicate
                    public boolean test(@Nullable java.lang.reflect.Field field) {
                        return (field == null || Modifier.isStatic(field.getModifiers())) ? false : true;
                    }
                }), (Function) new Function<java.lang.reflect.Field, Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.2.2
                    @Override // java.util.function.Function
                    @Nullable
                    public Field apply(@Nullable java.lang.reflect.Field field) {
                        return new ReflectionField(field);
                    }
                });
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends Field> getFields() {
        return new AbstractSet<Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.3
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            @Nonnull
            public Iterator<Field> iterator() {
                return new TransformedIterable.TransformedIterator(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredFields()), new Function<java.lang.reflect.Field, Field>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.3.1
                    @Override // java.util.function.Function
                    @Nullable
                    public Field apply(@Nullable java.lang.reflect.Field field) {
                        return new ReflectionField(field);
                    }
                });
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return ReflectionClassDef.this.cls.getDeclaredFields().length;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends Method> getDirectMethods() {
        return new Iterable<Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.4
            @Override // java.lang.Iterable
            @Nonnull
            public Iterator<Method> iterator() {
                return new ChainedIterable.ChainedIterator(new TransformedIterable.TransformedIterator(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredConstructors()).iterator(), new Function<Constructor, Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.4.1
                    @Override // java.util.function.Function
                    @Nullable
                    public Method apply(@Nullable Constructor constructor) {
                        return new ReflectionConstructor(constructor);
                    }
                }), new TransformedIterable.TransformedIterator((Iterator) IteratorUtils.filter(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredMethods()), new Predicate<java.lang.reflect.Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.4.2
                    @Override // java.util.function.Predicate
                    public boolean test(@Nullable java.lang.reflect.Method method) {
                        return (method == null || (method.getModifiers() & 10) == 0) ? false : true;
                    }
                }), (Function) new Function<java.lang.reflect.Method, Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.4.3
                    @Override // java.util.function.Function
                    @Nullable
                    public Method apply(@Nullable java.lang.reflect.Method method) {
                        return new ReflectionMethod(method);
                    }
                }));
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends Method> getVirtualMethods() {
        return new Iterable<Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.5
            @Override // java.lang.Iterable
            @Nonnull
            public Iterator<Method> iterator() {
                return new TransformedIterable.TransformedIterator((Iterator) IteratorUtils.filter(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredMethods()), new Predicate<java.lang.reflect.Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.5.1
                    @Override // java.util.function.Predicate
                    public boolean test(@Nullable java.lang.reflect.Method method) {
                        return method != null && (method.getModifiers() & 10) == 0;
                    }
                }), (Function) new Function<java.lang.reflect.Method, Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.5.2
                    @Override // java.util.function.Function
                    @Nullable
                    public Method apply(@Nullable java.lang.reflect.Method method) {
                        return new ReflectionMethod(method);
                    }
                });
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Set<? extends Method> getMethods() {
        return new AbstractSet<Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.6
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            @Nonnull
            public Iterator<Method> iterator() {
                return new ChainedIterable.ChainedIterator(new TransformedIterable.TransformedIterator(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredConstructors()), new Function<Constructor, Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.6.1
                    @Override // java.util.function.Function
                    @Nullable
                    public Method apply(@Nullable Constructor constructor) {
                        return new ReflectionConstructor(constructor);
                    }
                }), new TransformedIterable.TransformedIterator(Arrays.asList(ReflectionClassDef.this.cls.getDeclaredMethods()), new Function<java.lang.reflect.Method, Method>() { // from class: com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef.6.2
                    @Override // java.util.function.Function
                    @Nullable
                    public Method apply(@Nullable java.lang.reflect.Method method) {
                        return new ReflectionMethod(method);
                    }
                }));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return ReflectionClassDef.this.cls.getDeclaredMethods().length + ReflectionClassDef.this.cls.getDeclaredConstructors().length;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return ReflectionUtils.javaToDexName(this.cls.getName());
    }
}
