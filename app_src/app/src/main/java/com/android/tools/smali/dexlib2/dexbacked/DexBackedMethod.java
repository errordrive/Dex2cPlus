package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.base.reference.BaseMethodReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodReference;
import com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList;
import com.android.tools.smali.dexlib2.dexbacked.util.ParameterIterator;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.util.AbstractForwardSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedMethod extends BaseMethodReference implements Method {
    public final int accessFlags;

    @Nonnull
    public final DexBackedClassDef classDef;
    private final int codeOffset;

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int hiddenApiRestrictions;
    private final int methodAnnotationSetOffset;
    private int methodIdItemOffset;
    public final int methodIndex;
    private final int parameterAnnotationSetListOffset;
    private int parametersOffset;
    private int protoIdItemOffset;
    private final int startOffset;

    public DexBackedMethod(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader, @Nonnull DexBackedClassDef dexBackedClassDef, int i, int i2) {
        this.parametersOffset = -1;
        this.dexFile = dexBackedDexFile;
        this.classDef = dexBackedClassDef;
        this.startOffset = dexReader.getOffset();
        this.methodIndex = dexReader.readLargeUleb128() + i;
        this.accessFlags = dexReader.readSmallUleb128();
        this.codeOffset = dexReader.readSmallUleb128();
        this.hiddenApiRestrictions = i2;
        this.methodAnnotationSetOffset = 0;
        this.parameterAnnotationSetListOffset = 0;
    }

    public DexBackedMethod(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader, @Nonnull DexBackedClassDef dexBackedClassDef, int i, @Nonnull AnnotationsDirectory.AnnotationIterator annotationIterator, @Nonnull AnnotationsDirectory.AnnotationIterator annotationIterator2, int i2) {
        this.parametersOffset = -1;
        this.dexFile = dexBackedDexFile;
        this.classDef = dexBackedClassDef;
        this.startOffset = dexReader.getOffset();
        int largeUleb128 = dexReader.readLargeUleb128() + i;
        this.methodIndex = largeUleb128;
        this.accessFlags = dexReader.readSmallUleb128();
        this.codeOffset = dexReader.readSmallUleb128();
        this.hiddenApiRestrictions = i2;
        this.methodAnnotationSetOffset = annotationIterator.seekTo(largeUleb128);
        this.parameterAnnotationSetListOffset = annotationIterator2.seekTo(largeUleb128);
    }

    public int getMethodIndex() {
        return this.methodIndex;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getDefiningClass() {
        return this.classDef.getType();
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getName() {
        return (String) this.dexFile.getStringSection().get(this.dexFile.getBuffer().readSmallUint(getMethodIdItemOffset() + 4));
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference, com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public String getReturnType() {
        return (String) this.dexFile.getTypeSection().get(this.dexFile.getBuffer().readSmallUint(getProtoIdItemOffset() + 4));
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nonnull
    public List<? extends MethodParameter> getParameters() {
        if (getParametersOffset() > 0) {
            final List<String> parameterTypes = getParameterTypes();
            return new AbstractForwardSequentialList<MethodParameter>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedMethod.1
                @Override // com.android.tools.smali.util.AbstractForwardSequentialList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
                @Nonnull
                public Iterator<MethodParameter> iterator() {
                    return new ParameterIterator(parameterTypes, DexBackedMethod.this.getParameterAnnotations(), DexBackedMethod.this.getParameterNames());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return parameterTypes.size();
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    @Nonnull
    public List<? extends Set<? extends DexBackedAnnotation>> getParameterAnnotations() {
        return AnnotationsDirectory.getParameterAnnotations(this.dexFile, this.parameterAnnotationSetListOffset);
    }

    @Nonnull
    public Iterator<String> getParameterNames() {
        DexBackedMethodImplementation implementation = getImplementation();
        if (implementation != null) {
            return implementation.getParameterNames(null);
        }
        return Collections.emptyIterator();
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.MethodReference
    @Nonnull
    public List<String> getParameterTypes() {
        int parametersOffset = getParametersOffset();
        if (parametersOffset > 0) {
            final int smallUint = this.dexFile.getDataBuffer().readSmallUint(parametersOffset);
            final int i = parametersOffset + 4;
            return new FixedSizeList<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedMethod.2
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
                @Nonnull
                public String readItem(int i2) {
                    return (String) DexBackedMethod.this.dexFile.getTypeSection().get(DexBackedMethod.this.dexFile.getDataBuffer().readUshort(i + (i2 * 2)));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return smallUint;
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends Annotation> getAnnotations() {
        return AnnotationsDirectory.getAnnotations(this.dexFile, this.methodAnnotationSetOffset);
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
        int i = this.hiddenApiRestrictions;
        if (i == 7) {
            return Collections.EMPTY_SET;
        }
        return EnumSet.copyOf((Collection) HiddenApiRestriction.getAllFlags(i));
    }

    @Override // com.android.tools.smali.dexlib2.iface.Method
    @Nullable
    public DexBackedMethodImplementation getImplementation() {
        int i = this.codeOffset;
        if (i <= 0) {
            return null;
        }
        DexBackedDexFile dexBackedDexFile = this.dexFile;
        return dexBackedDexFile.createMethodImplementation(dexBackedDexFile, this, i);
    }

    private int getMethodIdItemOffset() {
        if (this.methodIdItemOffset == 0) {
            this.methodIdItemOffset = this.dexFile.getMethodSection().getOffset(this.methodIndex);
        }
        return this.methodIdItemOffset;
    }

    private int getProtoIdItemOffset() {
        if (this.protoIdItemOffset == 0) {
            this.protoIdItemOffset = this.dexFile.getProtoSection().getOffset(this.dexFile.getBuffer().readUshort(getMethodIdItemOffset() + 2));
        }
        return this.protoIdItemOffset;
    }

    private int getParametersOffset() {
        if (this.parametersOffset == -1) {
            this.parametersOffset = this.dexFile.getBuffer().readSmallUint(getProtoIdItemOffset() + 8);
        }
        return this.parametersOffset;
    }

    public static void skipMethods(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            dexReader.skipUleb128();
            dexReader.skipUleb128();
            dexReader.skipUleb128();
        }
    }

    public int getSize() {
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.startOffset);
        dexReader.readLargeUleb128();
        dexReader.readSmallUleb128();
        dexReader.readSmallUleb128();
        int offset = dexReader.getOffset() - this.startOffset;
        DexBackedMethodImplementation implementation = getImplementation();
        if (implementation != null) {
            offset += implementation.getSize();
        }
        return offset + new DexBackedMethodReference(this.dexFile, this.methodIndex).getSize();
    }
}
