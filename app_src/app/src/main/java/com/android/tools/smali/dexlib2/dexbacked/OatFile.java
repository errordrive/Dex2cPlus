package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import com.android.tools.smali.dexlib2.util.DexUtil;
import com.android.tools.smali.util.AbstractForwardSequentialList;
import com.android.tools.smali.util.InputStreamUtil;
import com.android.tools.smali.util.TransformedIterable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import kotlin.UByte$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes.dex */
public class OatFile extends DexBuffer implements MultiDexContainer<DexBackedDexFile> {
    private static final int MAX_OAT_VERSION = 178;
    private static final int MIN_ELF_HEADER_SIZE = 52;
    private static final int MIN_OAT_VERSION = 56;
    public static final int SUPPORTED = 1;
    public static final int UNKNOWN = 2;
    public static final int UNSUPPORTED = 0;
    private final boolean is64bit;

    @Nonnull
    private final OatHeader oatHeader;

    @Nonnull
    private final Opcodes opcodes;

    @Nullable
    private final VdexProvider vdexProvider;
    private static final byte[] ELF_MAGIC = {127, 69, 76, 70};
    private static final byte[] OAT_MAGIC = {111, 97, 116, 10};

    public static class NotAnOatFileException extends RuntimeException {
    }

    public interface VdexProvider {
        @Nullable
        byte[] getVdex();
    }

    public OatFile(@Nonnull byte[] bArr) {
        this(bArr, null);
    }

    public OatFile(@Nonnull byte[] bArr, @Nullable VdexProvider vdexProvider) {
        OatHeader oatHeader;
        super(bArr);
        if (bArr.length < 52) {
            throw new NotAnOatFileException();
        }
        verifyMagic(bArr);
        byte b = bArr[4];
        if (b == 1) {
            this.is64bit = false;
        } else if (b == 2) {
            this.is64bit = true;
        } else {
            throw new InvalidOatFileException(String.format("Invalid word-size value: %x", Byte.valueOf(bArr[5])));
        }
        Iterator<SymbolTable.Symbol> it = getSymbolTable().getSymbols().iterator();
        while (true) {
            if (!it.hasNext()) {
                oatHeader = null;
                break;
            }
            SymbolTable.Symbol next = it.next();
            if (next.getName().equals("oatdata")) {
                oatHeader = new OatHeader(next.getFileOffset());
                break;
            }
        }
        if (oatHeader == null) {
            throw new InvalidOatFileException("Oat file has no oatdata symbol");
        }
        this.oatHeader = oatHeader;
        if (!oatHeader.isValid()) {
            throw new InvalidOatFileException("Invalid oat magic value");
        }
        this.opcodes = Opcodes.forArtVersion(oatHeader.getVersion());
        this.vdexProvider = vdexProvider;
    }

    private static void verifyMagic(byte[] bArr) {
        int i = 0;
        while (true) {
            byte[] bArr2 = ELF_MAGIC;
            if (i >= bArr2.length) {
                return;
            }
            if (bArr[i] != bArr2[i]) {
                throw new NotAnOatFileException();
            }
            i++;
        }
    }

    public static OatFile fromInputStream(@Nonnull InputStream inputStream) throws IOException {
        return fromInputStream(inputStream, null);
    }

