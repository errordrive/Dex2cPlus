package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.BooleanEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ByteEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.CharEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.DoubleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EnumEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FieldEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FloatEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.IntEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.LongEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ShortEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.StringEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue;
import com.android.tools.smali.dexlib2.writer.DexWriter;
import com.android.tools.smali.dexlib2.writer.io.DexDataStore;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;
import com.android.tools.smali.util.ExceptionWithContext;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexPool extends DexWriter<CharSequence, StringReference, CharSequence, TypeReference, MethodProtoReference, FieldReference, MethodReference, PoolClassDef, CallSiteReference, MethodHandleReference, Annotation, Set<? extends Annotation>, TypeListPool.Key<? extends Collection<? extends CharSequence>>, Field, PoolMethod, ArrayEncodedValue, EncodedValue, AnnotationElement, StringPool, TypePool, ProtoPool, FieldPool, MethodPool, ClassPool, CallSitePool, MethodHandlePool, TypeListPool, AnnotationPool, AnnotationSetPool, EncodedArrayPool> {
    private final BasePool<?, ?>[] sections;

    /* JADX WARN: Multi-variable type inference failed */
    public DexPool(Opcodes opcodes) {
        super(opcodes);
        this.sections = new BasePool[]{(BasePool) this.stringSection, (BasePool) this.typeSection, (BasePool) this.protoSection, (BasePool) this.fieldSection, (BasePool) this.methodSection, (BasePool) this.classSection, (BasePool) this.callSiteSection, (BasePool) this.methodHandleSection, (BasePool) this.typeListSection, (BasePool) this.annotationSection, (BasePool) this.annotationSetSection, (BasePool) this.encodedArraySection};
    }

    @Override // com.android.tools.smali.dexlib2.writer.DexWriter
    @Nonnull
    protected DexWriter<CharSequence, StringReference, CharSequence, TypeReference, MethodProtoReference, FieldReference, MethodReference, PoolClassDef, CallSiteReference, MethodHandleReference, Annotation, Set<? extends Annotation>, TypeListPool.Key<? extends Collection<? extends CharSequence>>, Field, PoolMethod, ArrayEncodedValue, EncodedValue, AnnotationElement, StringPool, TypePool, ProtoPool, FieldPool, MethodPool, ClassPool, CallSitePool, MethodHandlePool, TypeListPool, AnnotationPool, AnnotationSetPool, EncodedArrayPool>.SectionProvider getSectionProvider() {
        return new DexPoolSectionProvider();
    }

    public static void writeTo(@Nonnull DexDataStore dexDataStore, @Nonnull DexFile dexFile) throws IOException {
        DexPool dexPool = new DexPool(dexFile.getOpcodes());
        Iterator<? extends ClassDef> it = dexFile.getClasses().iterator();
        while (it.hasNext()) {
            dexPool.internClass(it.next());
        }
        dexPool.writeTo(dexDataStore);
    }

    public static void writeTo(@Nonnull String str, @Nonnull DexFile dexFile) throws IOException {
        DexPool dexPool = new DexPool(dexFile.getOpcodes());
        Iterator<? extends ClassDef> it = dexFile.getClasses().iterator();
        while (it.hasNext()) {
            dexPool.internClass(it.next());
        }
        dexPool.writeTo(new FileDataStore(new File(str)));
    }

    public void internClass(ClassDef classDef) {
        ((ClassPool) this.classSection).intern(classDef);
    }

    public void mark() {
        for (BasePool<?, ?> basePool : this.sections) {
            basePool.mark();
        }
    }

    public void reset() {
        for (BasePool<?, ?> basePool : this.sections) {
            basePool.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.tools.smali.dexlib2.writer.DexWriter
    public void writeEncodedValue(@Nonnull DexWriter<CharSequence, StringReference, CharSequence, TypeReference, MethodProtoReference, FieldReference, MethodReference, PoolClassDef, CallSiteReference, MethodHandleReference, Annotation, Set<? extends Annotation>, TypeListPool.Key<? extends Collection<? extends CharSequence>>, Field, PoolMethod, ArrayEncodedValue, EncodedValue, AnnotationElement, StringPool, TypePool, ProtoPool, FieldPool, MethodPool, ClassPool, CallSitePool, MethodHandlePool, TypeListPool, AnnotationPool, AnnotationSetPool, EncodedArrayPool>.InternalEncodedValueWriter internalEncodedValueWriter, @Nonnull EncodedValue encodedValue) throws IOException {
        int valueType = encodedValue.getValueType();
        if (valueType == 0) {
            internalEncodedValueWriter.writeByte(((ByteEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 6) {
            internalEncodedValueWriter.writeLong(((LongEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 2) {
            internalEncodedValueWriter.writeShort(((ShortEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 3) {
            internalEncodedValueWriter.writeChar(((CharEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 4) {
            internalEncodedValueWriter.writeInt(((IntEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 16) {
            internalEncodedValueWriter.writeFloat(((FloatEncodedValue) encodedValue).getValue());
            return;
        }
        if (valueType == 17) {
            internalEncodedValueWriter.writeDouble(((DoubleEncodedValue) encodedValue).getValue());
            return;
        }
        switch (valueType) {
            case 21:
                internalEncodedValueWriter.writeMethodType(((MethodTypeEncodedValue) encodedValue).getValue());
                return;
            case 22:
                internalEncodedValueWriter.writeMethodHandle(((MethodHandleEncodedValue) encodedValue).getValue());
                return;
            case 23:
                internalEncodedValueWriter.writeString(((StringEncodedValue) encodedValue).getValue());
                return;
            case 24:
                internalEncodedValueWriter.writeType(((TypeEncodedValue) encodedValue).getValue());
                return;
            case 25:
                internalEncodedValueWriter.writeField(((FieldEncodedValue) encodedValue).getValue());
                return;
            case 26:
                internalEncodedValueWriter.writeMethod(((MethodEncodedValue) encodedValue).getValue());
                return;
            case 27:
                internalEncodedValueWriter.writeEnum(((EnumEncodedValue) encodedValue).getValue());
                return;
            case 28:
                internalEncodedValueWriter.writeArray(((ArrayEncodedValue) encodedValue).getValue());
                return;
            case 29:
                AnnotationEncodedValue annotationEncodedValue = (AnnotationEncodedValue) encodedValue;
                internalEncodedValueWriter.writeAnnotation(annotationEncodedValue.getType(), annotationEncodedValue.getElements());
                return;
            case 30:
                internalEncodedValueWriter.writeNull();
                return;
            case 31:
                internalEncodedValueWriter.writeBoolean(((BooleanEncodedValue) encodedValue).getValue());
                return;
            default:
                throw new ExceptionWithContext("Unrecognized value type: %d", Integer.valueOf(encodedValue.getValueType()));
        }
    }

    void internEncodedValue(@Nonnull EncodedValue encodedValue) {
        switch (encodedValue.getValueType()) {
            case 21:
                ((ProtoPool) this.protoSection).intern(((MethodTypeEncodedValue) encodedValue).getValue());
                break;
            case 22:
                ((MethodHandlePool) this.methodHandleSection).intern(((MethodHandleEncodedValue) encodedValue).getValue());
                break;
            case 23:
                ((StringPool) this.stringSection).intern(((StringEncodedValue) encodedValue).getValue());
                break;
            case 24:
                ((TypePool) this.typeSection).intern(((TypeEncodedValue) encodedValue).getValue());
                break;
            case 25:
                ((FieldPool) this.fieldSection).intern(((FieldEncodedValue) encodedValue).getValue());
                break;
            case 26:
                ((MethodPool) this.methodSection).intern(((MethodEncodedValue) encodedValue).getValue());
                break;
            case 27:
                ((FieldPool) this.fieldSection).intern(((EnumEncodedValue) encodedValue).getValue());
                break;
            case 28:
                Iterator<? extends EncodedValue> it = ((ArrayEncodedValue) encodedValue).getValue().iterator();
                while (it.hasNext()) {
                    internEncodedValue(it.next());
                }
                break;
            case 29:
                AnnotationEncodedValue annotationEncodedValue = (AnnotationEncodedValue) encodedValue;
                ((TypePool) this.typeSection).intern(annotationEncodedValue.getType());
                for (AnnotationElement annotationElement : annotationEncodedValue.getElements()) {
                    ((StringPool) this.stringSection).intern(annotationElement.getName());
                    internEncodedValue(annotationElement.getValue());
                }
                break;
        }
    }

    protected class DexPoolSectionProvider extends DexWriter<CharSequence, StringReference, CharSequence, TypeReference, MethodProtoReference, FieldReference, MethodReference, PoolClassDef, CallSiteReference, MethodHandleReference, Annotation, Set<? extends Annotation>, TypeListPool.Key<? extends Collection<? extends CharSequence>>, Field, PoolMethod, ArrayEncodedValue, EncodedValue, AnnotationElement, StringPool, TypePool, ProtoPool, FieldPool, MethodPool, ClassPool, CallSitePool, MethodHandlePool, TypeListPool, AnnotationPool, AnnotationSetPool, EncodedArrayPool>.SectionProvider {
        protected DexPoolSectionProvider() {
            super();
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public StringPool getStringSection() {
            return new StringPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public TypePool getTypeSection() {
            return new TypePool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public ProtoPool getProtoSection() {
            return new ProtoPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public FieldPool getFieldSection() {
            return new FieldPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public MethodPool getMethodSection() {
            return new MethodPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public ClassPool getClassSection() {
            return new ClassPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public CallSitePool getCallSiteSection() {
            return new CallSitePool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public MethodHandlePool getMethodHandleSection() {
            return new MethodHandlePool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public TypeListPool getTypeListSection() {
            return new TypeListPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public AnnotationPool getAnnotationSection() {
            return new AnnotationPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public AnnotationSetPool getAnnotationSetSection() {
            return new AnnotationSetPool(DexPool.this);
        }

        @Override // com.android.tools.smali.dexlib2.writer.DexWriter.SectionProvider
        @Nonnull
        public EncodedArrayPool getEncodedArraySection() {
            return new EncodedArrayPool(DexPool.this);
        }
    }
}
