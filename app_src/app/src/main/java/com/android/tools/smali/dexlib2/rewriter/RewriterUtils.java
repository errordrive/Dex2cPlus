package com.android.tools.smali.dexlib2.rewriter;

import com.android.tools.smali.dexlib2.base.reference.BaseMethodHandleReference;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodProtoReference;
import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.base.value.BaseFieldEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FieldEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.AbstractList;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class RewriterUtils {
    @Nullable
    public static <T> T rewriteNullable(@Nonnull Rewriter<T> rewriter, @Nullable T t) {
        if (t == null) {
            return null;
        }
        return rewriter.rewrite(t);
    }

    public static <T> Set<T> rewriteSet(@Nonnull final Rewriter<T> rewriter, @Nonnull final Set<? extends T> set) {
        return new AbstractSet<T>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            @Nonnull
            public Iterator<T> iterator() {
                final Iterator it = set.iterator();
                return new Iterator<T>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.1.1
                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public T next() {
                        return (T) RewriterUtils.rewriteNullable(rewriter, it.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        it.remove();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return set.size();
            }
        };
    }

    public static <T> List<T> rewriteList(@Nonnull final Rewriter<T> rewriter, @Nonnull final List<? extends T> list) {
        return new AbstractList<T>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.2
            @Override // java.util.AbstractList, java.util.List
            public T get(int i) {
                return (T) RewriterUtils.rewriteNullable(rewriter, list.get(i));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return list.size();
            }
        };
    }

    public static <T> Iterable<T> rewriteIterable(@Nonnull final Rewriter<T> rewriter, @Nonnull final Iterable<? extends T> iterable) {
        return new Iterable<T>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.3
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                final Iterator<T> it = iterable.iterator();
                return new Iterator<T>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.3.1
                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public T next() {
                        return (T) RewriterUtils.rewriteNullable(rewriter, it.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        it.remove();
                    }
                };
            }
        };
    }

    public static TypeReference rewriteTypeReference(@Nonnull final Rewriter<String> rewriter, @Nonnull final TypeReference typeReference) {
        return new BaseTypeReference() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.4
            @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
            @Nonnull
            public String getType() {
                return (String) rewriter.rewrite(typeReference.getType());
            }
        };
    }

    @Nonnull
    public static MethodHandleReference rewriteMethodHandleReference(@Nonnull final Rewriters rewriters, @Nonnull final MethodHandleReference methodHandleReference) {
        switch (methodHandleReference.getMethodHandleType()) {
            case 0:
            case 1:
            case 2:
            case 3:
                return new BaseMethodHandleReference() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.5
                    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
                    public int getMethodHandleType() {
                        return methodHandleReference.getMethodHandleType();
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
                    @Nonnull
                    public Reference getMemberReference() {
                        return rewriters.getFieldReferenceRewriter().rewrite((FieldReference) methodHandleReference.getMemberReference());
                    }
                };
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return new BaseMethodHandleReference() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.6
                    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
                    public int getMethodHandleType() {
                        return methodHandleReference.getMethodHandleType();
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference
                    @Nonnull
                    public Reference getMemberReference() {
                        return rewriters.getMethodReferenceRewriter().rewrite((MethodReference) methodHandleReference.getMemberReference());
                    }
                };
            default:
                throw new ExceptionWithContext("Invalid method handle type: %d", Integer.valueOf(methodHandleReference.getMethodHandleType()));
        }
    }

    @Nonnull
    public static MethodProtoReference rewriteMethodProtoReference(@Nonnull final Rewriter<String> rewriter, @Nonnull final MethodProtoReference methodProtoReference) {
        return new BaseMethodProtoReference() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.7
            @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
            @Nonnull
            public List<? extends CharSequence> getParameterTypes() {
                return RewriterUtils.rewriteList(rewriter, (List) methodProtoReference.getParameterTypes().stream().map(new Function<CharSequence, String>() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.7.1
                    @Override // java.util.function.Function
                    @Nonnull
                    public String apply(CharSequence charSequence) {
                        return charSequence.toString();
                    }
                }).collect(Collectors.toList()));
            }

            @Override // com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference
            @Nonnull
            public String getReturnType() {
                return (String) rewriter.rewrite(methodProtoReference.getReturnType());
            }
        };
    }

    @Nonnull
    public static EncodedValue rewriteValue(@Nonnull final Rewriters rewriters, @Nonnull final EncodedValue encodedValue) {
        int valueType = encodedValue.getValueType();
        if (valueType != 4 && valueType != 6 && valueType != 16 && valueType != 17) {
            switch (valueType) {
                case 21:
                    return new BaseMethodTypeEncodedValue() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.8
                        @Override // com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue
                        @Nonnull
                        public MethodProtoReference getValue() {
                            return RewriterUtils.rewriteMethodProtoReference(rewriters.getTypeRewriter(), ((MethodTypeEncodedValue) encodedValue).getValue());
                        }
                    };
                case 22:
                    return new BaseMethodHandleEncodedValue() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.9
                        @Override // com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue
                        @Nonnull
                        public MethodHandleReference getValue() {
                            return RewriterUtils.rewriteMethodHandleReference(rewriters, ((MethodHandleEncodedValue) encodedValue).getValue());
                        }
                    };
                case 23:
                    break;
                case 24:
                    return new BaseTypeEncodedValue() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.10
                        @Override // com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue
                        @Nonnull
                        public String getValue() {
                            return rewriters.getTypeRewriter().rewrite(((TypeEncodedValue) encodedValue).getValue());
                        }
                    };
                case 25:
                    return new BaseFieldEncodedValue() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.11
                        @Override // com.android.tools.smali.dexlib2.iface.value.FieldEncodedValue
                        @Nonnull
                        public FieldReference getValue() {
                            return rewriters.getFieldReferenceRewriter().rewrite(((FieldEncodedValue) encodedValue).getValue());
                        }
                    };
                case 26:
                    return new BaseMethodEncodedValue() { // from class: com.android.tools.smali.dexlib2.rewriter.RewriterUtils.12
                        @Override // com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue
                        @Nonnull
                        public MethodReference getValue() {
                            return rewriters.getMethodReferenceRewriter().rewrite(((MethodEncodedValue) encodedValue).getValue());
                        }
                    };
                default:
                    throw new ExceptionWithContext("Unsupported encoded value type: %d", Integer.valueOf(encodedValue.getValueType()));
            }
        }
        return encodedValue;
    }
}
