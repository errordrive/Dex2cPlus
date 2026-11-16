package com.android.tools.smali.dexlib2.analysis.util;

import com.android.tools.smali.dexlib2.analysis.TypeProto;
import com.android.tools.smali.dexlib2.analysis.UnresolvedClassException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TypeProtoUtils {
    @Nonnull
    public static Iterable<TypeProto> getSuperclassChain(@Nonnull final TypeProto typeProto) {
        return new Iterable<TypeProto>() { // from class: com.android.tools.smali.dexlib2.analysis.util.TypeProtoUtils.1
            @Override // java.lang.Iterable
            public Iterator<TypeProto> iterator() {
                return new Iterator<TypeProto>() { // from class: com.android.tools.smali.dexlib2.analysis.util.TypeProtoUtils.1.1

                    @Nullable
                    private TypeProto type;

                    {
                        this.type = TypeProtoUtils.getSuperclassAsTypeProto(typeProto);
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.type != null;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public TypeProto next() {
                        TypeProto typeProto2 = this.type;
                        if (typeProto2 == null) {
                            throw new NoSuchElementException();
                        }
                        this.type = TypeProtoUtils.getSuperclassAsTypeProto(typeProto2);
                        return typeProto2;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    @Nullable
    public static TypeProto getSuperclassAsTypeProto(@Nonnull TypeProto typeProto) {
        try {
            String superclass = typeProto.getSuperclass();
            if (superclass != null) {
                return typeProto.getClassPath().getClass(superclass);
            }
            return null;
        } catch (UnresolvedClassException unused) {
            return typeProto.getClassPath().getUnknownClass();
        }
    }

    public static boolean extendsFrom(@Nonnull TypeProto typeProto, @Nonnull String str) {
        if (typeProto.getType().equals(str)) {
            return true;
        }
        Iterator<TypeProto> it = getSuperclassChain(typeProto).iterator();
        while (it.hasNext()) {
            if (it.next().getType().equals(str)) {
                return true;
            }
        }
        return false;
    }
}
