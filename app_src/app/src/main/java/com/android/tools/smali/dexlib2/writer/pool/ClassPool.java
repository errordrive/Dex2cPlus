package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.builder.MutableMethodImplementation;
import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.debug.EndLocal;
import com.android.tools.smali.dexlib2.iface.debug.LineNumber;
import com.android.tools.smali.dexlib2.iface.debug.RestartLocal;
import com.android.tools.smali.dexlib2.iface.debug.SetSourceFile;
import com.android.tools.smali.dexlib2.iface.debug.StartLocal;
import com.android.tools.smali.dexlib2.iface.instruction.DualReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.writer.ClassSection;
import com.android.tools.smali.dexlib2.writer.DebugWriter;
import com.android.tools.smali.dexlib2.writer.util.StaticInitializerUtil;
import com.android.tools.smali.util.AbstractForwardSequentialList;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.TransformedIterable;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ClassPool extends BasePool<String, PoolClassDef> implements ClassSection<CharSequence, CharSequence, TypeListPool.Key<? extends Collection<? extends CharSequence>>, PoolClassDef, Field, PoolMethod, Set<? extends Annotation>, ArrayEncodedValue> {
    private static final Predicate<MethodParameter> HAS_PARAMETER_ANNOTATIONS = new Predicate<MethodParameter>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.2
        @Override // java.util.function.Predicate
        public boolean test(MethodParameter methodParameter) {
            return methodParameter.getAnnotations().size() > 0;
        }
    };
    private static final Function<MethodParameter, Set<? extends Annotation>> PARAMETER_ANNOTATIONS = new Function<MethodParameter, Set<? extends Annotation>>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.3
        @Override // java.util.function.Function
        public Set<? extends Annotation> apply(MethodParameter methodParameter) {
            return methodParameter.getAnnotations();
        }
    };
    private List<PoolClassDef> sortedClasses;

    public ClassPool(@Nonnull DexPool dexPool) {
        super(dexPool);
        this.sortedClasses = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull ClassDef classDef) {
        PoolClassDef poolClassDef = new PoolClassDef(classDef);
        if (((PoolClassDef) this.internedItems.put((Key) poolClassDef.getType(), (Value) poolClassDef)) != null) {
            throw new ExceptionWithContext("Class %s has already been interned", poolClassDef.getType());
        }
        ((TypePool) this.dexPool.typeSection).intern(poolClassDef.getType());
        ((TypePool) this.dexPool.typeSection).internNullable(poolClassDef.getSuperclass());
        ((TypeListPool) this.dexPool.typeListSection).intern(poolClassDef.getInterfaces());
        ((StringPool) this.dexPool.stringSection).internNullable(poolClassDef.getSourceFile());
        HashSet hashSet = new HashSet();
        for (Field field : poolClassDef.getFields()) {
            String shortFieldDescriptor = DexFormatter.INSTANCE.getShortFieldDescriptor(field);
            if (!hashSet.add(shortFieldDescriptor)) {
                throw new ExceptionWithContext("Multiple definitions for field %s->%s", poolClassDef.getType(), shortFieldDescriptor);
            }
            ((FieldPool) this.dexPool.fieldSection).intern(field);
            EncodedValue initialValue = field.getInitialValue();
            if (initialValue != null) {
                this.dexPool.internEncodedValue(initialValue);
            }
            ((AnnotationSetPool) this.dexPool.annotationSetSection).intern(field.getAnnotations());
            ArrayEncodedValue staticInitializers = getStaticInitializers(poolClassDef);
            if (staticInitializers != null) {
                ((EncodedArrayPool) this.dexPool.encodedArraySection).intern(staticInitializers);
            }
        }
        HashSet hashSet2 = new HashSet();
        for (PoolMethod poolMethod : poolClassDef.getMethods()) {
            String shortMethodDescriptor = DexFormatter.INSTANCE.getShortMethodDescriptor(poolMethod);
            if (!hashSet2.add(shortMethodDescriptor)) {
                throw new ExceptionWithContext("Multiple definitions for method %s->%s", poolClassDef.getType(), shortMethodDescriptor);
            }
            ((MethodPool) this.dexPool.methodSection).intern(poolMethod);
            internCode(poolMethod);
            internDebug(poolMethod);
            ((AnnotationSetPool) this.dexPool.annotationSetSection).intern(poolMethod.getAnnotations());
            Iterator<? extends MethodParameter> it = poolMethod.getParameters().iterator();
            while (it.hasNext()) {
                ((AnnotationSetPool) this.dexPool.annotationSetSection).intern(it.next().getAnnotations());
            }
        }
        ((AnnotationSetPool) this.dexPool.annotationSetSection).intern(poolClassDef.getAnnotations());
    }

    private void internCode(@Nonnull Method method) {
        MethodImplementation implementation = method.getImplementation();
        if (implementation != null) {
            boolean z = false;
            for (Instruction instruction : implementation.getInstructions()) {
                if (instruction instanceof ReferenceInstruction) {
                    ReferenceInstruction referenceInstruction = (ReferenceInstruction) instruction;
                    internReference(referenceInstruction.getReference(), referenceInstruction.getReferenceType());
                }
                if (instruction instanceof DualReferenceInstruction) {
                    DualReferenceInstruction dualReferenceInstruction = (DualReferenceInstruction) instruction;
                    internReference(dualReferenceInstruction.getReference2(), dualReferenceInstruction.getReferenceType2());
                }
                z = true;
            }
            List<? extends TryBlock<? extends ExceptionHandler>> tryBlocks = implementation.getTryBlocks();
            if (!z && tryBlocks.size() > 0) {
                throw new ExceptionWithContext("Method %s has no instructions, but has try blocks.", method);
            }
            Iterator<? extends TryBlock<? extends ExceptionHandler>> it = implementation.getTryBlocks().iterator();
            while (it.hasNext()) {
                Iterator it2 = it.next().getExceptionHandlers().iterator();
                while (it2.hasNext()) {
                    ((TypePool) this.dexPool.typeSection).internNullable(((ExceptionHandler) it2.next()).getExceptionType());
                }
            }
        }
    }

    private void internReference(@Nonnull Reference reference, int i) {
        switch (i) {
            case 0:
                ((StringPool) this.dexPool.stringSection).intern((StringReference) reference);
                return;
            case 1:
                ((TypePool) this.dexPool.typeSection).intern(((TypeReference) reference).getType());
                return;
            case 2:
                ((FieldPool) this.dexPool.fieldSection).intern((FieldReference) reference);
                return;
            case 3:
                ((MethodPool) this.dexPool.methodSection).intern((MethodReference) reference);
                return;
            case 4:
                ((ProtoPool) this.dexPool.protoSection).intern((MethodProtoReference) reference);
                return;
            case 5:
                ((CallSitePool) this.dexPool.callSiteSection).intern((CallSiteReference) reference);
                return;
            case 6:
                ((MethodHandlePool) this.dexPool.methodHandleSection).intern((MethodHandleReference) reference);
                return;
            default:
                throw new ExceptionWithContext("Unrecognized reference type: %d", Integer.valueOf(i));
        }
    }

    private void internDebug(@Nonnull Method method) {
        Iterator<? extends MethodParameter> it = method.getParameters().iterator();
        while (it.hasNext()) {
            String name = it.next().getName();
            if (name != null) {
                ((StringPool) this.dexPool.stringSection).intern(name);
            }
        }
        MethodImplementation implementation = method.getImplementation();
        if (implementation != null) {
            for (DebugItem debugItem : implementation.getDebugItems()) {
                int debugItemType = debugItem.getDebugItemType();
                if (debugItemType == 3) {
                    StartLocal startLocal = (StartLocal) debugItem;
                    ((StringPool) this.dexPool.stringSection).internNullable(startLocal.getName());
                    ((TypePool) this.dexPool.typeSection).internNullable(startLocal.getType());
                    ((StringPool) this.dexPool.stringSection).internNullable(startLocal.getSignature());
                } else if (debugItemType == 9) {
                    ((StringPool) this.dexPool.stringSection).internNullable(((SetSourceFile) debugItem).getSourceFile());
                }
            }
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<? extends PoolClassDef> getSortedClasses() {
        if (this.sortedClasses == null) {
            this.sortedClasses = CollectionUtils.immutableSortedCopy(this.internedItems.values(), CollectionUtils.usingToStringOrdering());
        }
        return this.sortedClasses;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Map.Entry<? extends PoolClassDef, Integer> getClassEntryByType(@Nullable CharSequence charSequence) {
        final PoolClassDef poolClassDef;
        if (charSequence == null || (poolClassDef = (PoolClassDef) this.internedItems.get(charSequence.toString())) == null) {
            return null;
        }
        return new Map.Entry<PoolClassDef, Integer>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Map.Entry
            public PoolClassDef getKey() {
                return poolClassDef;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Map.Entry
            public Integer getValue() {
                return Integer.valueOf(poolClassDef.classDefIndex);
            }

            @Override // java.util.Map.Entry
            public Integer setValue(Integer num) {
                poolClassDef.classDefIndex = num.intValue();
                return num;
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public CharSequence getType(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getType();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getAccessFlags(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getAccessFlags();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public CharSequence getSuperclass(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getSuperclass();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public TypeListPool.Key<List<String>> getInterfaces(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.interfaces;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public CharSequence getSourceFile(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getSourceFile();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public ArrayEncodedValue getStaticInitializers(@Nonnull PoolClassDef poolClassDef) {
        return StaticInitializerUtil.getStaticInitializers(poolClassDef.getStaticFields());
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<? extends Field> getSortedStaticFields(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getStaticFields();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<? extends Field> getSortedInstanceFields(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getInstanceFields();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<? extends Field> getSortedFields(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getFields();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<PoolMethod> getSortedDirectMethods(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getDirectMethods();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<PoolMethod> getSortedVirtualMethods(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getVirtualMethods();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Collection<? extends PoolMethod> getSortedMethods(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.getMethods();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getFieldAccessFlags(@Nonnull Field field) {
        return field.getAccessFlags();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getMethodAccessFlags(@Nonnull PoolMethod poolMethod) {
        return poolMethod.getAccessFlags();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Set<HiddenApiRestriction> getFieldHiddenApiRestrictions(@Nonnull Field field) {
        return field.getHiddenApiRestrictions();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public Set<HiddenApiRestriction> getMethodHiddenApiRestrictions(@Nonnull PoolMethod poolMethod) {
        return poolMethod.getHiddenApiRestrictions();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Set<? extends Annotation> getClassAnnotations(@Nonnull PoolClassDef poolClassDef) {
        Set<? extends Annotation> annotations = poolClassDef.getAnnotations();
        if (annotations.size() == 0) {
            return null;
        }
        return annotations;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Set<? extends Annotation> getFieldAnnotations(@Nonnull Field field) {
        Set<? extends Annotation> annotations = field.getAnnotations();
        if (annotations.size() == 0) {
            return null;
        }
        return annotations;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Set<? extends Annotation> getMethodAnnotations(@Nonnull PoolMethod poolMethod) {
        Set<? extends Annotation> annotations = poolMethod.getAnnotations();
        if (annotations.size() == 0) {
            return null;
        }
        return annotations;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public List<? extends Set<? extends Annotation>> getParameterAnnotations(@Nonnull PoolMethod poolMethod) {
        final List<? extends MethodParameter> parameters = poolMethod.getParameters();
        if (parameters.stream().anyMatch(HAS_PARAMETER_ANNOTATIONS)) {
            return new AbstractForwardSequentialList<Set<? extends Annotation>>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.4
                @Override // com.android.tools.smali.util.AbstractForwardSequentialList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
                @Nonnull
                public Iterator<Set<? extends Annotation>> iterator() {
                    return new TransformedIterable.TransformedIterator(parameters.iterator(), ClassPool.PARAMETER_ANNOTATIONS);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return parameters.size();
                }
            };
        }
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Iterable<? extends DebugItem> getDebugItems(@Nonnull PoolMethod poolMethod) {
        MethodImplementation implementation = poolMethod.getImplementation();
        if (implementation != null) {
            return implementation.getDebugItems();
        }
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Iterable<CharSequence> getParameterNames(@Nonnull PoolMethod poolMethod) {
        return new TransformedIterable(poolMethod.getParameters(), new Function<MethodParameter, CharSequence>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.5
            @Override // java.util.function.Function
            @Nullable
            public CharSequence apply(MethodParameter methodParameter) {
                return methodParameter.getName();
            }
        });
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getRegisterCount(@Nonnull PoolMethod poolMethod) {
        MethodImplementation implementation = poolMethod.getImplementation();
        if (implementation != null) {
            return implementation.getRegisterCount();
        }
        return 0;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public Iterable<? extends Instruction> getInstructions(@Nonnull PoolMethod poolMethod) {
        MethodImplementation implementation = poolMethod.getImplementation();
        if (implementation != null) {
            return implementation.getInstructions();
        }
        return null;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public List<? extends TryBlock<? extends ExceptionHandler>> getTryBlocks(@Nonnull PoolMethod poolMethod) {
        MethodImplementation implementation = poolMethod.getImplementation();
        if (implementation != null) {
            return implementation.getTryBlocks();
        }
        return Collections.EMPTY_LIST;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nullable
    public CharSequence getExceptionType(@Nonnull ExceptionHandler exceptionHandler) {
        return exceptionHandler.getExceptionType();
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    @Nonnull
    public MutableMethodImplementation makeMutableMethodImplementation(@Nonnull PoolMethod poolMethod) {
        return new MutableMethodImplementation(poolMethod.getImplementation());
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public void setAnnotationDirectoryOffset(@Nonnull PoolClassDef poolClassDef, int i) {
        poolClassDef.annotationDirectoryOffset = i;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getAnnotationDirectoryOffset(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.annotationDirectoryOffset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public void setAnnotationSetRefListOffset(@Nonnull PoolMethod poolMethod, int i) {
        poolMethod.annotationSetRefListOffset = i;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getAnnotationSetRefListOffset(@Nonnull PoolMethod poolMethod) {
        return poolMethod.annotationSetRefListOffset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public void setCodeItemOffset(@Nonnull PoolMethod poolMethod, int i) {
        poolMethod.codeItemOffset = i;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public int getCodeItemOffset(@Nonnull PoolMethod poolMethod) {
        return poolMethod.codeItemOffset;
    }

    @Override // com.android.tools.smali.dexlib2.writer.ClassSection
    public void writeDebugItem(@Nonnull DebugWriter<CharSequence, CharSequence> debugWriter, DebugItem debugItem) throws IOException {
        switch (debugItem.getDebugItemType()) {
            case 3:
                StartLocal startLocal = (StartLocal) debugItem;
                debugWriter.writeStartLocal(startLocal.getCodeAddress(), startLocal.getRegister(), startLocal.getName(), startLocal.getType(), startLocal.getSignature());
                return;
            case 5:
                EndLocal endLocal = (EndLocal) debugItem;
                debugWriter.writeEndLocal(endLocal.getCodeAddress(), endLocal.getRegister());
                return;
            case 6:
                RestartLocal restartLocal = (RestartLocal) debugItem;
                debugWriter.writeRestartLocal(restartLocal.getCodeAddress(), restartLocal.getRegister());
                return;
            case 7:
                debugWriter.writePrologueEnd(debugItem.getCodeAddress());
                return;
            case 8:
                debugWriter.writeEpilogueBegin(debugItem.getCodeAddress());
                return;
            case 9:
                SetSourceFile setSourceFile = (SetSourceFile) debugItem;
                debugWriter.writeSetSourceFile(setSourceFile.getCodeAddress(), setSourceFile.getSourceFile());
                break;
            case 10:
                LineNumber lineNumber = (LineNumber) debugItem;
                debugWriter.writeLineNumber(lineNumber.getCodeAddress(), lineNumber.getLineNumber());
                return;
        }
        throw new ExceptionWithContext("Unexpected debug item type: %d", Integer.valueOf(debugItem.getDebugItemType()));
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    public int getItemIndex(@Nonnull PoolClassDef poolClassDef) {
        return poolClassDef.classDefIndex;
    }

    @Override // com.android.tools.smali.dexlib2.writer.IndexSection
    @Nonnull
    public Collection<? extends Map.Entry<PoolClassDef, Integer>> getItems() {
        return new AbstractCollection<Map.Entry<PoolClassDef, Integer>>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.6
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            @Nonnull
            public Iterator<Map.Entry<PoolClassDef, Integer>> iterator() {
                return new Iterator<Map.Entry<PoolClassDef, Integer>>() { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.6.1
                    Iterator<PoolClassDef> iter;

                    {
                        this.iter = ClassPool.this.internedItems.values().iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.iter.hasNext();
                    }

                    @Override // java.util.Iterator
                    public Map.Entry<PoolClassDef, Integer> next() {
                        return new Map.Entry<PoolClassDef, Integer>(this.iter.next()) { // from class: com.android.tools.smali.dexlib2.writer.pool.ClassPool.1MapEntry

                            @Nonnull
                            private final PoolClassDef classDef;

                            {
                                this.classDef = poolClassDef;
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // java.util.Map.Entry
                            public PoolClassDef getKey() {
                                return this.classDef;
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // java.util.Map.Entry
                            public Integer getValue() {
                                return Integer.valueOf(this.classDef.classDefIndex);
                            }

                            @Override // java.util.Map.Entry
                            public Integer setValue(Integer num) {
                                int i = this.classDef.classDefIndex;
                                this.classDef.classDefIndex = num.intValue();
                                return Integer.valueOf(i);
                            }
                        };
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public int size() {
                return ClassPool.this.internedItems.size();
            }
        };
    }
}
