package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.ItemType;
import com.android.tools.smali.dexlib2.dexbacked.raw.MapItem;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedCallSiteReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedFieldReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodHandleReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodProtoReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedMethodReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedStringReference;
import com.android.tools.smali.dexlib2.dexbacked.reference.DexBackedTypeReference;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList;
import com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeSet;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.util.DexUtil;
import com.android.tools.smali.util.InputStreamUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.AbstractList;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedDexFile implements DexFile {
    private IndexedSection<DexBackedCallSiteReference> callSiteSection;
    private final int classCount;
    private IndexedSection<DexBackedClassDef> classSection;
    private final int classStartOffset;
    private final DexBuffer dataBuffer;
    private final DexBuffer dexBuffer;
    private final int fieldCount;
    private IndexedSection<DexBackedFieldReference> fieldSection;
    private final int fieldStartOffset;
    private final int fileSize;
    private final int hiddenApiRestrictionsOffset;
    private final int mapOffset;
    private final int methodCount;
    private IndexedSection<DexBackedMethodHandleReference> methodHandleSection;
    private IndexedSection<DexBackedMethodReference> methodSection;
    private final int methodStartOffset;

    @Nonnull
    private final Opcodes opcodes;
    private final int protoCount;
    private IndexedSection<DexBackedMethodProtoReference> protoSection;
    private final int protoStartOffset;
    private final int stringCount;
    private OptionalIndexedSection<String> stringSection;
    private final int stringStartOffset;
    private final int typeCount;
    private OptionalIndexedSection<String> typeSection;
    private final int typeStartOffset;

    public static abstract class IndexedSection<T> extends AbstractList<T> {
        public abstract int getOffset(int i);
    }

    public static abstract class OptionalIndexedSection<T> extends IndexedSection<T> {
        @Nullable
        public abstract T getOptional(int i);
    }

    public int getBaseDataOffset() {
        return 0;
    }

    public boolean supportsOptimizedOpcodes() {
        return false;
    }

    protected DexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr, int i, boolean z) {
        this(opcodes, bArr, i, z, 0);
    }

    protected DexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr, int i, boolean z, int i2) {
        this.stringSection = new OptionalIndexedSection<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.5
            @Override // java.util.AbstractList, java.util.List
            public String get(int i3) {
                DexReader<? extends DexBuffer> dexReader = DexBackedDexFile.this.dataBuffer.readerAt(DexBackedDexFile.this.dexBuffer.readSmallUint(getOffset(i3)));
                return dexReader.readString(dexReader.readSmallUleb128());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.stringCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.OptionalIndexedSection
            @Nullable
            public String getOptional(int i3) {
                if (i3 == -1) {
                    return null;
                }
                return get(i3);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.stringStartOffset + (i3 * 4);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid string index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.typeSection = new OptionalIndexedSection<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.6
            @Override // java.util.AbstractList, java.util.List
            public String get(int i3) {
                return (String) DexBackedDexFile.this.getStringSection().get(DexBackedDexFile.this.dexBuffer.readSmallUint(getOffset(i3)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.typeCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.OptionalIndexedSection
            @Nullable
            public String getOptional(int i3) {
                if (i3 == -1) {
                    return null;
                }
                return get(i3);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.typeStartOffset + (i3 * 4);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid type index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.fieldSection = new IndexedSection<DexBackedFieldReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.7
            @Override // java.util.AbstractList, java.util.List
            public DexBackedFieldReference get(int i3) {
                return new DexBackedFieldReference(DexBackedDexFile.this, i3);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.fieldCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.fieldStartOffset + (i3 * 8);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid field index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.methodSection = new IndexedSection<DexBackedMethodReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.8
            @Override // java.util.AbstractList, java.util.List
            public DexBackedMethodReference get(int i3) {
                return new DexBackedMethodReference(DexBackedDexFile.this, i3);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.methodCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.methodStartOffset + (i3 * 8);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid method index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.protoSection = new IndexedSection<DexBackedMethodProtoReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.9
            @Override // java.util.AbstractList, java.util.List
            public DexBackedMethodProtoReference get(int i3) {
                return new DexBackedMethodProtoReference(DexBackedDexFile.this, i3);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.protoCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.protoStartOffset + (i3 * 12);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid proto index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.classSection = new IndexedSection<DexBackedClassDef>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.10
            @Override // java.util.AbstractList, java.util.List
            public DexBackedClassDef get(int i3) {
                return new DexBackedClassDef(DexBackedDexFile.this, getOffset(i3), DexBackedDexFile.this.readHiddenApiRestrictionsOffset(i3));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.classCount;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                if (i3 >= 0 && i3 < size()) {
                    return DexBackedDexFile.this.classStartOffset + (i3 * 32);
                }
                throw new IndexOutOfBoundsException(String.format("Invalid class index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
            }
        };
        this.callSiteSection = new IndexedSection<DexBackedCallSiteReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.11
            @Override // java.util.AbstractList, java.util.List
            public DexBackedCallSiteReference get(int i3) {
                return new DexBackedCallSiteReference(DexBackedDexFile.this, i3);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                MapItem mapItemForSection = DexBackedDexFile.this.getMapItemForSection(7);
                if (mapItemForSection == null) {
                    return 0;
                }
                return mapItemForSection.getItemCount();
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                MapItem mapItemForSection = DexBackedDexFile.this.getMapItemForSection(7);
                if (i3 < 0 || i3 >= size()) {
                    throw new IndexOutOfBoundsException(String.format("Invalid callsite index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
                }
                return mapItemForSection.getOffset() + (i3 * 4);
            }
        };
        this.methodHandleSection = new IndexedSection<DexBackedMethodHandleReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.12
            @Override // java.util.AbstractList, java.util.List
            public DexBackedMethodHandleReference get(int i3) {
                return new DexBackedMethodHandleReference(DexBackedDexFile.this, i3);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                MapItem mapItemForSection = DexBackedDexFile.this.getMapItemForSection(8);
                if (mapItemForSection == null) {
                    return 0;
                }
                return mapItemForSection.getItemCount();
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.IndexedSection
            public int getOffset(int i3) {
                MapItem mapItemForSection = DexBackedDexFile.this.getMapItemForSection(8);
                if (i3 < 0 || i3 >= size()) {
                    throw new IndexOutOfBoundsException(String.format("Invalid method handle index %d, not in [0, %d)", Integer.valueOf(i3), Integer.valueOf(size())));
                }
                return mapItemForSection.getOffset() + (i3 * 8);
            }
        };
        DexBuffer dexBuffer = new DexBuffer(bArr, i);
        this.dexBuffer = dexBuffer;
        this.dataBuffer = new DexBuffer(bArr, getBaseDataOffset() + i);
        int version = getVersion(bArr, i, z);
        if (opcodes == null) {
            this.opcodes = getDefaultOpcodes(version);
        } else {
            this.opcodes = opcodes;
        }
        this.fileSize = dexBuffer.readSmallUint(i2 + 32);
        this.stringCount = dexBuffer.readSmallUint(i2 + 56);
        this.stringStartOffset = dexBuffer.readSmallUint(i2 + 60);
        this.typeCount = dexBuffer.readSmallUint(i2 + 64);
        this.typeStartOffset = dexBuffer.readSmallUint(i2 + 68);
        this.protoCount = dexBuffer.readSmallUint(i2 + 72);
        this.protoStartOffset = dexBuffer.readSmallUint(i2 + 76);
        this.fieldCount = dexBuffer.readSmallUint(i2 + 80);
        this.fieldStartOffset = dexBuffer.readSmallUint(i2 + 84);
        this.methodCount = dexBuffer.readSmallUint(i2 + 88);
        this.methodStartOffset = dexBuffer.readSmallUint(i2 + 92);
        this.classCount = dexBuffer.readSmallUint(i2 + 96);
        this.classStartOffset = dexBuffer.readSmallUint(i2 + 100);
        this.mapOffset = dexBuffer.readSmallUint(i2 + 52);
        MapItem mapItemForSection = getMapItemForSection(ItemType.HIDDENAPI_CLASS_DATA_ITEM);
        if (mapItemForSection != null) {
            this.hiddenApiRestrictionsOffset = mapItemForSection.getOffset();
        } else {
            this.hiddenApiRestrictionsOffset = 0;
        }
        if ((version >= 41 ? dexBuffer.readSmallUint(i2 + 116) : 0) != i2) {
            throw new DexUtil.InvalidFile(String.format("Unexpected container offset in header", new Object[0]));
        }
    }

    public int getFileSize() {
        return this.fileSize;
    }

    protected int getVersion(byte[] bArr, int i, boolean z) {
        if (z) {
            return DexUtil.verifyDexHeader(bArr, i);
        }
        return HeaderItem.getVersion(bArr, i);
    }

    protected Opcodes getDefaultOpcodes(int i) {
        return Opcodes.forDexVersion(i);
    }

    public DexBuffer getBuffer() {
        return this.dexBuffer;
    }

    public DexBuffer getDataBuffer() {
        return this.dataBuffer;
    }

    public DexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull DexBuffer dexBuffer) {
        this(opcodes, dexBuffer.buf, dexBuffer.baseOffset);
    }

    public DexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr, int i) {
        this(opcodes, bArr, i, false);
    }

    public DexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr) {
        this(opcodes, bArr, 0, true);
    }

    @Nonnull
    public static DexBackedDexFile fromInputStream(@Nullable Opcodes opcodes, @Nonnull InputStream inputStream) throws IOException {
        DexUtil.verifyDexHeader(inputStream);
        return new DexBackedDexFile(opcodes, InputStreamUtil.toByteArray(inputStream), 0, false);
    }

    @Override // com.android.tools.smali.dexlib2.iface.DexFile
    @Nonnull
    public Opcodes getOpcodes() {
        return this.opcodes;
    }

    @Override // com.android.tools.smali.dexlib2.iface.DexFile
    @Nonnull
    public Set<? extends DexBackedClassDef> getClasses() {
        return new FixedSizeSet<DexBackedClassDef>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeSet
            @Nonnull
            public DexBackedClassDef readItem(int i) {
                return DexBackedDexFile.this.getClassSection().get(i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DexBackedDexFile.this.classCount;
            }
        };
    }

    public List<DexBackedStringReference> getStringReferences() {
        return new AbstractList<DexBackedStringReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.2
            @Override // java.util.AbstractList, java.util.List
            public DexBackedStringReference get(int i) {
                if (i < 0 || i >= DexBackedDexFile.this.getStringSection().size()) {
                    throw new IndexOutOfBoundsException();
                }
                return new DexBackedStringReference(DexBackedDexFile.this, i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.getStringSection().size();
            }
        };
    }

    public List<DexBackedTypeReference> getTypeReferences() {
        return new AbstractList<DexBackedTypeReference>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.3
            @Override // java.util.AbstractList, java.util.List
            public DexBackedTypeReference get(int i) {
                if (i < 0 || i >= DexBackedDexFile.this.getTypeSection().size()) {
                    throw new IndexOutOfBoundsException();
                }
                return new DexBackedTypeReference(DexBackedDexFile.this, i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return DexBackedDexFile.this.getTypeSection().size();
            }
        };
    }

    public List<? extends Reference> getReferences(int i) {
        switch (i) {
            case 0:
                return getStringReferences();
            case 1:
                return getTypeReferences();
            case 2:
                return getFieldSection();
            case 3:
                return getMethodSection();
            case 4:
                return getMethodSection();
            case 5:
                return getCallSiteSection();
            case 6:
                return getMethodHandleSection();
            default:
                throw new IllegalArgumentException(String.format("Invalid reference type: %d", Integer.valueOf(i)));
        }
    }

    public List<MapItem> getMapItems() {
        final int smallUint = this.dataBuffer.readSmallUint(this.mapOffset);
        return new FixedSizeList<MapItem>() { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
            public MapItem readItem(int i) {
                return new MapItem(DexBackedDexFile.this, DexBackedDexFile.this.mapOffset + 4 + (i * 12));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return smallUint;
            }
        };
    }

    @Nullable
    public MapItem getMapItemForSection(int i) {
        for (MapItem mapItem : getMapItems()) {
            if (mapItem.getType() == i) {
                return mapItem;
            }
        }
        return null;
    }

    public static class NotADexFile extends RuntimeException {
        public NotADexFile() {
        }

        public NotADexFile(Throwable th) {
            super(th);
        }

        public NotADexFile(String str) {
            super(str);
        }

        public NotADexFile(String str, Throwable th) {
            super(str, th);
        }
    }

    public OptionalIndexedSection<String> getStringSection() {
        return this.stringSection;
    }

    public OptionalIndexedSection<String> getTypeSection() {
        return this.typeSection;
    }

    public IndexedSection<DexBackedFieldReference> getFieldSection() {
        return this.fieldSection;
    }

    public IndexedSection<DexBackedMethodReference> getMethodSection() {
        return this.methodSection;
    }

    public IndexedSection<DexBackedMethodProtoReference> getProtoSection() {
        return this.protoSection;
    }

    public IndexedSection<DexBackedClassDef> getClassSection() {
        return this.classSection;
    }

    public IndexedSection<DexBackedCallSiteReference> getCallSiteSection() {
        return this.callSiteSection;
    }

    public IndexedSection<DexBackedMethodHandleReference> getMethodHandleSection() {
        return this.methodHandleSection;
    }

    protected DexBackedMethodImplementation createMethodImplementation(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexBackedMethod dexBackedMethod, int i) {
        return new DexBackedMethodImplementation(dexBackedDexFile, dexBackedMethod, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int readHiddenApiRestrictionsOffset(int i) {
        int i2;
        int i3 = this.hiddenApiRestrictionsOffset;
        if (i3 == 0 || (i2 = this.dexBuffer.readInt(i3 + 4 + (i * 4))) == 0) {
            return 0;
        }
        return this.hiddenApiRestrictionsOffset + i2;
    }
}