    public static OatFile fromInputStream(@Nonnull InputStream inputStream, @Nullable VdexProvider vdexProvider) throws IOException {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("InputStream must support mark");
        }
        inputStream.mark(4);
        byte[] bArr = new byte[4];
        try {
            try {
                InputStreamUtil.readFully(inputStream, bArr);
                inputStream.reset();
                verifyMagic(bArr);
                inputStream.reset();
                return new OatFile(InputStreamUtil.toByteArray(inputStream), vdexProvider);
            } catch (EOFException unused) {
                throw new NotAnOatFileException();
            }
        } catch (Throwable th) {
            inputStream.reset();
            throw th;
        }
    }

    public int getOatVersion() {
        return this.oatHeader.getVersion();
    }

    public int isSupportedVersion() {
        int oatVersion = getOatVersion();
        if (oatVersion < 56) {
            return 0;
        }
        return oatVersion <= MAX_OAT_VERSION ? 1 : 2;
    }

    @Nonnull
    public List<String> getBootClassPath() {
        if (getOatVersion() < 75) {
            return Collections.EMPTY_LIST;
        }
        String keyValue = this.oatHeader.getKeyValue("bootclasspath");
        if (keyValue == null) {
            return Collections.EMPTY_LIST;
        }
        return Arrays.asList(keyValue.split(":"));
    }

    @Nonnull
    public List<DexBackedDexFile> getDexFiles() {
        return new AbstractForwardSequentialList<DexBackedDexFile>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return new DexEntryIterator().getSize();
            }

            @Override // com.android.tools.smali.util.AbstractForwardSequentialList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
            @Nonnull
            public Iterator<DexBackedDexFile> iterator() {
                return new TransformedIterable.TransformedIterator(new DexEntryIterator(), new Function<OatDexEntry, DexBackedDexFile>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.1.1
                    @Override // java.util.function.Function
                    @Nullable
                    public DexBackedDexFile apply(OatDexEntry oatDexEntry) {
                        return oatDexEntry.getDexFile();
                    }
                });
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nonnull
    public List<String> getDexEntryNames() throws IOException {
        return new AbstractForwardSequentialList<String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return new DexEntryIterator().getSize();
            }

            @Override // com.android.tools.smali.util.AbstractForwardSequentialList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
            @Nonnull
            public Iterator<String> iterator() {
                return new TransformedIterable.TransformedIterator(new DexEntryIterator(), new Function<OatDexEntry, String>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.2.1
                    @Override // java.util.function.Function
                    @Nullable
                    public String apply(OatDexEntry oatDexEntry) {
                        return oatDexEntry.entryName;
                    }
                });
            }
        };
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nullable
    public OatDexEntry getEntry(@Nonnull String str) throws IOException {
        DexEntryIterator dexEntryIterator = new DexEntryIterator();
        while (dexEntryIterator.hasNext()) {
            OatDexEntry next = dexEntryIterator.next();
            if (next != null && next.getEntryName().equals(str)) {
                return next;
            }
        }
        return null;
    }

    public class OatDexFile extends DexBackedDexFile {
        @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
        public boolean supportsOptimizedOpcodes() {
            return true;
        }

        public OatDexFile(byte[] bArr, int i) {
            super(OatFile.this.opcodes, bArr, i);
        }
    }

    public class OatCDexFile extends CDexBackedDexFile {
        @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
        public boolean supportsOptimizedOpcodes() {
            return true;
        }

        public OatCDexFile(byte[] bArr, int i) {
            super(OatFile.this.opcodes, bArr, i);
        }
    }

    private class OatHeader {
        private final int headerOffset;
        private final int keyValueStoreOffset;

        public OatHeader(int i) {
            this.headerOffset = i;
            if (getVersion() >= 170) {
                this.keyValueStoreOffset = 56;
                return;
            }
            if (getVersion() >= 166) {
                this.keyValueStoreOffset = 64;
                return;
            }
            if (getVersion() >= 162) {
                this.keyValueStoreOffset = 68;
            } else if (getVersion() >= 127) {
                this.keyValueStoreOffset = 76;
            } else {
                this.keyValueStoreOffset = 72;
            }
        }

        public boolean isValid() {
            for (int i = 0; i < OatFile.OAT_MAGIC.length; i++) {
                if (OatFile.this.buf[this.headerOffset + i] != OatFile.OAT_MAGIC[i]) {
                    return false;
                }
            }
            for (int i2 = 4; i2 < 7; i2++) {
                if (OatFile.this.buf[this.headerOffset + i2] < 48 || OatFile.this.buf[this.headerOffset + i2] > 57) {
                    return false;
                }
            }
            return OatFile.this.buf[this.headerOffset + 7] == 0;
        }

        public int getVersion() {
            return Integer.valueOf(new String(OatFile.this.buf, this.headerOffset + 4, 3)).intValue();
        }

        public int getDexFileCount() {
            return OatFile.this.readSmallUint(this.headerOffset + 20);
        }

        public int getKeyValueStoreSize() {
            if (getVersion() < 56) {
                throw new IllegalStateException("Unsupported oat version");
            }
            return OatFile.this.readSmallUint(this.headerOffset + (this.keyValueStoreOffset - 4));
        }

        public int getHeaderSize() {
            if (getVersion() < 56) {
                throw new IllegalStateException("Unsupported oat version");
            }
            return this.keyValueStoreOffset + getKeyValueStoreSize();
        }

        @Nullable
        public String getKeyValue(@Nonnull String str) {
            int keyValueStoreSize = getKeyValueStoreSize();
            int i = this.headerOffset + this.keyValueStoreOffset;
            int i2 = keyValueStoreSize + i;
            while (i < i2) {
                int i3 = i;
                while (i3 < i2 && OatFile.this.buf[i3] != 0) {
                    i3++;
                }
                if (i3 >= i2) {
                    throw new InvalidOatFileException("Oat file contains truncated key value store");
                }
                if (new String(OatFile.this.buf, i, i3 - i).equals(str)) {
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (i5 < i2 && OatFile.this.buf[i5] != 0) {
                        i5++;
                    }
                    if (i5 >= i2) {
                        throw new InvalidOatFileException("Oat file contains truncated key value store");
                    }
                    return new String(OatFile.this.buf, i4, i5 - i4);
                }
                i = i3 + 1;
            }
            return null;
        }

        public int getDexListStart() {
            int i;
            int headerSize;
            if (getVersion() >= 127) {
                i = this.headerOffset;
                headerSize = OatFile.this.readSmallUint(i + 24);
            } else {
                i = this.headerOffset;
                headerSize = getHeaderSize();
            }
            return i + headerSize;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nonnull
    public List<SectionHeader> getSections() {
        final int smallUint;
        final int ushort;
        final int ushort2;
        if (this.is64bit) {
            smallUint = readLongAsSmallUint(40);
            ushort = readUshort(58);
            ushort2 = readUshort(60);
        } else {
            smallUint = readSmallUint(32);
            ushort = readUshort(46);
            ushort2 = readUshort(48);
        }
        if ((ushort * ushort2) + smallUint > this.buf.length) {
            throw new InvalidOatFileException("The ELF section headers extend past the end of the file");
        }
        return new AbstractList<SectionHeader>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.3
            @Override // java.util.AbstractList, java.util.List
            public SectionHeader get(int i) {
                if (i >= 0 && i < ushort2) {
                    if (OatFile.this.is64bit) {
                        return OatFile.this.new SectionHeader64Bit(smallUint + (i * ushort));
                    }
                    return OatFile.this.new SectionHeader32Bit(smallUint + (i * ushort));
                }
                throw new IndexOutOfBoundsException();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return ushort2;
            }
        };
    }

    @Nonnull
    private SymbolTable getSymbolTable() {
        for (SectionHeader sectionHeader : getSections()) {
            if (sectionHeader.getType() == 11) {
                return new SymbolTable(sectionHeader);
            }
        }
        throw new InvalidOatFileException("Oat file has no symbol table");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nonnull
    public StringTable getSectionNameStringTable() {
        int ushort = readUshort(50);
        if (ushort == 0) {
            throw new InvalidOatFileException("There is no section name string table");
        }
        try {
            return new StringTable(getSections().get(ushort));
        } catch (IndexOutOfBoundsException unused) {
            throw new InvalidOatFileException("The section index for the section name string table is invalid");
        }
    }

    private abstract class SectionHeader {
        public static final int TYPE_DYNAMIC_SYMBOL_TABLE = 11;
        protected final int offset;

        public abstract long getAddress();

        public abstract int getEntrySize();

        public abstract int getLink();

        public abstract int getOffset();

        public abstract int getSize();

        public SectionHeader(int i) {
            this.offset = i;
        }

        @Nonnull
        public String getName() {
            return OatFile.this.getSectionNameStringTable().getString(OatFile.this.readSmallUint(this.offset));
        }

        public int getType() {
            return OatFile.this.readInt(this.offset + 4);
        }
    }

    private class SectionHeader32Bit extends SectionHeader {
        public SectionHeader32Bit(int i) {
            super(i);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public long getAddress() {
            return ((long) OatFile.this.readInt(this.offset + 12)) & 4294967295L;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getOffset() {
            return OatFile.this.readSmallUint(this.offset + 16);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getSize() {
            return OatFile.this.readSmallUint(this.offset + 20);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getLink() {
            return OatFile.this.readSmallUint(this.offset + 24);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getEntrySize() {
            return OatFile.this.readSmallUint(this.offset + 36);
        }
    }

    private class SectionHeader64Bit extends SectionHeader {
        public SectionHeader64Bit(int i) {
            super(i);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public long getAddress() {
            return OatFile.this.readLong(this.offset + 16);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getOffset() {
            return OatFile.this.readLongAsSmallUint(this.offset + 24);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getSize() {
            return OatFile.this.readLongAsSmallUint(this.offset + 32);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getLink() {
            return OatFile.this.readSmallUint(this.offset + 40);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SectionHeader
        public int getEntrySize() {
            return OatFile.this.readLongAsSmallUint(this.offset + 56);
        }
    }

    class SymbolTable {
        private final int entryCount;
        private final int entrySize;
        private final int offset;

        @Nonnull
        private final StringTable stringTable;

        public SymbolTable(SectionHeader sectionHeader) {
            try {
                this.stringTable = OatFile.this.new StringTable((SectionHeader) OatFile.this.getSections().get(sectionHeader.getLink()));
                int offset = sectionHeader.getOffset();
                this.offset = offset;
                int entrySize = sectionHeader.getEntrySize();
                this.entrySize = entrySize;
                int size = sectionHeader.getSize() / entrySize;
                this.entryCount = size;
                if (offset + (size * entrySize) > OatFile.this.buf.length) {
                    throw new InvalidOatFileException("Symbol table extends past end of file");
                }
            } catch (IndexOutOfBoundsException unused) {
                throw new InvalidOatFileException("String table section index is invalid");
            }
        }

        @Nonnull
        public List<Symbol> getSymbols() {
            return new AbstractList<Symbol>() { // from class: com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.1
                @Override // java.util.AbstractList, java.util.List
                public Symbol get(int i) {
                    if (i >= 0 && i < SymbolTable.this.entryCount) {
                        if (OatFile.this.is64bit) {
                            SymbolTable symbolTable = SymbolTable.this;
                            return symbolTable.new Symbol64(symbolTable.offset + (i * SymbolTable.this.entrySize));
                        }
                        SymbolTable symbolTable2 = SymbolTable.this;
                        return symbolTable2.new Symbol32(symbolTable2.offset + (i * SymbolTable.this.entrySize));
                    }
                    throw new IndexOutOfBoundsException();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return SymbolTable.this.entryCount;
                }
            };
        }

        public abstract class Symbol {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            protected final int offset;

            @Nonnull
            public abstract String getName();

            public abstract int getSectionIndex();

            public abstract int getSize();

            public abstract long getValue();

            public Symbol(int i) {
                this.offset = i;
            }

            public int getFileOffset() {
                try {
                    SectionHeader sectionHeader = (SectionHeader) OatFile.this.getSections().get(getSectionIndex());
                    long address = sectionHeader.getAddress();
                    int offset = sectionHeader.getOffset();
                    int size = sectionHeader.getSize();
                    long value = getValue();
                    if (value < address || value >= ((long) size) + address) {
                        throw new InvalidOatFileException("symbol address lies outside it's associated section");
                    }
                    return (int) (((long) offset) + (getValue() - address));
                } catch (IndexOutOfBoundsException unused) {
                    throw new InvalidOatFileException("Section index for symbol is out of bounds");
                }
            }
        }

        public class Symbol32 extends Symbol {
            public Symbol32(int i) {
                super(i);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            @Nonnull
            public String getName() {
                return SymbolTable.this.stringTable.getString(OatFile.this.readSmallUint(this.offset));
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public long getValue() {
                return OatFile.this.readSmallUint(this.offset + 4);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public int getSize() {
                return OatFile.this.readSmallUint(this.offset + 8);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public int getSectionIndex() {
                return OatFile.this.readUshort(this.offset + 14);
            }
        }

        public class Symbol64 extends Symbol {
            public Symbol64(int i) {
                super(i);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            @Nonnull
            public String getName() {
                return SymbolTable.this.stringTable.getString(OatFile.this.readSmallUint(this.offset));
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public long getValue() {
                return OatFile.this.readLong(this.offset + 8);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public int getSize() {
                return OatFile.this.readLongAsSmallUint(this.offset + 16);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.SymbolTable.Symbol
            public int getSectionIndex() {
                return OatFile.this.readUshort(this.offset + 6);
            }
        }
    }

    private class StringTable {
        private final int offset;
        private final int size;

        public StringTable(SectionHeader sectionHeader) {
            int offset = sectionHeader.getOffset();
            this.offset = offset;
            int size = sectionHeader.getSize();
            this.size = size;
            if (offset + size > OatFile.this.buf.length) {
                throw new InvalidOatFileException("String table extends past end of file");
            }
        }

        @Nonnull
        public String getString(int i) {
            if (i >= this.size) {
                throw new InvalidOatFileException("String index is out of bounds");
            }
            int i2 = this.offset + i;
            int i3 = i2;
            while (OatFile.this.buf[i3] != 0) {
                i3++;
                if (i3 >= this.offset + this.size) {
                    throw new InvalidOatFileException("String extends past end of string table");
                }
            }
            return new String(OatFile.this.buf, i2, i3 - i2, Charset.forName("US-ASCII"));
        }
    }

    private class OatDexEntry implements MultiDexContainer.DexEntry<DexBackedDexFile> {
        public final byte[] buf;
        public final int dexOffset;
        public final String entryName;

        public OatDexEntry(String str, byte[] bArr, int i) {
            this.entryName = str;
            this.buf = bArr;
            this.dexOffset = i;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        public DexBackedDexFile getDexFile() {
            if (CDexBackedDexFile.isCdex(this.buf, this.dexOffset)) {
                return OatFile.this.new OatCDexFile(this.buf, this.dexOffset);
            }
            try {
                DexUtil.verifyDexHeader(this.buf, this.dexOffset);
                return OatFile.this.new OatDexFile(this.buf, this.dexOffset);
            } catch (DexBackedDexFile.NotADexFile e) {
                if (OatFile.this.getOatVersion() >= 87) {
                    throw new DexFileFactory.DexFileNotFoundException(e, "Could not locate the embedded dex file %s. Is the vdex file missing?", this.entryName);
                }
                throw new DexFileFactory.DexFileNotFoundException(e, "The embedded dex file %s does not appear to be a valid dex file.", this.entryName);
            }
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        @Nonnull
        public String getEntryName() {
            return this.entryName;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
        @Nonnull
        public MultiDexContainer<? extends DexBackedDexFile> getContainer() {
            return OatFile.this;
        }
    }

    private class DexEntryIterator implements Iterator<OatDexEntry> {
        int index;
        int offset;

        private DexEntryIterator() {
            this.index = 0;
            this.offset = OatFile.this.oatHeader.getDexListStart();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < OatFile.this.oatHeader.getDexFileCount();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public OatDexEntry next() {
            byte[] vdex;
            while (hasNext()) {
                int smallUint = OatFile.this.readSmallUint(this.offset);
                this.offset += 4;
                String str = new String(OatFile.this.buf, this.offset, smallUint, Charset.forName("US-ASCII"));
                int i = this.offset + smallUint + 4;
                this.offset = i;
                int smallUint2 = OatFile.this.readSmallUint(i);
                this.offset += 4;
                if (OatFile.this.getOatVersion() >= 87 && OatFile.this.vdexProvider != null && OatFile.this.vdexProvider.getVdex() != null) {
                    vdex = OatFile.this.vdexProvider.getVdex();
                } else {
                    vdex = OatFile.this.buf;
                    smallUint2 += OatFile.this.oatHeader.headerOffset;
                }
                if (OatFile.this.getOatVersion() >= 75) {
                    this.offset += 4;
                }
                if (OatFile.this.getOatVersion() >= 73) {
                    this.offset += 4;
                }
                if (OatFile.this.getOatVersion() >= 131) {
                    this.offset += 4;
                }
                if (OatFile.this.getOatVersion() >= 127) {
                    this.offset += 4;
                }
                if (OatFile.this.getOatVersion() >= 135) {
                    this.offset += 8;
                }
                if (OatFile.this.getOatVersion() < 75) {
                    this.offset += OatFile.this.readSmallUint(smallUint2 + 96) * 4;
                }
                this.index++;
                if (OatFile.this.getOatVersion() < 138 || smallUint2 != 0) {
                    return OatFile.this.new OatDexEntry(str, vdex, smallUint2);
                }
            }
            return null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public int getSize() {
            int i = 0;
            while (hasNext()) {
                if (UByte$$ExternalSyntheticBackport0.m535m$1((Object) next())) {
                    i++;
                }
            }
            return i;
        }
    }

    public static class InvalidOatFileException extends RuntimeException {
        public InvalidOatFileException(String str) {
            super(str);
        }
    }
}
