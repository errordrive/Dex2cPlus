package com.android.tools.smali.dexlib2.writer;

import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.Format;
import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.base.BaseAnnotation;
import com.android.tools.smali.dexlib2.base.BaseAnnotationElement;
import com.android.tools.smali.dexlib2.builder.BuilderInstruction;
import com.android.tools.smali.dexlib2.builder.BuilderTryBlock;
import com.android.tools.smali.dexlib2.builder.MutableMethodImplementation;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction31c;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.ItemType;
import com.android.tools.smali.dexlib2.formatter.DexFormatter;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.AnnotationElement;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.debug.LineNumber;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.VariableRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction10x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction11n;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction11x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction12x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20bc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction20t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21ih;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21lh;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21s;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction21t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22b;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22cs;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22s;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction22x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction23x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction30t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31i;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction31t;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction32x;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35c;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35mi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35ms;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rmi;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction3rms;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction45cc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction4rcc;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction51l;
import com.android.tools.smali.dexlib2.iface.instruction.formats.PackedSwitchPayload;
import com.android.tools.smali.dexlib2.iface.instruction.formats.SparseSwitchPayload;
import com.android.tools.smali.dexlib2.iface.reference.CallSiteReference;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodHandleReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodProtoReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.android.tools.smali.dexlib2.util.InstructionUtil;
import com.android.tools.smali.dexlib2.util.MethodUtil;
import com.android.tools.smali.dexlib2.writer.AnnotationSection;
import com.android.tools.smali.dexlib2.writer.AnnotationSetSection;
import com.android.tools.smali.dexlib2.writer.CallSiteSection;
import com.android.tools.smali.dexlib2.writer.ClassSection;
import com.android.tools.smali.dexlib2.writer.EncodedArraySection;
import com.android.tools.smali.dexlib2.writer.FieldSection;
import com.android.tools.smali.dexlib2.writer.MethodHandleSection;
import com.android.tools.smali.dexlib2.writer.MethodSection;
import com.android.tools.smali.dexlib2.writer.ProtoSection;
import com.android.tools.smali.dexlib2.writer.StringSection;
import com.android.tools.smali.dexlib2.writer.TypeListSection;
import com.android.tools.smali.dexlib2.writer.TypeSection;
import com.android.tools.smali.dexlib2.writer.io.DeferredOutputStream;
import com.android.tools.smali.dexlib2.writer.io.DeferredOutputStreamFactory;
import com.android.tools.smali.dexlib2.writer.io.DexDataStore;
import com.android.tools.smali.dexlib2.writer.io.MemoryDeferredOutputStream;
import com.android.tools.smali.dexlib2.writer.util.TryListBuilder;
import com.android.tools.smali.util.ChainedIterable;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.IteratorUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.CharSequence;
import java.lang.Comparable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.Adler32;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class DexWriter<StringKey extends CharSequence, StringRef extends StringReference, TypeKey extends CharSequence, TypeRef extends TypeReference, ProtoRefKey extends MethodProtoReference, FieldRefKey extends FieldReference, MethodRefKey extends MethodReference, ClassKey extends Comparable<? super ClassKey>, CallSiteKey extends CallSiteReference, MethodHandleKey extends MethodHandleReference, AnnotationKey extends Annotation, AnnotationSetKey, TypeListKey, FieldKey, MethodKey, EncodedArrayKey, EncodedValue, AnnotationElement extends AnnotationElement, StringSectionType extends StringSection<StringKey, StringRef>, TypeSectionType extends TypeSection<StringKey, TypeKey, TypeRef>, ProtoSectionType extends ProtoSection<StringKey, TypeKey, ProtoRefKey, TypeListKey>, FieldSectionType extends FieldSection<StringKey, TypeKey, FieldRefKey, FieldKey>, MethodSectionType extends MethodSection<StringKey, TypeKey, ProtoRefKey, MethodRefKey, MethodKey>, ClassSectionType extends ClassSection<StringKey, TypeKey, TypeListKey, ClassKey, FieldKey, MethodKey, AnnotationSetKey, EncodedArrayKey>, CallSiteSectionType extends CallSiteSection<CallSiteKey, EncodedArrayKey>, MethodHandleSectionType extends MethodHandleSection<MethodHandleKey, FieldRefKey, MethodRefKey>, TypeListSectionType extends TypeListSection<TypeKey, TypeListKey>, AnnotationSectionType extends AnnotationSection<StringKey, TypeKey, AnnotationKey, AnnotationElement, EncodedValue>, AnnotationSetSectionType extends AnnotationSetSection<AnnotationKey, AnnotationSetKey>, EncodedArraySectionType extends EncodedArraySection<EncodedArrayKey, EncodedValue>> {
    public static final int MAX_POOL_SIZE = 65536;
    public static final int NO_INDEX = -1;
    public static final int NO_OFFSET = 0;
    private static Comparator<Map.Entry> toStringKeyComparator = new Comparator<Map.Entry>() { // from class: com.android.tools.smali.dexlib2.writer.DexWriter.2
        @Override // java.util.Comparator
        public int compare(Map.Entry entry, Map.Entry entry2) {
            return entry.getKey().toString().compareTo(entry2.getKey().toString());
        }
    };
    public final AnnotationSectionType annotationSection;
    public final AnnotationSetSectionType annotationSetSection;
    public final CallSiteSectionType callSiteSection;
    public final ClassSectionType classSection;
    public final EncodedArraySectionType encodedArraySection;
    public final FieldSectionType fieldSection;
    public final MethodHandleSectionType methodHandleSection;
    public final MethodSectionType methodSection;
    protected final Opcodes opcodes;
    private final IndexSection<?>[] overflowableSections;
    public final ProtoSectionType protoSection;
    public final StringSectionType stringSection;
    public final TypeListSectionType typeListSection;
    public final TypeSectionType typeSection;
    protected int stringIndexSectionOffset = 0;
    protected int typeSectionOffset = 0;
    protected int protoSectionOffset = 0;
    protected int fieldSectionOffset = 0;
    protected int methodSectionOffset = 0;
    protected int classIndexSectionOffset = 0;
    protected int callSiteSectionOffset = 0;
    protected int methodHandleSectionOffset = 0;
    protected int stringDataSectionOffset = 0;
    protected int classDataSectionOffset = 0;
    protected int typeListSectionOffset = 0;
    protected int encodedArraySectionOffset = 0;
    protected int annotationSectionOffset = 0;
    protected int annotationSetSectionOffset = 0;
    protected int annotationSetRefSectionOffset = 0;
    protected int annotationDirectorySectionOffset = 0;
    protected int debugSectionOffset = 0;
    protected int codeSectionOffset = 0;
    protected int hiddenApiRestrictionsOffset = 0;
    protected int mapSectionOffset = 0;
    protected boolean hasHiddenApiRestrictions = false;
    protected int numAnnotationSetRefItems = 0;
    protected int numAnnotationDirectoryItems = 0;
    protected int numDebugInfoItems = 0;
    protected int numCodeItemItems = 0;
    protected int numClassDataItems = 0;
    private final Map<DebugInfoCache, Integer> debugInfoCaches = new HashMap();
    private Comparator<Map.Entry<? extends CallSiteKey, Integer>> callSiteComparator = (Comparator<Map.Entry<? extends CallSiteKey, Integer>>) new Comparator<Map.Entry<? extends CallSiteKey, Integer>>() { // from class: com.android.tools.smali.dexlib2.writer.DexWriter.1
        @Override // java.util.Comparator
        public int compare(Map.Entry<? extends CallSiteKey, Integer> entry, Map.Entry<? extends CallSiteKey, Integer> entry2) {
            return Integer.compare(DexWriter.this.encodedArraySection.getItemOffset(DexWriter.this.callSiteSection.getEncodedCallSite(entry.getKey())), DexWriter.this.encodedArraySection.getItemOffset(DexWriter.this.callSiteSection.getEncodedCallSite(entry2.getKey())));
        }
    };

    @Nonnull
    protected abstract DexWriter<StringKey, StringRef, TypeKey, TypeRef, ProtoRefKey, FieldRefKey, MethodRefKey, ClassKey, CallSiteKey, MethodHandleKey, AnnotationKey, AnnotationSetKey, TypeListKey, FieldKey, MethodKey, EncodedArrayKey, EncodedValue, AnnotationElement, StringSectionType, TypeSectionType, ProtoSectionType, FieldSectionType, MethodSectionType, ClassSectionType, CallSiteSectionType, MethodHandleSectionType, TypeListSectionType, AnnotationSectionType, AnnotationSetSectionType, EncodedArraySectionType>.SectionProvider getSectionProvider();

    protected abstract void writeEncodedValue(@Nonnull DexWriter<StringKey, StringRef, TypeKey, TypeRef, ProtoRefKey, FieldRefKey, MethodRefKey, ClassKey, CallSiteKey, MethodHandleKey, AnnotationKey, AnnotationSetKey, TypeListKey, FieldKey, MethodKey, EncodedArrayKey, EncodedValue, AnnotationElement, StringSectionType, TypeSectionType, ProtoSectionType, FieldSectionType, MethodSectionType, ClassSectionType, CallSiteSectionType, MethodHandleSectionType, TypeListSectionType, AnnotationSectionType, AnnotationSetSectionType, EncodedArraySectionType>.InternalEncodedValueWriter internalEncodedValueWriter, @Nonnull EncodedValue encodedvalue) throws IOException;

    protected DexWriter(Opcodes opcodes) {
        this.opcodes = opcodes;
        DexWriter<StringKey, StringRef, TypeKey, TypeRef, ProtoRefKey, FieldRefKey, MethodRefKey, ClassKey, CallSiteKey, MethodHandleKey, AnnotationKey, AnnotationSetKey, TypeListKey, FieldKey, MethodKey, EncodedArrayKey, EncodedValue, AnnotationElement, StringSectionType, TypeSectionType, ProtoSectionType, FieldSectionType, MethodSectionType, ClassSectionType, CallSiteSectionType, MethodHandleSectionType, TypeListSectionType, AnnotationSectionType, AnnotationSetSectionType, EncodedArraySectionType>.SectionProvider sectionProvider = getSectionProvider();
        this.stringSection = (StringSectionType) sectionProvider.getStringSection();
        TypeSectionType typesectiontype = (TypeSectionType) sectionProvider.getTypeSection();
        this.typeSection = typesectiontype;
        ProtoSectionType protosectiontype = (ProtoSectionType) sectionProvider.getProtoSection();
        this.protoSection = protosectiontype;
        FieldSectionType fieldsectiontype = (FieldSectionType) sectionProvider.getFieldSection();
        this.fieldSection = fieldsectiontype;
        MethodSectionType methodsectiontype = (MethodSectionType) sectionProvider.getMethodSection();
        this.methodSection = methodsectiontype;
        this.classSection = (ClassSectionType) sectionProvider.getClassSection();
        CallSiteSectionType callsitesectiontype = (CallSiteSectionType) sectionProvider.getCallSiteSection();
        this.callSiteSection = callsitesectiontype;
        MethodHandleSectionType methodhandlesectiontype = (MethodHandleSectionType) sectionProvider.getMethodHandleSection();
        this.methodHandleSection = methodhandlesectiontype;
        this.typeListSection = (TypeListSectionType) sectionProvider.getTypeListSection();
        this.annotationSection = (AnnotationSectionType) sectionProvider.getAnnotationSection();
        this.annotationSetSection = (AnnotationSetSectionType) sectionProvider.getAnnotationSetSection();
        this.encodedArraySection = (EncodedArraySectionType) sectionProvider.getEncodedArraySection();
        this.overflowableSections = new IndexSection[]{typesectiontype, protosectiontype, fieldsectiontype, methodsectiontype, callsitesectiontype, methodhandlesectiontype};
    }

    private static <T extends Comparable<? super T>> Comparator<Map.Entry<? extends T, ?>> comparableKeyComparator() {
        return (Comparator<Map.Entry<? extends T, ?>>) new Comparator<Map.Entry<? extends T, ?>>() { // from class: com.android.tools.smali.dexlib2.writer.DexWriter.3
            @Override // java.util.Comparator
            public int compare(Map.Entry<? extends T, ?> entry, Map.Entry<? extends T, ?> entry2) {
                return ((Comparable) entry.getKey()).compareTo(entry2.getKey());
            }
        };
    }

    private static <T extends Comparable<? super T>> Comparator<Map.Entry<?, ? extends T>> comparableValueComparator() {
        return (Comparator<Map.Entry<?, ? extends T>>) new Comparator<Map.Entry<?, ? extends T>>() { // from class: com.android.tools.smali.dexlib2.writer.DexWriter.4
            @Override // java.util.Comparator
            public int compare(Map.Entry<?, ? extends T> entry, Map.Entry<?, ? extends T> entry2) {
                return ((Comparable) entry.getValue()).compareTo(entry2.getValue());
            }
        };
    }

    protected class InternalEncodedValueWriter extends EncodedValueWriter<StringKey, TypeKey, FieldRefKey, MethodRefKey, AnnotationElement, ProtoRefKey, MethodHandleKey, EncodedValue> {
        private InternalEncodedValueWriter(DexDataWriter dexDataWriter) {
            super(dexDataWriter, DexWriter.this.stringSection, DexWriter.this.typeSection, DexWriter.this.fieldSection, DexWriter.this.methodSection, DexWriter.this.protoSection, DexWriter.this.methodHandleSection, DexWriter.this.annotationSection);
        }

        @Override // com.android.tools.smali.dexlib2.writer.EncodedValueWriter
        protected void writeEncodedValue(@Nonnull EncodedValue encodedvalue) throws IOException {
            DexWriter.this.writeEncodedValue(this, encodedvalue);
        }
    }

    private int getDataSectionOffset() {
        return (this.stringSection.getItemCount() * 4) + 112 + (this.typeSection.getItemCount() * 4) + (this.protoSection.getItemCount() * 12) + (this.fieldSection.getItemCount() * 8) + (this.methodSection.getItemCount() * 8) + (this.classSection.getItemCount() * 32) + (this.callSiteSection.getItemCount() * 4) + (this.methodHandleSection.getItemCount() * 8);
    }

    @Nonnull
    public List<String> getMethodReferences() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.methodSection.getItems().iterator();
        while (it.hasNext()) {
            arrayList.add(DexFormatter.INSTANCE.getMethodDescriptor((MethodReference) ((Map.Entry) it.next()).getKey()));
        }
        return arrayList;
    }

    @Nonnull
    public List<String> getFieldReferences() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.fieldSection.getItems().iterator();
        while (it.hasNext()) {
            arrayList.add(DexFormatter.INSTANCE.getFieldDescriptor((FieldReference) ((Map.Entry) it.next()).getKey()));
        }
        return arrayList;
    }

    @Nonnull
    public List<String> getTypeReferences() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.typeSection.getItems().iterator();
        while (it.hasNext()) {
            arrayList.add(((CharSequence) ((Map.Entry) it.next()).getKey()).toString());
        }
        return arrayList;
    }

    public boolean hasOverflowed() {
        return hasOverflowed(65536);
    }

    public boolean hasOverflowed(int i) {
        for (IndexSection<?> indexSection : this.overflowableSections) {
            if (indexSection.getItemCount() > i) {
                return true;
            }
        }
        return false;
    }

    public void writeTo(@Nonnull DexDataStore dexDataStore) throws IOException {
        writeTo(dexDataStore, MemoryDeferredOutputStream.getFactory());
    }

    public void writeTo(@Nonnull DexDataStore dexDataStore, @Nonnull DeferredOutputStreamFactory deferredOutputStreamFactory) throws IOException {
        try {
            int dataSectionOffset = getDataSectionOffset();
            DexDataWriter dexDataWriterOutputAt = outputAt(dexDataStore, 0);
            try {
                DexDataWriter dexDataWriterOutputAt2 = outputAt(dexDataStore, 112);
                try {
                    DexDataWriter dexDataWriterOutputAt3 = outputAt(dexDataStore, dataSectionOffset);
                    try {
                        writeStrings(dexDataWriterOutputAt2, dexDataWriterOutputAt3);
                        writeTypes(dexDataWriterOutputAt2);
                        writeTypeLists(dexDataWriterOutputAt3);
                        writeProtos(dexDataWriterOutputAt2);
                        writeFields(dexDataWriterOutputAt2);
                        writeMethods(dexDataWriterOutputAt2);
                        DexDataWriter dexDataWriterOutputAt4 = outputAt(dexDataStore, dexDataWriterOutputAt2.getPosition() + (this.classSection.getItemCount() * 32) + (this.callSiteSection.getItemCount() * 4));
                        try {
                            writeMethodHandles(dexDataWriterOutputAt4);
                            if (dexDataWriterOutputAt4 != null) {
                                dexDataWriterOutputAt4.close();
                            }
                            writeEncodedArrays(dexDataWriterOutputAt3);
                            DexDataWriter dexDataWriterOutputAt5 = outputAt(dexDataStore, dexDataWriterOutputAt2.getPosition() + (this.classSection.getItemCount() * 32));
                            try {
                                writeCallSites(dexDataWriterOutputAt5);
                                if (dexDataWriterOutputAt5 != null) {
                                    dexDataWriterOutputAt5.close();
                                }
                                writeAnnotations(dexDataWriterOutputAt3);
                                writeAnnotationSets(dexDataWriterOutputAt3);
                                writeAnnotationSetRefs(dexDataWriterOutputAt3);
                                writeAnnotationDirectories(dexDataWriterOutputAt3);
                                writeDebugAndCodeItems(dexDataWriterOutputAt3, deferredOutputStreamFactory.makeDeferredOutputStream());
                                writeClasses(dexDataStore, dexDataWriterOutputAt2, dexDataWriterOutputAt3);
                                writeMapItem(dexDataWriterOutputAt3);
                                writeHeader(dexDataWriterOutputAt, dataSectionOffset, dexDataWriterOutputAt3.getPosition());
                                if (dexDataWriterOutputAt3 != null) {
                                    dexDataWriterOutputAt3.close();
                                }
                                if (dexDataWriterOutputAt2 != null) {
                                    dexDataWriterOutputAt2.close();
                                }
                                if (dexDataWriterOutputAt != null) {
                                    dexDataWriterOutputAt.close();
                                }
                                updateSignature(dexDataStore);
                                updateChecksum(dexDataStore);
                                dexDataStore.close();
                            } catch (Throwable th) {
                                if (dexDataWriterOutputAt5 != null) {
                                    try {
                                        dexDataWriterOutputAt5.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            if (dexDataWriterOutputAt4 != null) {
                                try {
                                    dexDataWriterOutputAt4.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                            }
                            throw th3;
                        }
                    } catch (Throwable th5) {
                        if (dexDataWriterOutputAt3 != null) {
                            try {
                                dexDataWriterOutputAt3.close();
                            } catch (Throwable th6) {
                                th5.addSuppressed(th6);
                            }
                        }
                        throw th5;
                    }
                } catch (Throwable th7) {
                    if (dexDataWriterOutputAt2 != null) {
                        try {
                            dexDataWriterOutputAt2.close();
                        } catch (Throwable th8) {
                            th7.addSuppressed(th8);
                        }
                    }
                    throw th7;
                }
            } catch (Throwable th9) {
                if (dexDataWriterOutputAt != null) {
                    try {
                        dexDataWriterOutputAt.close();
                    } catch (Throwable th10) {
                        th9.addSuppressed(th10);
                    }
                }
                throw th9;
            }
        } catch (Throwable th11) {
            dexDataStore.close();
            throw th11;
        }
    }

    private void updateSignature(@Nonnull DexDataStore dexDataStore) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[4096];
            InputStream at = dexDataStore.readAt(32);
            for (int i = at.read(bArr); i >= 0; i = at.read(bArr)) {
                messageDigest.update(bArr, 0, i);
            }
            byte[] bArrDigest = messageDigest.digest();
            if (bArrDigest.length != 20) {
                throw new RuntimeException("unexpected digest write: " + bArrDigest.length + " bytes");
            }
            OutputStream outputStreamOutputAt = dexDataStore.outputAt(12);
            outputStreamOutputAt.write(bArrDigest);
            outputStreamOutputAt.close();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private void updateChecksum(@Nonnull DexDataStore dexDataStore) throws IOException {
        Adler32 adler32 = new Adler32();
        byte[] bArr = new byte[4096];
        InputStream at = dexDataStore.readAt(12);
        for (int i = at.read(bArr); i >= 0; i = at.read(bArr)) {
            adler32.update(bArr, 0, i);
        }
        OutputStream outputStreamOutputAt = dexDataStore.outputAt(8);
        DexDataWriter.writeInt(outputStreamOutputAt, (int) adler32.getValue());
        outputStreamOutputAt.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DexDataWriter outputAt(DexDataStore dexDataStore, int i) throws IOException {
        return new DexDataWriter(dexDataStore.outputAt(i), i);
    }

    private void writeStrings(@Nonnull DexDataWriter dexDataWriter, @Nonnull DexDataWriter dexDataWriter2) throws IOException {
        this.stringIndexSectionOffset = dexDataWriter.getPosition();
        this.stringDataSectionOffset = dexDataWriter2.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.stringSection.getItems());
        Collections.sort(arrayList, toStringKeyComparator);
        int i = 0;
        for (Map.Entry entry : arrayList) {
            int i2 = i + 1;
            entry.setValue(Integer.valueOf(i));
            dexDataWriter.writeInt(dexDataWriter2.getPosition());
            String string = ((CharSequence) entry.getKey()).toString();
            dexDataWriter2.writeUleb128(string.length());
            dexDataWriter2.writeString(string);
            dexDataWriter2.write(0);
            i = i2;
        }
    }

    private void writeTypes(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        this.typeSectionOffset = dexDataWriter.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.typeSection.getItems());
        Collections.sort(arrayList, toStringKeyComparator);
        int i = 0;
        for (Map.Entry entry : arrayList) {
            entry.setValue(Integer.valueOf(i));
            dexDataWriter.writeInt(this.stringSection.getItemIndex((CharSequence) this.typeSection.getString((CharSequence) entry.getKey())));
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeProtos(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        this.protoSectionOffset = dexDataWriter.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.protoSection.getItems());
        Collections.sort(arrayList, comparableKeyComparator());
        int i = 0;
        for (Map.Entry entry : arrayList) {
            int i2 = i + 1;
            entry.setValue(Integer.valueOf(i));
            MethodProtoReference methodProtoReference = (MethodProtoReference) entry.getKey();
            dexDataWriter.writeInt(this.stringSection.getItemIndex((CharSequence) this.protoSection.getShorty(methodProtoReference)));
            dexDataWriter.writeInt(this.typeSection.getItemIndex((CharSequence) this.protoSection.getReturnType(methodProtoReference)));
            dexDataWriter.writeInt(this.typeListSection.getNullableItemOffset(this.protoSection.getParameters(methodProtoReference)));
            i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeFields(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        this.fieldSectionOffset = dexDataWriter.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.fieldSection.getItems());
        Collections.sort(arrayList, comparableKeyComparator());
        int i = 0;
        for (Map.Entry entry : arrayList) {
            int i2 = i + 1;
            entry.setValue(Integer.valueOf(i));
            FieldReference fieldReference = (FieldReference) entry.getKey();
            dexDataWriter.writeUshort(this.typeSection.getItemIndex((CharSequence) this.fieldSection.getDefiningClass(fieldReference)));
            dexDataWriter.writeUshort(this.typeSection.getItemIndex((CharSequence) this.fieldSection.getFieldType(fieldReference)));
            dexDataWriter.writeInt(this.stringSection.getItemIndex((CharSequence) this.fieldSection.getName(fieldReference)));
            i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeMethods(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        this.methodSectionOffset = dexDataWriter.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.methodSection.getItems());
        Collections.sort(arrayList, comparableKeyComparator());
        int i = 0;
        for (Map.Entry entry : arrayList) {
            int i2 = i + 1;
            entry.setValue(Integer.valueOf(i));
            MethodReference methodReference = (MethodReference) entry.getKey();
            dexDataWriter.writeUshort(this.typeSection.getItemIndex((CharSequence) this.methodSection.getDefiningClass(methodReference)));
            dexDataWriter.writeUshort(this.protoSection.getItemIndex(this.methodSection.getPrototype(methodReference)));
            dexDataWriter.writeInt(this.stringSection.getItemIndex((CharSequence) this.methodSection.getName(methodReference)));
            i = i2;
        }
    }

    private void writeClasses(@Nonnull DexDataStore dexDataStore, @Nonnull DexDataWriter dexDataWriter, @Nonnull DexDataWriter dexDataWriter2) throws IOException {
        this.classIndexSectionOffset = dexDataWriter.getPosition();
        this.classDataSectionOffset = dexDataWriter2.getPosition();
        ArrayList arrayList = new ArrayList(this.classSection.getItems());
        Collections.sort(arrayList, comparableKeyComparator());
        Iterator it = arrayList.iterator();
        int iWriteClass = 0;
        while (it.hasNext()) {
            iWriteClass = writeClass(dexDataWriter, dexDataWriter2, iWriteClass, (Map.Entry) it.next());
        }
        if (shouldWriteHiddenApiRestrictions()) {
            dexDataWriter2.align();
            this.hiddenApiRestrictionsOffset = dexDataWriter2.getPosition();
            ArrayList<Map.Entry> arrayList2 = new ArrayList(this.classSection.getItems());
            arrayList2.sort(comparableValueComparator());
            RestrictionsWriter restrictionsWriter = new RestrictionsWriter(dexDataStore, dexDataWriter2, arrayList2.size());
            try {
                for (Map.Entry entry : arrayList2) {
                    Iterator<? extends FieldKey> it2 = this.classSection.getSortedStaticFields((Comparable) entry.getKey()).iterator();
                    while (it2.hasNext()) {
                        restrictionsWriter.writeRestriction(this.classSection.getFieldHiddenApiRestrictions(it2.next()));
                    }
                    Iterator<? extends FieldKey> it3 = this.classSection.getSortedInstanceFields((Comparable) entry.getKey()).iterator();
                    while (it3.hasNext()) {
                        restrictionsWriter.writeRestriction(this.classSection.getFieldHiddenApiRestrictions(it3.next()));
                    }
                    Iterator<? extends MethodKey> it4 = this.classSection.getSortedDirectMethods((Comparable) entry.getKey()).iterator();
                    while (it4.hasNext()) {
                        restrictionsWriter.writeRestriction(this.classSection.getMethodHiddenApiRestrictions(it4.next()));
                    }
                    Iterator<? extends MethodKey> it5 = this.classSection.getSortedVirtualMethods((Comparable) entry.getKey()).iterator();
                    while (it5.hasNext()) {
                        restrictionsWriter.writeRestriction(this.classSection.getMethodHiddenApiRestrictions(it5.next()));
                    }
                    restrictionsWriter.finishClass();
                }
            } finally {
                restrictionsWriter.close();
            }
        }
    }

    private boolean shouldWriteHiddenApiRestrictions() {
        return this.hasHiddenApiRestrictions && this.opcodes.api >= 29;
    }

    private static class RestrictionsWriter {
        private final DexDataStore dataStore;
        private final DexDataWriter offsetsWriter;
        private final DexDataWriter restrictionsWriter;
        private final int startOffset;
        private boolean writeRestrictionsForClass = false;
        private int pendingBlankEntries = 0;

        public RestrictionsWriter(DexDataStore dexDataStore, DexDataWriter dexDataWriter, int i) throws IOException {
            this.startOffset = dexDataWriter.getPosition();
            this.dataStore = dexDataStore;
            this.restrictionsWriter = dexDataWriter;
            int i2 = i * 4;
            dexDataWriter.writeInt(0);
            this.offsetsWriter = DexWriter.outputAt(dexDataStore, dexDataWriter.getPosition());
            for (int i3 = 0; i3 < i2; i3++) {
                this.restrictionsWriter.write(0);
            }
            this.restrictionsWriter.flush();
        }

        public void finishClass() throws IOException {
            if (!this.writeRestrictionsForClass) {
                this.offsetsWriter.writeInt(0);
            }
            this.writeRestrictionsForClass = false;
            this.pendingBlankEntries = 0;
        }

        private void addBlankEntry() throws IOException {
            if (this.writeRestrictionsForClass) {
                this.restrictionsWriter.writeUleb128(HiddenApiRestriction.WHITELIST.getValue());
            } else {
                this.pendingBlankEntries++;
            }
        }

        public void writeRestriction(@Nonnull Set<HiddenApiRestriction> set) throws IOException {
            if (set.isEmpty()) {
                addBlankEntry();
                return;
            }
            if (!this.writeRestrictionsForClass) {
                this.writeRestrictionsForClass = true;
                this.offsetsWriter.writeInt(this.restrictionsWriter.getPosition() - this.startOffset);
                for (int i = 0; i < this.pendingBlankEntries; i++) {
                    this.restrictionsWriter.writeUleb128(HiddenApiRestriction.WHITELIST.getValue());
                }
                this.pendingBlankEntries = 0;
            }
            this.restrictionsWriter.writeUleb128(HiddenApiRestriction.combineFlags(set));
        }

        public void close() throws IOException {
            this.offsetsWriter.close();
            DexDataWriter dexDataWriterOutputAt = DexWriter.outputAt(this.dataStore, this.startOffset);
            try {
                dexDataWriterOutputAt.writeInt(this.restrictionsWriter.getPosition() - this.startOffset);
                if (dexDataWriterOutputAt != null) {
                    dexDataWriterOutputAt.close();
                }
            } catch (Throwable th) {
                if (dexDataWriterOutputAt != null) {
                    try {
                        dexDataWriterOutputAt.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int writeClass(@Nonnull DexDataWriter dexDataWriter, @Nonnull DexDataWriter dexDataWriter2, int i, @Nullable Map.Entry<? extends ClassKey, Integer> entry) throws IOException {
        if (entry == null || entry.getValue().intValue() != -1) {
            return i;
        }
        ClassKey key = entry.getKey();
        entry.setValue(0);
        ClassSectionType classsectiontype = this.classSection;
        int iWriteClass = writeClass(dexDataWriter, dexDataWriter2, i, classsectiontype.getClassEntryByType(classsectiontype.getSuperclass(key)));
        Iterator it = this.typeListSection.getTypes(this.classSection.getInterfaces(key)).iterator();
        while (it.hasNext()) {
            iWriteClass = writeClass(dexDataWriter, dexDataWriter2, iWriteClass, this.classSection.getClassEntryByType((CharSequence) it.next()));
        }
        int i2 = iWriteClass + 1;
        entry.setValue(Integer.valueOf(iWriteClass));
        dexDataWriter.writeInt(this.typeSection.getItemIndex(this.classSection.getType(key)));
        dexDataWriter.writeInt(this.classSection.getAccessFlags(key));
        dexDataWriter.writeInt(this.typeSection.getNullableItemIndex(this.classSection.getSuperclass(key)));
        dexDataWriter.writeInt(this.typeListSection.getNullableItemOffset(this.classSection.getInterfaces(key)));
        dexDataWriter.writeInt(this.stringSection.getNullableItemIndex(this.classSection.getSourceFile(key)));
        dexDataWriter.writeInt(this.classSection.getAnnotationDirectoryOffset(key));
        Collection<? extends FieldKey> sortedStaticFields = this.classSection.getSortedStaticFields(key);
        Collection<? extends FieldKey> sortedInstanceFields = this.classSection.getSortedInstanceFields(key);
        Collection<? extends MethodKey> sortedDirectMethods = this.classSection.getSortedDirectMethods(key);
        Collection<? extends MethodKey> sortedVirtualMethods = this.classSection.getSortedVirtualMethods(key);
        boolean z = sortedStaticFields.size() > 0 || sortedInstanceFields.size() > 0 || sortedDirectMethods.size() > 0 || sortedVirtualMethods.size() > 0;
        if (z) {
            dexDataWriter.writeInt(dexDataWriter2.getPosition());
        } else {
            dexDataWriter.writeInt(0);
        }
        Object staticInitializers = this.classSection.getStaticInitializers(key);
        if (staticInitializers != null) {
            dexDataWriter.writeInt(this.encodedArraySection.getItemOffset(staticInitializers));
        } else {
            dexDataWriter.writeInt(0);
        }
        if (z) {
            this.numClassDataItems++;
            dexDataWriter2.writeUleb128(sortedStaticFields.size());
            dexDataWriter2.writeUleb128(sortedInstanceFields.size());
            dexDataWriter2.writeUleb128(sortedDirectMethods.size());
            dexDataWriter2.writeUleb128(sortedVirtualMethods.size());
            writeEncodedFields(dexDataWriter2, sortedStaticFields);
            writeEncodedFields(dexDataWriter2, sortedInstanceFields);
            writeEncodedMethods(dexDataWriter2, sortedDirectMethods);
            writeEncodedMethods(dexDataWriter2, sortedVirtualMethods);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeCallSites(DexDataWriter dexDataWriter) throws IOException {
        this.callSiteSectionOffset = dexDataWriter.getPosition();
        ArrayList<Map.Entry> arrayList = new ArrayList(this.callSiteSection.getItems());
        Collections.sort(arrayList, this.callSiteComparator);
        int i = 0;
        for (Map.Entry entry : arrayList) {
            entry.setValue(Integer.valueOf(i));
            dexDataWriter.writeInt(this.encodedArraySection.getItemOffset(this.callSiteSection.getEncodedCallSite((CallSiteReference) entry.getKey())));
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeMethodHandles(DexDataWriter dexDataWriter) throws IOException {
        int itemIndex;
        this.methodHandleSectionOffset = dexDataWriter.getPosition();
        int i = 0;
        for (Map.Entry entry : this.methodHandleSection.getItems()) {
            int i2 = i + 1;
            entry.setValue(Integer.valueOf(i));
            MethodHandleReference methodHandleReference = (MethodHandleReference) entry.getKey();
            dexDataWriter.writeUshort(methodHandleReference.getMethodHandleType());
            dexDataWriter.writeUshort(0);
            switch (methodHandleReference.getMethodHandleType()) {
                case 0:
                case 1:
                case 2:
                case 3:
                    itemIndex = this.fieldSection.getItemIndex(this.methodHandleSection.getFieldReference(methodHandleReference));
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    itemIndex = this.methodSection.getItemIndex(this.methodHandleSection.getMethodReference(methodHandleReference));
                    break;
                default:
                    throw new ExceptionWithContext("Invalid method handle type: %d", Integer.valueOf(methodHandleReference.getMethodHandleType()));
            }
            dexDataWriter.writeUshort(itemIndex);
            dexDataWriter.writeUshort(0);
            i = i2;
        }
    }

    private void writeEncodedFields(@Nonnull DexDataWriter dexDataWriter, @Nonnull Collection<? extends FieldKey> collection) throws IOException {
        int i = 0;
        for (FieldKey fieldkey : collection) {
            int fieldIndex = this.fieldSection.getFieldIndex(fieldkey);
            if (!this.classSection.getFieldHiddenApiRestrictions(fieldkey).isEmpty()) {
                this.hasHiddenApiRestrictions = true;
            }
            dexDataWriter.writeUleb128(fieldIndex - i);
            dexDataWriter.writeUleb128(this.classSection.getFieldAccessFlags(fieldkey));
            i = fieldIndex;
        }
    }

    private void writeEncodedMethods(@Nonnull DexDataWriter dexDataWriter, @Nonnull Collection<? extends MethodKey> collection) throws IOException {
        int i = 0;
        for (MethodKey methodkey : collection) {
            int methodIndex = this.methodSection.getMethodIndex(methodkey);
            if (!this.classSection.getMethodHiddenApiRestrictions(methodkey).isEmpty()) {
                this.hasHiddenApiRestrictions = true;
            }
            dexDataWriter.writeUleb128(methodIndex - i);
            dexDataWriter.writeUleb128(this.classSection.getMethodAccessFlags(methodkey));
            dexDataWriter.writeUleb128(this.classSection.getCodeItemOffset(methodkey));
            i = methodIndex;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeTypeLists(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        dexDataWriter.align();
        this.typeListSectionOffset = dexDataWriter.getPosition();
        for (Map.Entry entry : this.typeListSection.getItems()) {
            dexDataWriter.align();
            entry.setValue(Integer.valueOf(dexDataWriter.getPosition()));
            Collection types = this.typeListSection.getTypes(entry.getKey());
            dexDataWriter.writeInt(types.size());
            Iterator it = types.iterator();
            while (it.hasNext()) {
                dexDataWriter.writeUshort(this.typeSection.getItemIndex((CharSequence) it.next()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeEncodedArrays(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        InternalEncodedValueWriter internalEncodedValueWriter = new InternalEncodedValueWriter(dexDataWriter);
        this.encodedArraySectionOffset = dexDataWriter.getPosition();
        for (Map.Entry entry : this.encodedArraySection.getItems()) {
            entry.setValue(Integer.valueOf(dexDataWriter.getPosition()));
            List encodedValueList = this.encodedArraySection.getEncodedValueList(entry.getKey());
            dexDataWriter.writeUleb128(encodedValueList.size());
            Iterator it = encodedValueList.iterator();
            while (it.hasNext()) {
                writeEncodedValue(internalEncodedValueWriter, it.next());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeAnnotations(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        InternalEncodedValueWriter internalEncodedValueWriter = new InternalEncodedValueWriter(dexDataWriter);
        this.annotationSectionOffset = dexDataWriter.getPosition();
        for (Map.Entry entry : this.annotationSection.getItems()) {
            entry.setValue(Integer.valueOf(dexDataWriter.getPosition()));
            Annotation annotation = (Annotation) entry.getKey();
            dexDataWriter.writeUbyte(this.annotationSection.getVisibility(annotation));
            dexDataWriter.writeUleb128(this.typeSection.getItemIndex((CharSequence) this.annotationSection.getType(annotation)));
            List<AnnotationElement> listImmutableSortedCopy = CollectionUtils.immutableSortedCopy(this.annotationSection.getElements(annotation), BaseAnnotationElement.BY_NAME);
            dexDataWriter.writeUleb128(listImmutableSortedCopy.size());
            for (AnnotationElement annotationElement : listImmutableSortedCopy) {
                dexDataWriter.writeUleb128(this.stringSection.getItemIndex((CharSequence) this.annotationSection.getElementName(annotationElement)));
                writeEncodedValue(internalEncodedValueWriter, this.annotationSection.getElementValue(annotationElement));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeAnnotationSets(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        dexDataWriter.align();
        this.annotationSetSectionOffset = dexDataWriter.getPosition();
        if (shouldCreateEmptyAnnotationSet()) {
            dexDataWriter.writeInt(0);
        }
        for (Map.Entry entry : this.annotationSetSection.getItems()) {
            List listImmutableSortedCopy = CollectionUtils.immutableSortedCopy(this.annotationSetSection.getAnnotations(entry.getKey()), BaseAnnotation.BY_TYPE);
            dexDataWriter.align();
            entry.setValue(Integer.valueOf(dexDataWriter.getPosition()));
            dexDataWriter.writeInt(listImmutableSortedCopy.size());
            Iterator it = listImmutableSortedCopy.iterator();
            while (it.hasNext()) {
                dexDataWriter.writeInt(this.annotationSection.getItemOffset((Annotation) it.next()));
            }
        }
    }

    private void writeAnnotationSetRefs(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        dexDataWriter.align();
        this.annotationSetRefSectionOffset = dexDataWriter.getPosition();
        HashMap map = new HashMap();
        Iterator it = this.classSection.getSortedClasses().iterator();
        while (it.hasNext()) {
            for (MethodKey methodkey : this.classSection.getSortedMethods((Comparable) it.next())) {
                List<? extends AnnotationSetKey> parameterAnnotations = this.classSection.getParameterAnnotations(methodkey);
                if (parameterAnnotations != null) {
                    Integer num = (Integer) map.get(parameterAnnotations);
                    if (num != null) {
                        this.classSection.setAnnotationSetRefListOffset(methodkey, num.intValue());
                    } else {
                        dexDataWriter.align();
                        int position = dexDataWriter.getPosition();
                        this.classSection.setAnnotationSetRefListOffset(methodkey, position);
                        map.put(parameterAnnotations, Integer.valueOf(position));
                        this.numAnnotationSetRefItems++;
                        dexDataWriter.writeInt(parameterAnnotations.size());
                        for (AnnotationSetKey annotationsetkey : parameterAnnotations) {
                            if (this.annotationSetSection.getAnnotations(annotationsetkey).size() > 0) {
                                dexDataWriter.writeInt(this.annotationSetSection.getItemOffset(annotationsetkey));
                            } else if (shouldCreateEmptyAnnotationSet()) {
                                dexDataWriter.writeInt(this.annotationSetSectionOffset);
                            } else {
                                dexDataWriter.writeInt(0);
                            }
                        }
                    }
                }
            }
        }
    }

    private void writeAnnotationDirectories(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        dexDataWriter.align();
        this.annotationDirectorySectionOffset = dexDataWriter.getPosition();
        HashMap map = new HashMap();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(65536);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        for (Comparable comparable : this.classSection.getSortedClasses()) {
            Collection<? extends FieldKey> sortedFields = this.classSection.getSortedFields(comparable);
            Collection<? extends MethodKey> sortedMethods = this.classSection.getSortedMethods(comparable);
            int size = (sortedFields.size() * 8) + (sortedMethods.size() * 16);
            if (size > byteBufferAllocate.capacity()) {
                byteBufferAllocate = ByteBuffer.allocate(size);
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            }
            byteBufferAllocate.clear();
            int i = 0;
            for (FieldKey fieldkey : sortedFields) {
                Object fieldAnnotations = this.classSection.getFieldAnnotations(fieldkey);
                if (fieldAnnotations != null) {
                    i++;
                    byteBufferAllocate.putInt(this.fieldSection.getFieldIndex(fieldkey));
                    byteBufferAllocate.putInt(this.annotationSetSection.getItemOffset(fieldAnnotations));
                }
            }
            int i2 = 0;
            for (MethodKey methodkey : sortedMethods) {
                Object methodAnnotations = this.classSection.getMethodAnnotations(methodkey);
                if (methodAnnotations != null) {
                    i2++;
                    byteBufferAllocate.putInt(this.methodSection.getMethodIndex(methodkey));
                    byteBufferAllocate.putInt(this.annotationSetSection.getItemOffset(methodAnnotations));
                }
            }
            int i3 = 0;
            for (MethodKey methodkey2 : sortedMethods) {
                int annotationSetRefListOffset = this.classSection.getAnnotationSetRefListOffset(methodkey2);
                if (annotationSetRefListOffset != 0) {
                    i3++;
                    byteBufferAllocate.putInt(this.methodSection.getMethodIndex(methodkey2));
                    byteBufferAllocate.putInt(annotationSetRefListOffset);
                }
            }
            Object classAnnotations = this.classSection.getClassAnnotations(comparable);
            if (i == 0 && i2 == 0 && i3 == 0) {
                if (classAnnotations != null) {
                    Integer num = (Integer) map.get(classAnnotations);
                    if (num != null) {
                        this.classSection.setAnnotationDirectoryOffset(comparable, num.intValue());
                    } else {
                        map.put(classAnnotations, Integer.valueOf(dexDataWriter.getPosition()));
                    }
                }
            }
            this.numAnnotationDirectoryItems++;
            this.classSection.setAnnotationDirectoryOffset(comparable, dexDataWriter.getPosition());
            dexDataWriter.writeInt(this.annotationSetSection.getNullableItemOffset(classAnnotations));
            dexDataWriter.writeInt(i);
            dexDataWriter.writeInt(i2);
            dexDataWriter.writeInt(i3);
            dexDataWriter.write(byteBufferAllocate.array(), 0, byteBufferAllocate.position());
        }
    }

    private static class CodeItemOffset<MethodKey> {
        int codeOffset;

        @Nonnull
        MethodKey method;

        private CodeItemOffset(@Nonnull MethodKey methodkey, int i) {
            this.codeOffset = i;
            this.method = methodkey;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeDebugAndCodeItems(@Nonnull DexDataWriter dexDataWriter, @Nonnull DeferredOutputStream deferredOutputStream) throws IOException {
        char c;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.debugSectionOffset = dexDataWriter.getPosition();
        DexDataWriter dexDataWriter2 = new DexDataWriter(deferredOutputStream, 0);
        ArrayList<CodeItemOffset> arrayList = new ArrayList();
        for (Comparable comparable : this.classSection.getSortedClasses()) {
            for (Object obj : new ChainedIterable(this.classSection.getSortedDirectMethods(comparable), this.classSection.getSortedVirtualMethods(comparable))) {
                List<? extends TryBlock<? extends ExceptionHandler>> tryBlocks = this.classSection.getTryBlocks(obj);
                Iterable instructions = this.classSection.getInstructions(obj);
                Iterable<? extends DebugItem> debugItems = this.classSection.getDebugItems(obj);
                if (instructions == null || !this.stringSection.hasJumboIndexes()) {
                    c = 0;
                    break;
                }
                Iterator it = instructions.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c = 0;
                        break;
                    }
                    Instruction instruction = (Instruction) it.next();
                    c = 0;
                    if (instruction.getOpcode() == Opcode.CONST_STRING && this.stringSection.getItemIndex((StringReference) ((ReferenceInstruction) instruction).getReference()) >= 65536) {
                        MutableMethodImplementation mutableMethodImplementationMakeMutableMethodImplementation = this.classSection.makeMutableMethodImplementation(obj);
                        fixInstructions(mutableMethodImplementationMakeMutableMethodImplementation);
                        instructions = mutableMethodImplementationMakeMutableMethodImplementation.getInstructions();
                        List<BuilderTryBlock> tryBlocks2 = mutableMethodImplementationMakeMutableMethodImplementation.getTryBlocks();
                        debugItems = mutableMethodImplementationMakeMutableMethodImplementation.getDebugItems();
                        tryBlocks = tryBlocks2;
                        break;
                    }
                }
                try {
                    int iWriteCodeItem = writeCodeItem(dexDataWriter2, byteArrayOutputStream, obj, tryBlocks, instructions, writeDebugItem(dexDataWriter, this.classSection.getParameterNames(obj), debugItems));
                    if (iWriteCodeItem != -1) {
                        arrayList.add(new CodeItemOffset(obj, iWriteCodeItem));
                    }
                } catch (RuntimeException e) {
                    MethodReference methodReference = this.methodSection.getMethodReference(obj);
                    Object[] objArr = new Object[1];
                    objArr[c] = methodReference;
                    throw new ExceptionWithContext(e, "Exception occurred while writing code_item for method %s", objArr);
                }
            }
        }
        dexDataWriter.align();
        this.codeSectionOffset = dexDataWriter.getPosition();
        dexDataWriter2.close();
        deferredOutputStream.writeTo(dexDataWriter);
        deferredOutputStream.close();
        for (CodeItemOffset codeItemOffset : arrayList) {
            this.classSection.setCodeItemOffset(codeItemOffset.method, this.codeSectionOffset + codeItemOffset.codeOffset);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void fixInstructions(@Nonnull MutableMethodImplementation mutableMethodImplementation) {
        List<BuilderInstruction> instructions = mutableMethodImplementation.getInstructions();
        for (int i = 0; i < instructions.size(); i++) {
            Instruction instruction = instructions.get(i);
            if (instruction.getOpcode() == Opcode.CONST_STRING) {
                ReferenceInstruction referenceInstruction = (ReferenceInstruction) instruction;
                if (this.stringSection.getItemIndex((StringReference) referenceInstruction.getReference()) >= 65536) {
                    mutableMethodImplementation.replaceInstruction(i, new BuilderInstruction31c(Opcode.CONST_STRING_JUMBO, ((OneRegisterInstruction) instruction).getRegisterA(), referenceInstruction.getReference()));
                }
            }
        }
    }

    private int writeDebugItem(@Nonnull DexDataWriter dexDataWriter, @Nullable Iterable<? extends StringKey> iterable, @Nullable Iterable<? extends DebugItem> iterable2) throws IOException {
        int size;
        int i;
        int lineNumber;
        if (iterable != null) {
            size = IteratorUtils.size(iterable);
            Iterator<? extends StringKey> it = iterable.iterator();
            i = -1;
            int i2 = 0;
            while (it.hasNext()) {
                if (it.next() != null) {
                    i = i2;
                }
                i2++;
            }
        } else {
            size = 0;
            i = -1;
        }
        if (i == -1 && (iterable2 == null || !iterable2.iterator().hasNext())) {
            return 0;
        }
        int position = dexDataWriter.getPosition();
        if (iterable2 == null) {
            lineNumber = 0;
            break;
        }
        Iterator<? extends DebugItem> it2 = iterable2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                lineNumber = 0;
                break;
            }
            DebugItem next = it2.next();
            if (next instanceof LineNumber) {
                lineNumber = ((LineNumber) next).getLineNumber();
                break;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DexDataWriter dexDataWriter2 = new DexDataWriter(byteArrayOutputStream, 0, 64);
        DebugWriter<StringKey, TypeKey> debugWriter = new DebugWriter<>(this.stringSection, this.typeSection, dexDataWriter2);
        dexDataWriter2.writeUleb128(lineNumber);
        dexDataWriter2.writeUleb128(size);
        if (iterable != null) {
            int i3 = 0;
            for (StringKey stringkey : iterable) {
                if (i3 == size) {
                    break;
                }
                i3++;
                dexDataWriter2.writeUleb128(this.stringSection.getNullableItemIndex(stringkey) + 1);
            }
        }
        if (iterable2 != null) {
            debugWriter.reset(lineNumber);
            Iterator<? extends DebugItem> it3 = iterable2.iterator();
            while (it3.hasNext()) {
                this.classSection.writeDebugItem(debugWriter, it3.next());
            }
        }
        dexDataWriter2.write(0);
        dexDataWriter2.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        DebugInfoCache debugInfoCache = new DebugInfoCache(byteArray);
        int iIntValue = ((Integer) this.debugInfoCaches.getOrDefault(debugInfoCache, -1)).intValue();
        if (iIntValue >= 0) {
            return iIntValue;
        }
        dexDataWriter.write(byteArray);
        this.debugInfoCaches.put(debugInfoCache, Integer.valueOf(position));
        this.numDebugInfoItems++;
        return position;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int writeCodeItem(@Nonnull DexDataWriter dexDataWriter, @Nonnull ByteArrayOutputStream byteArrayOutputStream, @Nonnull MethodKey methodkey, @Nonnull List<? extends TryBlock<? extends ExceptionHandler>> list, @Nullable Iterable<? extends Instruction> iterable, int i) throws IOException {
        int parameterRegisterCount;
        if (iterable == null && i == 0) {
            return -1;
        }
        this.numCodeItemItems++;
        dexDataWriter.align();
        int position = dexDataWriter.getPosition();
        dexDataWriter.writeUshort(this.classSection.getRegisterCount(methodkey));
        dexDataWriter.writeUshort(MethodUtil.getParameterRegisterCount((Collection<? extends CharSequence>) this.typeListSection.getTypes(this.protoSection.getParameters(this.methodSection.getPrototype(methodkey))), AccessFlags.STATIC.isSet(this.classSection.getMethodAccessFlags(methodkey))));
        if (iterable != null) {
            List<TryBlock> listMassageTryBlocks = TryListBuilder.massageTryBlocks(list);
            int i2 = 0;
            int codeUnits = 0;
            for (Instruction instruction : iterable) {
                codeUnits += instruction.getCodeUnits();
                int i3 = instruction.getOpcode().referenceType;
                if (i3 == 3) {
                    MethodReference methodReference = (MethodReference) ((ReferenceInstruction) instruction).getReference();
                    Opcode opcode = instruction.getOpcode();
                    if (InstructionUtil.isInvokePolymorphic(opcode)) {
                        parameterRegisterCount = ((VariableRegisterInstruction) instruction).getRegisterCount();
                    } else {
                        parameterRegisterCount = MethodUtil.getParameterRegisterCount(methodReference, InstructionUtil.isInvokeStatic(opcode));
                    }
                } else {
                    parameterRegisterCount = i3 != 5 ? 0 : ((VariableRegisterInstruction) instruction).getRegisterCount();
                }
                if (parameterRegisterCount > i2) {
                    i2 = parameterRegisterCount;
                }
            }
            dexDataWriter.writeUshort(i2);
            dexDataWriter.writeUshort(listMassageTryBlocks.size());
            dexDataWriter.writeInt(i);
            InstructionWriter instructionWriterMakeInstructionWriter = InstructionWriter.makeInstructionWriter(this.opcodes, dexDataWriter, this.stringSection, this.typeSection, this.fieldSection, this.methodSection, this.protoSection, this.methodHandleSection, this.callSiteSection);
            dexDataWriter.writeInt(codeUnits);
            int codeUnits2 = 0;
            for (Instruction instruction2 : iterable) {
                try {
                    switch (AnonymousClass5.$SwitchMap$com$android$tools$smali$dexlib2$Format[instruction2.getOpcode().format.ordinal()]) {
                        case 1:
                            instructionWriterMakeInstructionWriter.write((Instruction10t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 2:
                            instructionWriterMakeInstructionWriter.write((Instruction10x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 3:
                            instructionWriterMakeInstructionWriter.write((Instruction11n) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 4:
                            instructionWriterMakeInstructionWriter.write((Instruction11x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 5:
                            instructionWriterMakeInstructionWriter.write((Instruction12x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 6:
                            instructionWriterMakeInstructionWriter.write((Instruction20bc) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 7:
                            instructionWriterMakeInstructionWriter.write((Instruction20t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 8:
                            instructionWriterMakeInstructionWriter.write((Instruction21c) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 9:
                            instructionWriterMakeInstructionWriter.write((Instruction21ih) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 10:
                            instructionWriterMakeInstructionWriter.write((Instruction21lh) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 11:
                            instructionWriterMakeInstructionWriter.write((Instruction21s) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 12:
                            instructionWriterMakeInstructionWriter.write((Instruction21t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 13:
                            instructionWriterMakeInstructionWriter.write((Instruction22b) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 14:
                            instructionWriterMakeInstructionWriter.write((Instruction22c) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 15:
                            instructionWriterMakeInstructionWriter.write((Instruction22cs) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 16:
                            instructionWriterMakeInstructionWriter.write((Instruction22s) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 17:
                            instructionWriterMakeInstructionWriter.write((Instruction22t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 18:
                            instructionWriterMakeInstructionWriter.write((Instruction22x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 19:
                            instructionWriterMakeInstructionWriter.write((Instruction23x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 20:
                            instructionWriterMakeInstructionWriter.write((Instruction30t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 21:
                            instructionWriterMakeInstructionWriter.write((Instruction31c) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 22:
                            instructionWriterMakeInstructionWriter.write((Instruction31i) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 23:
                            instructionWriterMakeInstructionWriter.write((Instruction31t) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 24:
                            instructionWriterMakeInstructionWriter.write((Instruction32x) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 25:
                            instructionWriterMakeInstructionWriter.write((Instruction35c) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 26:
                            instructionWriterMakeInstructionWriter.write((Instruction35mi) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 27:
                            instructionWriterMakeInstructionWriter.write((Instruction35ms) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 28:
                            instructionWriterMakeInstructionWriter.write((Instruction3rc) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 29:
                            instructionWriterMakeInstructionWriter.write((Instruction3rmi) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 30:
                            instructionWriterMakeInstructionWriter.write((Instruction3rms) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 31:
                            instructionWriterMakeInstructionWriter.write((Instruction45cc) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 32:
                            instructionWriterMakeInstructionWriter.write((Instruction4rcc) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 33:
                            instructionWriterMakeInstructionWriter.write((Instruction51l) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 34:
                            instructionWriterMakeInstructionWriter.write((ArrayPayload) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 35:
                            instructionWriterMakeInstructionWriter.write((PackedSwitchPayload) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        case 36:
                            instructionWriterMakeInstructionWriter.write((SparseSwitchPayload) instruction2);
                            continue;
                            codeUnits2 += instruction2.getCodeUnits();
                            break;
                        default:
                            throw new ExceptionWithContext("Unsupported instruction format: %s", instruction2.getOpcode().format);
                    }
                } catch (RuntimeException e) {
                    throw new ExceptionWithContext(e, "Error while writing instruction at code offset 0x%x", Integer.valueOf(codeUnits2));
                }
                throw new ExceptionWithContext(e, "Error while writing instruction at code offset 0x%x", Integer.valueOf(codeUnits2));
            }
            if (listMassageTryBlocks.size() > 0) {
                dexDataWriter.align();
                HashMap map = new HashMap();
                Iterator it = listMassageTryBlocks.iterator();
                while (it.hasNext()) {
                    map.put(((TryBlock) it.next()).getExceptionHandlers(), 0);
                }
                DexDataWriter.writeUleb128(byteArrayOutputStream, map.size());
                for (TryBlock tryBlock : listMassageTryBlocks) {
                    int startCodeAddress = tryBlock.getStartCodeAddress();
                    int codeUnitCount = (tryBlock.getCodeUnitCount() + startCodeAddress) - startCodeAddress;
                    dexDataWriter.writeInt(startCodeAddress);
                    dexDataWriter.writeUshort(codeUnitCount);
                    if (tryBlock.getExceptionHandlers().size() == 0) {
                        throw new ExceptionWithContext("No exception handlers for the try block!", new Object[0]);
                    }
                    Integer num = (Integer) map.get(tryBlock.getExceptionHandlers());
                    if (num.intValue() != 0) {
                        dexDataWriter.writeUshort(num.intValue());
                    } else {
                        int size = byteArrayOutputStream.size();
                        Integer numValueOf = Integer.valueOf(size);
                        numValueOf.getClass();
                        dexDataWriter.writeUshort(size);
                        map.put(tryBlock.getExceptionHandlers(), numValueOf);
                        int size2 = tryBlock.getExceptionHandlers().size();
                        if (((ExceptionHandler) tryBlock.getExceptionHandlers().get(size2 - 1)).getExceptionType() == null) {
                            size2 = (size2 * (-1)) + 1;
                        }
                        DexDataWriter.writeSleb128(byteArrayOutputStream, size2);
                        for (ExceptionHandler exceptionHandler : tryBlock.getExceptionHandlers()) {
                            CharSequence exceptionType = this.classSection.getExceptionType(exceptionHandler);
                            int handlerCodeAddress = exceptionHandler.getHandlerCodeAddress();
                            if (exceptionType != null) {
                                DexDataWriter.writeUleb128(byteArrayOutputStream, this.typeSection.getItemIndex(exceptionType));
                                DexDataWriter.writeUleb128(byteArrayOutputStream, handlerCodeAddress);
                            } else {
                                DexDataWriter.writeUleb128(byteArrayOutputStream, handlerCodeAddress);
                            }
                        }
                    }
                }
                if (byteArrayOutputStream.size() > 0) {
                    byteArrayOutputStream.writeTo(dexDataWriter);
                    byteArrayOutputStream.reset();
                }
            }
            return position;
        }
        dexDataWriter.writeUshort(0);
        dexDataWriter.writeUshort(0);
        dexDataWriter.writeInt(i);
        dexDataWriter.writeInt(0);
        return position;
    }

    /* JADX INFO: renamed from: com.android.tools.smali.dexlib2.writer.DexWriter$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Format;

        static {
            int[] iArr = new int[Format.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Format = iArr;
            try {
                iArr[Format.Format10t.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format10x.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format11n.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format11x.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format12x.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format20bc.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format20t.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21c.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21ih.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21lh.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21s.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format21t.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22b.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22c.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22cs.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22s.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format22x.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format23x.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format30t.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31c.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31i.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format31t.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format32x.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35c.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35mi.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format35ms.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rc.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rmi.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format3rms.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format45cc.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format4rcc.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.Format51l.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.ArrayPayload.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.PackedSwitchPayload.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Format[Format.SparseSwitchPayload.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
        }
    }

    private int calcNumItems() {
        int i = this.stringSection.getItems().size() > 0 ? 3 : 1;
        if (this.typeSection.getItems().size() > 0) {
            i++;
        }
        if (this.protoSection.getItems().size() > 0) {
            i++;
        }
        if (this.fieldSection.getItems().size() > 0) {
            i++;
        }
        if (this.methodSection.getItems().size() > 0) {
            i++;
        }
        if (this.callSiteSection.getItems().size() > 0) {
            i++;
        }
        if (this.methodHandleSection.getItems().size() > 0) {
            i++;
        }
        if (this.typeListSection.getItems().size() > 0) {
            i++;
        }
        if (this.encodedArraySection.getItems().size() > 0) {
            i++;
        }
        if (this.annotationSection.getItems().size() > 0) {
            i++;
        }
        if (this.annotationSetSection.getItems().size() > 0 || shouldCreateEmptyAnnotationSet()) {
            i++;
        }
        if (this.numAnnotationSetRefItems > 0) {
            i++;
        }
        if (this.numAnnotationDirectoryItems > 0) {
            i++;
        }
        if (this.numDebugInfoItems > 0) {
            i++;
        }
        if (this.numCodeItemItems > 0) {
            i++;
        }
        if (this.classSection.getItems().size() > 0) {
            i++;
        }
        if (this.numClassDataItems > 0) {
            i++;
        }
        if (shouldWriteHiddenApiRestrictions()) {
            i++;
        }
        return i + 1;
    }

    private void writeMapItem(@Nonnull DexDataWriter dexDataWriter) throws IOException {
        dexDataWriter.align();
        this.mapSectionOffset = dexDataWriter.getPosition();
        dexDataWriter.writeInt(calcNumItems());
        writeMapItem(dexDataWriter, 0, 1, 0);
        writeMapItem(dexDataWriter, 1, this.stringSection.getItems().size(), this.stringIndexSectionOffset);
        writeMapItem(dexDataWriter, 2, this.typeSection.getItems().size(), this.typeSectionOffset);
        writeMapItem(dexDataWriter, 3, this.protoSection.getItems().size(), this.protoSectionOffset);
        writeMapItem(dexDataWriter, 4, this.fieldSection.getItems().size(), this.fieldSectionOffset);
        writeMapItem(dexDataWriter, 5, this.methodSection.getItems().size(), this.methodSectionOffset);
        writeMapItem(dexDataWriter, 6, this.classSection.getItems().size(), this.classIndexSectionOffset);
        writeMapItem(dexDataWriter, 7, this.callSiteSection.getItems().size(), this.callSiteSectionOffset);
        writeMapItem(dexDataWriter, 8, this.methodHandleSection.getItems().size(), this.methodHandleSectionOffset);
        writeMapItem(dexDataWriter, 8194, this.stringSection.getItems().size(), this.stringDataSectionOffset);
        writeMapItem(dexDataWriter, 4097, this.typeListSection.getItems().size(), this.typeListSectionOffset);
        writeMapItem(dexDataWriter, 8197, this.encodedArraySection.getItems().size(), this.encodedArraySectionOffset);
        writeMapItem(dexDataWriter, ItemType.ANNOTATION_ITEM, this.annotationSection.getItems().size(), this.annotationSectionOffset);
        writeMapItem(dexDataWriter, 4099, this.annotationSetSection.getItems().size() + (shouldCreateEmptyAnnotationSet() ? 1 : 0), this.annotationSetSectionOffset);
        writeMapItem(dexDataWriter, 4098, this.numAnnotationSetRefItems, this.annotationSetRefSectionOffset);
        writeMapItem(dexDataWriter, ItemType.ANNOTATION_DIRECTORY_ITEM, this.numAnnotationDirectoryItems, this.annotationDirectorySectionOffset);
        writeMapItem(dexDataWriter, ItemType.DEBUG_INFO_ITEM, this.numDebugInfoItems, this.debugSectionOffset);
        writeMapItem(dexDataWriter, ItemType.CODE_ITEM, this.numCodeItemItems, this.codeSectionOffset);
        writeMapItem(dexDataWriter, 8192, this.numClassDataItems, this.classDataSectionOffset);
        if (shouldWriteHiddenApiRestrictions()) {
            writeMapItem(dexDataWriter, ItemType.HIDDENAPI_CLASS_DATA_ITEM, 1, this.hiddenApiRestrictionsOffset);
        }
        writeMapItem(dexDataWriter, 4096, 1, this.mapSectionOffset);
    }

    private void writeMapItem(@Nonnull DexDataWriter dexDataWriter, int i, int i2, int i3) throws IOException {
        if (i2 > 0) {
            dexDataWriter.writeUshort(i);
            dexDataWriter.writeUshort(0);
            dexDataWriter.writeInt(i2);
            dexDataWriter.writeInt(i3);
        }
    }

    private void writeHeader(@Nonnull DexDataWriter dexDataWriter, int i, int i2) throws IOException {
        dexDataWriter.write(HeaderItem.getMagicForApi(this.opcodes.api));
        dexDataWriter.writeInt(0);
        dexDataWriter.write(new byte[20]);
        dexDataWriter.writeInt(i2);
        dexDataWriter.writeInt(112);
        dexDataWriter.writeInt(HeaderItem.LITTLE_ENDIAN_TAG);
        dexDataWriter.writeInt(0);
        dexDataWriter.writeInt(0);
        dexDataWriter.writeInt(this.mapSectionOffset);
        writeSectionInfo(dexDataWriter, this.stringSection.getItems().size(), this.stringIndexSectionOffset);
        writeSectionInfo(dexDataWriter, this.typeSection.getItems().size(), this.typeSectionOffset);
        writeSectionInfo(dexDataWriter, this.protoSection.getItems().size(), this.protoSectionOffset);
        writeSectionInfo(dexDataWriter, this.fieldSection.getItems().size(), this.fieldSectionOffset);
        writeSectionInfo(dexDataWriter, this.methodSection.getItems().size(), this.methodSectionOffset);
        writeSectionInfo(dexDataWriter, this.classSection.getItems().size(), this.classIndexSectionOffset);
        dexDataWriter.writeInt(i2 - i);
        dexDataWriter.writeInt(i);
    }

    private void writeSectionInfo(DexDataWriter dexDataWriter, int i, int i2) throws IOException {
        dexDataWriter.writeInt(i);
        if (i > 0) {
            dexDataWriter.writeInt(i2);
        } else {
            dexDataWriter.writeInt(0);
        }
    }

    private boolean shouldCreateEmptyAnnotationSet() {
        return this.opcodes.api < 17;
    }

    public abstract class SectionProvider {
        @Nonnull
        public abstract AnnotationSectionType getAnnotationSection();

        @Nonnull
        public abstract AnnotationSetSectionType getAnnotationSetSection();

        @Nonnull
        public abstract CallSiteSectionType getCallSiteSection();

        @Nonnull
        public abstract ClassSectionType getClassSection();

        @Nonnull
        public abstract EncodedArraySectionType getEncodedArraySection();

        @Nonnull
        public abstract FieldSectionType getFieldSection();

        @Nonnull
        public abstract MethodHandleSectionType getMethodHandleSection();

        @Nonnull
        public abstract MethodSectionType getMethodSection();

        @Nonnull
        public abstract ProtoSectionType getProtoSection();

        @Nonnull
        public abstract StringSectionType getStringSection();

        @Nonnull
        public abstract TypeListSectionType getTypeListSection();

        @Nonnull
        public abstract TypeSectionType getTypeSection();

        public SectionProvider() {
        }
    }
}
