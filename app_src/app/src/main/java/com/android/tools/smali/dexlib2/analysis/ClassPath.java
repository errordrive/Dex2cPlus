package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.analysis.reflection.ReflectionClassDef;
import com.android.tools.smali.dexlib2.analysis.util.LruCache;
import com.android.tools.smali.dexlib2.analysis.util.MemoizingSupplier;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.immutable.ImmutableDexFile;
import com.android.tools.smali.util.IteratorUtils;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Supplier;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ClassPath {
    public static final int NOT_ART = -1;
    public static final int NOT_SPECIFIED = -2;
    private final boolean checkPackagePrivateAccess;

    @Nonnull
    private List<ClassProvider> classProviders;
    private final Supplier<OdexedFieldInstructionMapper> fieldInstructionMapperSupplier;

    @Nonnull
    private LruCache<String, TypeProto> loadedClasses;
    public final int oatVersion;

    @Nonnull
    private final TypeProto unknownClass;

    public ClassPath(ClassProvider... classProviderArr) throws IOException {
        this(Arrays.asList(classProviderArr), false, -1);
    }

    public ClassPath(Iterable<ClassProvider> iterable) throws IOException {
        this(iterable, false, -1);
    }

    public ClassPath(@Nonnull Iterable<? extends ClassProvider> iterable, boolean z, int i) {
        this.loadedClasses = new LruCache<String, TypeProto>(30000) { // from class: com.android.tools.smali.dexlib2.analysis.ClassPath.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.tools.smali.dexlib2.analysis.util.LruCache
            public TypeProto create(String str) {
                if (str.charAt(0) == '[') {
                    return new ArrayProto(ClassPath.this, str);
                }
                return new ClassProto(ClassPath.this, str);
            }
        };
        this.fieldInstructionMapperSupplier = MemoizingSupplier.memoize(new Supplier<OdexedFieldInstructionMapper>() { // from class: com.android.tools.smali.dexlib2.analysis.ClassPath.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.function.Supplier
            public OdexedFieldInstructionMapper get() {
                return new OdexedFieldInstructionMapper(ClassPath.this.isArt());
            }
        });
        UnknownClassProto unknownClassProto = new UnknownClassProto(this);
        this.unknownClass = unknownClassProto;
        this.loadedClasses.put(unknownClassProto.getType(), unknownClassProto);
        this.checkPackagePrivateAccess = z;
        this.oatVersion = i;
        loadPrimitiveType("Z");
        loadPrimitiveType("B");
        loadPrimitiveType("S");
        loadPrimitiveType("C");
        loadPrimitiveType("I");
        loadPrimitiveType("J");
        loadPrimitiveType("F");
        loadPrimitiveType("D");
        loadPrimitiveType("L");
        List<ClassProvider> list = IteratorUtils.toList(iterable);
        this.classProviders = list;
        list.add(getBasicClasses());
    }

    private void loadPrimitiveType(String str) {
        this.loadedClasses.put(str, new PrimitiveProto(this, str));
    }

    private static ClassProvider getBasicClasses() {
        return new DexClassProvider(new ImmutableDexFile(Opcodes.getDefault(), (Collection<? extends ClassDef>) Collections.unmodifiableSet(new HashSet(Arrays.asList(new ReflectionClassDef(Class.class), new ReflectionClassDef(Cloneable.class), new ReflectionClassDef(Object.class), new ReflectionClassDef(Serializable.class), new ReflectionClassDef(String.class), new ReflectionClassDef(Throwable.class))))));
    }

    public boolean isArt() {
        return this.oatVersion != -1;
    }

    @Nonnull
    public TypeProto getClass(@Nonnull CharSequence charSequence) {
        return this.loadedClasses.get(charSequence.toString());
    }

    @Nonnull
    public ClassDef getClassDef(String str) {
        Iterator<ClassProvider> it = this.classProviders.iterator();
        while (it.hasNext()) {
            ClassDef classDef = it.next().getClassDef(str);
            if (classDef != null) {
                return classDef;
            }
        }
        throw new UnresolvedClassException("Could not resolve class %s", str);
    }

    @Nonnull
    public TypeProto getUnknownClass() {
        return this.unknownClass;
    }

    public boolean shouldCheckPackagePrivateAccess() {
        return this.checkPackagePrivateAccess;
    }

    @Nonnull
    public OdexedFieldInstructionMapper getFieldInstructionMapper() {
        return (OdexedFieldInstructionMapper) this.fieldInstructionMapperSupplier.get();
    }
}
