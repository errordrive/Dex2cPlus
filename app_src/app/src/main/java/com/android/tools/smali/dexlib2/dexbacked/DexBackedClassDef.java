package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.base.reference.BaseTypeReference;
import com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory;
import com.android.tools.smali.dexlib2.dexbacked.util.EncodedArrayItemIterator;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableFieldReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference;
import com.android.tools.smali.util.ChainedIterable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedClassDef extends BaseTypeReference implements ClassDef {
    static final int NO_HIDDEN_API_RESTRICTIONS = 7;

    @Nullable
    private AnnotationsDirectory annotationsDirectory;
    private final int classDefOffset;

    @Nonnull
    public final DexBackedDexFile dexFile;
    private final int directMethodCount;

    @Nullable
    private final HiddenApiRestrictionsReader hiddenApiRestrictionsReader;
    private final int instanceFieldCount;
    private final int staticFieldCount;
    private final int staticFieldsOffset;
    private final int virtualMethodCount;
    private int instanceFieldsOffset = 0;
    private int directMethodsOffset = 0;
    private int virtualMethodsOffset = 0;

    public DexBackedClassDef(@Nonnull DexBackedDexFile dexBackedDexFile, int i, int i2) {
        this.dexFile = dexBackedDexFile;
        this.classDefOffset = i;
        int smallUint = dexBackedDexFile.getBuffer().readSmallUint(i + 24);
        if (smallUint == 0) {
            this.staticFieldsOffset = -1;
            this.staticFieldCount = 0;
            this.instanceFieldCount = 0;
            this.directMethodCount = 0;
            this.virtualMethodCount = 0;
        } else {
            DexReader<? extends DexBuffer> dexReader = dexBackedDexFile.getDataBuffer().readerAt(smallUint);
            this.staticFieldCount = dexReader.readSmallUleb128();
            this.instanceFieldCount = dexReader.readSmallUleb128();
            this.directMethodCount = dexReader.readSmallUleb128();
            this.virtualMethodCount = dexReader.readSmallUleb128();
            this.staticFieldsOffset = dexReader.getOffset();
        }
        if (i2 != 0) {
            this.hiddenApiRestrictionsReader = new HiddenApiRestrictionsReader(i2);
        } else {
            this.hiddenApiRestrictionsReader = null;
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.TypeReference, com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public String getType() {
        return (String) this.dexFile.getTypeSection().get(this.dexFile.getBuffer().readSmallUint(this.classDefOffset));
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSuperclass() {
        return this.dexFile.getTypeSection().getOptional(this.dexFile.getBuffer().readOptionalUint(this.classDefOffset + 8));
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    public int getAccessFlags() {
        return this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 4);
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nullable
    public String getSourceFile() {
        return this.dexFile.getStringSection().getOptional(this.dexFile.getBuffer().readOptionalUint(this.classDefOffset + 16));
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public List<String> getInterfaces() {
        final int smallUint = this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 12);
        if (smallUint > 0) {
            final int smallUint2 = this.dexFile.getDataBuffer().readSmallUint(smallUint);
            return new AbstractList<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.1
                @Override // java.util.AbstractList, java.util.List
                @Nonnull
                public String get(int i) {
                    return (String) DexBackedClassDef.this.dexFile.getTypeSection().get(DexBackedClassDef.this.dexFile.getDataBuffer().readUshort(smallUint + 4 + (i * 2)));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return smallUint2;
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends DexBackedAnnotation> getAnnotations() {
        return getAnnotationsDirectory().getClassAnnotations();
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedField> getStaticFields() {
        return getStaticFields(true);
    }

    @Nonnull
    public Iterable<? extends DexBackedField> getStaticFields(final boolean z) {
        if (this.staticFieldCount > 0) {
            DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.staticFieldsOffset);
            final AnnotationsDirectory annotationsDirectory = getAnnotationsDirectory();
            final int smallUint = this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 28);
            final int offset = dexReader.getOffset();
            HiddenApiRestrictionsReader hiddenApiRestrictionsReader = this.hiddenApiRestrictionsReader;
            final VariableSizeListIterator restrictionsForStaticFields = hiddenApiRestrictionsReader == null ? null : hiddenApiRestrictionsReader.getRestrictionsForStaticFields();
            return new Iterable<DexBackedField>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.2
                @Override // java.lang.Iterable
                @Nonnull
                public Iterator<DexBackedField> iterator() {
                    final AnnotationsDirectory.AnnotationIterator fieldAnnotationIterator = annotationsDirectory.getFieldAnnotationIterator();
                    final EncodedArrayItemIterator encodedArrayItemIteratorNewOrEmpty = EncodedArrayItemIterator.newOrEmpty(DexBackedClassDef.this.dexFile, smallUint);
                    return new VariableSizeLookaheadIterator<DexBackedField>(DexBackedClassDef.this.dexFile.getDataBuffer(), offset) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.2.1
                        private int count;

                        @Nullable
                        private FieldReference previousField;
                        private int previousIndex;

                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected /* bridge */ /* synthetic */ DexBackedField readNextItem(@Nonnull DexReader dexReader2) {
                            return readNextItem((DexReader<? extends DexBuffer>) dexReader2);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected DexBackedField readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2) {
                            while (true) {
                                int i = this.count + 1;
                                this.count = i;
                                if (i > DexBackedClassDef.this.staticFieldCount) {
                                    DexBackedClassDef.this.instanceFieldsOffset = dexReader2.getOffset();
                                    return endOfData();
                                }
                                DexReader<? extends DexBuffer> dexReader3 = dexReader2;
                                DexBackedField dexBackedField = new DexBackedField(DexBackedClassDef.this.dexFile, dexReader3, DexBackedClassDef.this, this.previousIndex, encodedArrayItemIteratorNewOrEmpty, fieldAnnotationIterator, restrictionsForStaticFields != null ? ((Integer) restrictionsForStaticFields.next()).intValue() : 7);
                                FieldReference fieldReference = this.previousField;
                                ImmutableFieldReference immutableFieldReferenceOf = ImmutableFieldReference.of(dexBackedField);
                                this.previousField = immutableFieldReferenceOf;
                                this.previousIndex = dexBackedField.fieldIndex;
                                if (!z || fieldReference == null || !fieldReference.equals(immutableFieldReferenceOf)) {
                                    return dexBackedField;
                                }
                                dexReader2 = dexReader3;
                            }
                        }
                    };
                }
            };
        }
        this.instanceFieldsOffset = this.staticFieldsOffset;
        return Collections.EMPTY_SET;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedField> getInstanceFields() {
        return getInstanceFields(true);
    }

    @Nonnull
    public Iterable<? extends DexBackedField> getInstanceFields(final boolean z) {
        if (this.instanceFieldCount > 0) {
            DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(getInstanceFieldsOffset());
            final AnnotationsDirectory annotationsDirectory = getAnnotationsDirectory();
            final int offset = dexReader.getOffset();
            HiddenApiRestrictionsReader hiddenApiRestrictionsReader = this.hiddenApiRestrictionsReader;
            final Iterator restrictionsForInstanceFields = hiddenApiRestrictionsReader == null ? null : hiddenApiRestrictionsReader.getRestrictionsForInstanceFields();
            return new Iterable<DexBackedField>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.3
                @Override // java.lang.Iterable
                @Nonnull
                public Iterator<DexBackedField> iterator() {
                    final AnnotationsDirectory.AnnotationIterator fieldAnnotationIterator = annotationsDirectory.getFieldAnnotationIterator();
                    return new VariableSizeLookaheadIterator<DexBackedField>(DexBackedClassDef.this.dexFile.getDataBuffer(), offset) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.3.1
                        private int count;

                        @Nullable
                        private FieldReference previousField;
                        private int previousIndex;

                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected /* bridge */ /* synthetic */ DexBackedField readNextItem(@Nonnull DexReader dexReader2) {
                            return readNextItem((DexReader<? extends DexBuffer>) dexReader2);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected DexBackedField readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2) {
                            while (true) {
                                int i = this.count + 1;
                                this.count = i;
                                if (i > DexBackedClassDef.this.instanceFieldCount) {
                                    DexBackedClassDef.this.directMethodsOffset = dexReader2.getOffset();
                                    return endOfData();
                                }
                                DexReader<? extends DexBuffer> dexReader3 = dexReader2;
                                DexBackedField dexBackedField = new DexBackedField(DexBackedClassDef.this.dexFile, dexReader3, DexBackedClassDef.this, this.previousIndex, fieldAnnotationIterator, restrictionsForInstanceFields != null ? ((Integer) restrictionsForInstanceFields.next()).intValue() : 7);
                                FieldReference fieldReference = this.previousField;
                                ImmutableFieldReference immutableFieldReferenceOf = ImmutableFieldReference.of(dexBackedField);
                                this.previousField = immutableFieldReferenceOf;
                                this.previousIndex = dexBackedField.fieldIndex;
                                if (!z || fieldReference == null || !fieldReference.equals(immutableFieldReferenceOf)) {
                                    return dexBackedField;
                                }
                                dexReader2 = dexReader3;
                            }
                        }
                    };
                }
            };
        }
        int i = this.instanceFieldsOffset;
        if (i > 0) {
            this.directMethodsOffset = i;
        }
        return Collections.EMPTY_SET;
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedField> getFields() {
        return new ChainedIterable(getStaticFields(), getInstanceFields());
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedMethod> getDirectMethods() {
        return getDirectMethods(true);
    }

    @Nonnull
    public Iterable<? extends DexBackedMethod> getDirectMethods(final boolean z) {
        if (this.directMethodCount > 0) {
            DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(getDirectMethodsOffset());
            final AnnotationsDirectory annotationsDirectory = getAnnotationsDirectory();
            final int offset = dexReader.getOffset();
            HiddenApiRestrictionsReader hiddenApiRestrictionsReader = this.hiddenApiRestrictionsReader;
            final Iterator restrictionsForDirectMethods = hiddenApiRestrictionsReader == null ? null : hiddenApiRestrictionsReader.getRestrictionsForDirectMethods();
            return new Iterable<DexBackedMethod>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.4
                @Override // java.lang.Iterable
                @Nonnull
                public Iterator<DexBackedMethod> iterator() {
                    final AnnotationsDirectory.AnnotationIterator methodAnnotationIterator = annotationsDirectory.getMethodAnnotationIterator();
                    final AnnotationsDirectory.AnnotationIterator parameterAnnotationIterator = annotationsDirectory.getParameterAnnotationIterator();
                    return new VariableSizeLookaheadIterator<DexBackedMethod>(DexBackedClassDef.this.dexFile.getDataBuffer(), offset) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.4.1
                        private int count;
                        private int previousIndex;

                        @Nullable
                        private MethodReference previousMethod;

                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected /* bridge */ /* synthetic */ DexBackedMethod readNextItem(@Nonnull DexReader dexReader2) {
                            return readNextItem((DexReader<? extends DexBuffer>) dexReader2);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                        @Nullable
                        protected DexBackedMethod readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader2) {
                            while (true) {
                                int i = this.count + 1;
                                this.count = i;
                                if (i > DexBackedClassDef.this.directMethodCount) {
                                    DexBackedClassDef.this.virtualMethodsOffset = dexReader2.getOffset();
                                    return endOfData();
                                }
                                DexReader<? extends DexBuffer> dexReader3 = dexReader2;
                                DexBackedMethod dexBackedMethod = new DexBackedMethod(DexBackedClassDef.this.dexFile, dexReader3, DexBackedClassDef.this, this.previousIndex, methodAnnotationIterator, parameterAnnotationIterator, restrictionsForDirectMethods != null ? ((Integer) restrictionsForDirectMethods.next()).intValue() : 7);
                                MethodReference methodReference = this.previousMethod;
                                ImmutableMethodReference immutableMethodReferenceOf = ImmutableMethodReference.of(dexBackedMethod);
                                this.previousMethod = immutableMethodReferenceOf;
                                this.previousIndex = dexBackedMethod.methodIndex;
                                if (!z || methodReference == null || !methodReference.equals(immutableMethodReferenceOf)) {
                                    return dexBackedMethod;
                                }
                                dexReader2 = dexReader3;
                            }
                        }
                    };
                }
            };
        }
        int i = this.directMethodsOffset;
        if (i > 0) {
            this.virtualMethodsOffset = i;
        }
        return Collections.EMPTY_SET;
    }

    @Nonnull
    public Iterable<? extends DexBackedMethod> getVirtualMethods(boolean z) {
        if (this.virtualMethodCount > 0) {
            DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(getVirtualMethodsOffset());
            AnnotationsDirectory annotationsDirectory = getAnnotationsDirectory();
            int offset = dexReader.getOffset();
            HiddenApiRestrictionsReader hiddenApiRestrictionsReader = this.hiddenApiRestrictionsReader;
            return new AnonymousClass5(annotationsDirectory, offset, hiddenApiRestrictionsReader == null ? null : hiddenApiRestrictionsReader.getRestrictionsForVirtualMethods(), z);
        }
        return Collections.EMPTY_SET;
    }

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef$5, reason: invalid class name */
    class AnonymousClass5 implements Iterable<DexBackedMethod> {
        final AnnotationsDirectory.AnnotationIterator methodAnnotationIterator;
        final AnnotationsDirectory.AnnotationIterator parameterAnnotationIterator;
        final /* synthetic */ AnnotationsDirectory val$annotationsDirectory;
        final /* synthetic */ Iterator val$hiddenApiRestrictionIterator;
        final /* synthetic */ int val$methodsStartOffset;
        final /* synthetic */ boolean val$skipDuplicates;

        AnonymousClass5(AnnotationsDirectory annotationsDirectory, int i, Iterator it, boolean z) {
            this.val$annotationsDirectory = annotationsDirectory;
            this.val$methodsStartOffset = i;
            this.val$hiddenApiRestrictionIterator = it;
            this.val$skipDuplicates = z;
            this.methodAnnotationIterator = annotationsDirectory.getMethodAnnotationIterator();
            this.parameterAnnotationIterator = annotationsDirectory.getParameterAnnotationIterator();
        }

        @Override // java.lang.Iterable
        @Nonnull
        public Iterator<DexBackedMethod> iterator() {
            return new VariableSizeLookaheadIterator<DexBackedMethod>(DexBackedClassDef.this.dexFile.getDataBuffer(), this.val$methodsStartOffset) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.5.1
                private int count;
                private int previousIndex;

                @Nullable
                private MethodReference previousMethod;

                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                @Nullable
                protected /* bridge */ /* synthetic */ DexBackedMethod readNextItem(@Nonnull DexReader dexReader) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeLookaheadIterator
                @Nullable
                protected DexBackedMethod readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader) {
                    while (true) {
                        int i = this.count + 1;
                        this.count = i;
                        if (i > DexBackedClassDef.this.virtualMethodCount) {
                            return endOfData();
                        }
                        DexReader<? extends DexBuffer> dexReader2 = dexReader;
                        DexBackedMethod dexBackedMethod = new DexBackedMethod(DexBackedClassDef.this.dexFile, dexReader2, DexBackedClassDef.this, this.previousIndex, AnonymousClass5.this.methodAnnotationIterator, AnonymousClass5.this.parameterAnnotationIterator, AnonymousClass5.this.val$hiddenApiRestrictionIterator != null ? ((Integer) AnonymousClass5.this.val$hiddenApiRestrictionIterator.next()).intValue() : 7);
                        MethodReference methodReference = this.previousMethod;
                        ImmutableMethodReference immutableMethodReferenceOf = ImmutableMethodReference.of(dexBackedMethod);
                        this.previousMethod = immutableMethodReferenceOf;
                        this.previousIndex = dexBackedMethod.methodIndex;
                        if (!AnonymousClass5.this.val$skipDuplicates || methodReference == null || !methodReference.equals(immutableMethodReferenceOf)) {
                            return dexBackedMethod;
                        }
                        dexReader = dexReader2;
                    }
                }
            };
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedMethod> getVirtualMethods() {
        return getVirtualMethods(true);
    }

    @Override // com.android.tools.smali.dexlib2.iface.ClassDef
    @Nonnull
    public Iterable<? extends DexBackedMethod> getMethods() {
        return new ChainedIterable(getDirectMethods(), getVirtualMethods());
    }

    private AnnotationsDirectory getAnnotationsDirectory() {
        if (this.annotationsDirectory == null) {
            this.annotationsDirectory = AnnotationsDirectory.newOrEmpty(this.dexFile, this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 20));
        }
        return this.annotationsDirectory;
    }

    private int getInstanceFieldsOffset() {
        int i = this.instanceFieldsOffset;
        if (i > 0) {
            return i;
        }
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(this.staticFieldsOffset);
        DexBackedField.skipFields(dexReader, this.staticFieldCount);
        int offset = dexReader.getOffset();
        this.instanceFieldsOffset = offset;
        return offset;
    }

    private int getDirectMethodsOffset() {
        int i = this.directMethodsOffset;
        if (i > 0) {
            return i;
        }
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(getInstanceFieldsOffset());
        DexBackedField.skipFields(dexReader, this.instanceFieldCount);
        int offset = dexReader.getOffset();
        this.directMethodsOffset = offset;
        return offset;
    }

    private int getVirtualMethodsOffset() {
        int i = this.virtualMethodsOffset;
        if (i > 0) {
            return i;
        }
        DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(getDirectMethodsOffset());
        DexBackedMethod.skipMethods(dexReader, this.directMethodCount);
        int offset = dexReader.getOffset();
        this.virtualMethodsOffset = offset;
        return offset;
    }

    public int getSize() {
        int size = getInterfaces().size();
        int size2 = size > 0 ? 40 + (size * 2) : 36;
        AnnotationsDirectory annotationsDirectory = getAnnotationsDirectory();
        if (!AnnotationsDirectory.EMPTY.equals(annotationsDirectory)) {
            int i = size2 + 16;
            Set<? extends DexBackedAnnotation> classAnnotations = annotationsDirectory.getClassAnnotations();
            size2 = !classAnnotations.isEmpty() ? size2 + 20 + (classAnnotations.size() * 4) : i;
        }
        int smallUint = this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 28);
        if (smallUint != 0) {
            size2 += this.dexFile.getDataBuffer().readerAt(smallUint).peekSmallUleb128Size();
        }
        int smallUint2 = this.dexFile.getBuffer().readSmallUint(this.classDefOffset + 24);
        if (smallUint2 > 0) {
            DexReader<? extends DexBuffer> dexReader = this.dexFile.getDataBuffer().readerAt(smallUint2);
            dexReader.readSmallUleb128();
            dexReader.readSmallUleb128();
            dexReader.readSmallUleb128();
            dexReader.readSmallUleb128();
            size2 += dexReader.getOffset() - smallUint2;
        }
        Iterator<? extends DexBackedField> it = getFields().iterator();
        while (it.hasNext()) {
            size2 += it.next().getSize();
        }
        Iterator<? extends DexBackedMethod> it2 = getMethods().iterator();
        while (it2.hasNext()) {
            size2 += it2.next().getSize();
        }
        return size2;
    }

    private class HiddenApiRestrictionsReader {
        private int directMethodsStartOffset;
        private int instanceFieldsStartOffset;
        private final int startOffset;
        private int virtualMethodsStartOffset;

        public HiddenApiRestrictionsReader(int i) {
            this.startOffset = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public VariableSizeListIterator<Integer> getRestrictionsForStaticFields() {
            return new VariableSizeListIterator<Integer>(DexBackedClassDef.this.dexFile.getDataBuffer(), this.startOffset, DexBackedClassDef.this.staticFieldCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.HiddenApiRestrictionsReader.1
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected /* bridge */ /* synthetic */ Integer readNextItem(@Nonnull DexReader dexReader, int i) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected Integer readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                    return Integer.valueOf(dexReader.readSmallUleb128());
                }

                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator, java.util.ListIterator, java.util.Iterator
                public Integer next() {
                    if (nextIndex() == DexBackedClassDef.this.staticFieldCount) {
                        HiddenApiRestrictionsReader.this.instanceFieldsStartOffset = getReaderOffset();
                    }
                    return (Integer) super.next();
                }
            };
        }

        private int getInstanceFieldsStartOffset() {
            if (this.instanceFieldsStartOffset == 0) {
                DexReader<? extends DexBuffer> dexReader = DexBackedClassDef.this.dexFile.getDataBuffer().readerAt(this.startOffset);
                for (int i = 0; i < DexBackedClassDef.this.staticFieldCount; i++) {
                    dexReader.readSmallUleb128();
                }
                this.instanceFieldsStartOffset = dexReader.getOffset();
            }
            return this.instanceFieldsStartOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Iterator<Integer> getRestrictionsForInstanceFields() {
            return new VariableSizeListIterator<Integer>(DexBackedClassDef.this.dexFile.getDataBuffer(), getInstanceFieldsStartOffset(), DexBackedClassDef.this.instanceFieldCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.HiddenApiRestrictionsReader.2
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected /* bridge */ /* synthetic */ Integer readNextItem(@Nonnull DexReader dexReader, int i) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected Integer readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                    return Integer.valueOf(dexReader.readSmallUleb128());
                }

                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator, java.util.ListIterator, java.util.Iterator
                public Integer next() {
                    if (nextIndex() == DexBackedClassDef.this.instanceFieldCount) {
                        HiddenApiRestrictionsReader.this.directMethodsStartOffset = getReaderOffset();
                    }
                    return (Integer) super.next();
                }
            };
        }

        private int getDirectMethodsStartOffset() {
            if (this.directMethodsStartOffset == 0) {
                DexReader<? extends DexBuffer> dexReader = DexBackedClassDef.this.dexFile.getDataBuffer().readerAt(getInstanceFieldsStartOffset());
                for (int i = 0; i < DexBackedClassDef.this.instanceFieldCount; i++) {
                    dexReader.readSmallUleb128();
                }
                this.directMethodsStartOffset = dexReader.getOffset();
            }
            return this.directMethodsStartOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Iterator<Integer> getRestrictionsForDirectMethods() {
            return new VariableSizeListIterator<Integer>(DexBackedClassDef.this.dexFile.getDataBuffer(), getDirectMethodsStartOffset(), DexBackedClassDef.this.directMethodCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.HiddenApiRestrictionsReader.3
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected /* bridge */ /* synthetic */ Integer readNextItem(@Nonnull DexReader dexReader, int i) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected Integer readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                    return Integer.valueOf(dexReader.readSmallUleb128());
                }

                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator, java.util.ListIterator, java.util.Iterator
                public Integer next() {
                    if (nextIndex() == DexBackedClassDef.this.directMethodCount) {
                        HiddenApiRestrictionsReader.this.virtualMethodsStartOffset = getReaderOffset();
                    }
                    return (Integer) super.next();
                }
            };
        }

        private int getVirtualMethodsStartOffset() {
            if (this.virtualMethodsStartOffset == 0) {
                DexReader<? extends DexBuffer> dexReader = DexBackedClassDef.this.dexFile.getDataBuffer().readerAt(getDirectMethodsStartOffset());
                for (int i = 0; i < DexBackedClassDef.this.directMethodCount; i++) {
                    dexReader.readSmallUleb128();
                }
                this.virtualMethodsStartOffset = dexReader.getOffset();
            }
            return this.virtualMethodsStartOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Iterator<Integer> getRestrictionsForVirtualMethods() {
            return new VariableSizeListIterator<Integer>(DexBackedClassDef.this.dexFile.getDataBuffer(), getVirtualMethodsStartOffset(), DexBackedClassDef.this.virtualMethodCount) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef.HiddenApiRestrictionsReader.4
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected /* bridge */ /* synthetic */ Integer readNextItem(@Nonnull DexReader dexReader, int i) {
                    return readNextItem((DexReader<? extends DexBuffer>) dexReader, i);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeListIterator
                protected Integer readNextItem(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                    return Integer.valueOf(dexReader.readSmallUleb128());
                }
            };
        }
    }
}
