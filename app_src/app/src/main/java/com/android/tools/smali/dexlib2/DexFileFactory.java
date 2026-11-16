package com.android.tools.smali.dexlib2;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedOdexFile;
import com.android.tools.smali.dexlib2.dexbacked.OatFile;
import com.android.tools.smali.dexlib2.dexbacked.ZipDexContainer;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.InputStreamUtil;
import com.android.tools.smali.util.StringUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class DexFileFactory {
    @Nonnull
    public static DexBackedDexFile loadDexFile(@Nonnull String str, @Nullable Opcodes opcodes) throws IOException {
        return loadDexFile(new File(str), opcodes);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004c A[Catch: all -> 0x0035, TRY_ENTER, TryCatch #1 {all -> 0x0035, blocks: (B:7:0x002d, B:12:0x0037, B:15:0x003f, B:19:0x004c, B:21:0x0052, B:23:0x005c, B:26:0x0066, B:27:0x0075, B:28:0x0076, B:29:0x007b), top: B:41:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:7:0x002d, B:12:0x0037, B:15:0x003f, B:19:0x004c, B:21:0x0052, B:23:0x005c, B:26:0x0066, B:27:0x0075, B:28:0x0076, B:29:0x007b), top: B:41:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:23:0x005c A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:7:0x002d, B:12:0x0037, B:15:0x003f, B:19:0x004c, B:21:0x0052, B:23:0x005c, B:26:0x0066, B:27:0x0075, B:28:0x0076, B:29:0x007b), top: B:41:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0066 A[Catch: all -> 0x0035, TRY_ENTER, TryCatch #1 {all -> 0x0035, blocks: (B:7:0x002d, B:12:0x0037, B:15:0x003f, B:19:0x004c, B:21:0x0052, B:23:0x005c, B:26:0x0066, B:27:0x0075, B:28:0x0076, B:29:0x007b), top: B:41:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0076 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:7:0x002d, B:12:0x0037, B:15:0x003f, B:19:0x004c, B:21:0x0052, B:23:0x005c, B:26:0x0066, B:27:0x0075, B:28:0x0076, B:29:0x007b), top: B:41:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    @Nonnull
    public static DexBackedDexFile loadDexFile(@Nonnull File file, @Nullable Opcodes opcodes) throws IOException {
        OatFile oatFileFromInputStream;
        List<DexBackedDexFile> dexFiles;
        if (!file.exists()) {
            throw new DexFileNotFoundException("%s does not exist", file.getName());
        }
        try {
            return (DexBackedDexFile) new DexEntryFinder(file.getPath(), new ZipDexContainer(file, opcodes)).findEntry("classes.dex", true).getDexFile();
        } catch (ZipDexContainer.NotAZipFileException unused) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                try {
                    try {
                        try {
                            DexBackedDexFile dexBackedDexFileFromInputStream = DexBackedDexFile.fromInputStream(opcodes, bufferedInputStream);
                            bufferedInputStream.close();
                            return dexBackedDexFileFromInputStream;
                        } catch (Throwable th) {
                            try {
                                bufferedInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (DexBackedDexFile.NotADexFile unused2) {
                        DexBackedOdexFile dexBackedOdexFileFromInputStream = DexBackedOdexFile.fromInputStream(opcodes, (InputStream) bufferedInputStream);
                        bufferedInputStream.close();
                        return dexBackedOdexFileFromInputStream;
                    }
                } catch (OatFile.NotAnOatFileException unused3) {
                    oatFileFromInputStream = null;
                    if (oatFileFromInputStream != null) {
                        bufferedInputStream.close();
                        throw new UnsupportedFileTypeException("%s is not an apk, dex, odex or oat file.", file.getPath());
                    }
                    if (oatFileFromInputStream.isSupportedVersion() != 0) {
                        throw new UnsupportedOatVersionException(oatFileFromInputStream);
                    }
                    dexFiles = oatFileFromInputStream.getDexFiles();
                    if (dexFiles.size() != 0) {
                        throw new DexFileNotFoundException("Oat file %s contains no dex files", file.getName());
                    }
                    DexBackedDexFile dexBackedDexFile = dexFiles.get(0);
                    bufferedInputStream.close();
                    return dexBackedDexFile;
                }
            } catch (DexBackedOdexFile.NotAnOdexFile unused4) {
                oatFileFromInputStream = OatFile.fromInputStream(bufferedInputStream, new FilenameVdexProvider(file));
                if (oatFileFromInputStream != null) {
                    bufferedInputStream.close();
                    throw new UnsupportedFileTypeException("%s is not an apk, dex, odex or oat file.", file.getPath());
                }
                if (oatFileFromInputStream.isSupportedVersion() != 0) {
                    throw new UnsupportedOatVersionException(oatFileFromInputStream);
                }
                dexFiles = oatFileFromInputStream.getDexFiles();
                if (dexFiles.size() != 0) {
                    throw new DexFileNotFoundException("Oat file %s contains no dex files", file.getName());
                }
                DexBackedDexFile dexBackedDexFile2 = dexFiles.get(0);
                bufferedInputStream.close();
                return dexBackedDexFile2;
            }
        }
    }

    public static MultiDexContainer.DexEntry<? extends DexBackedDexFile> loadDexEntry(@Nonnull File file, @Nonnull String str, boolean z, @Nullable Opcodes opcodes) throws IOException {
        OatFile oatFileFromInputStream;
        if (!file.exists()) {
            throw new DexFileNotFoundException("Container file %s does not exist", file.getName());
        }
        try {
            return new DexEntryFinder(file.getPath(), new ZipDexContainer(file, opcodes)).findEntry(str, z);
        } catch (ZipDexContainer.NotAZipFileException unused) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                try {
                    oatFileFromInputStream = OatFile.fromInputStream(bufferedInputStream, new FilenameVdexProvider(file));
                } catch (OatFile.NotAnOatFileException unused2) {
                    oatFileFromInputStream = null;
                }
                if (oatFileFromInputStream != null) {
                    if (oatFileFromInputStream.isSupportedVersion() == 0) {
                        throw new UnsupportedOatVersionException(oatFileFromInputStream);
                    }
                    if (oatFileFromInputStream.getDexFiles().size() == 0) {
                        throw new DexFileNotFoundException("Oat file %s contains no dex files", file.getName());
                    }
                    MultiDexContainer.DexEntry<? extends DexBackedDexFile> dexEntryFindEntry = new DexEntryFinder(file.getPath(), oatFileFromInputStream).findEntry(str, z);
                    bufferedInputStream.close();
                    return dexEntryFindEntry;
                }
                bufferedInputStream.close();
                throw new UnsupportedFileTypeException("%s is not an apk or oat file.", file.getPath());
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f A[Catch: all -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x002f, blocks: (B:8:0x001e, B:13:0x0031, B:16:0x0042, B:20:0x004f, B:24:0x0059, B:25:0x005e), top: B:35:0x001e }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[Catch: all -> 0x002f, TRY_ENTER, TryCatch #4 {all -> 0x002f, blocks: (B:8:0x001e, B:13:0x0031, B:16:0x0042, B:20:0x004f, B:24:0x0059, B:25:0x005e), top: B:35:0x001e }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0068  */
    public static MultiDexContainer<? extends DexBackedDexFile> loadDexContainer(@Nonnull File file, @Nullable Opcodes opcodes) throws IOException {
        OatFile oatFileFromInputStream;
        if (!file.exists()) {
            throw new DexFileNotFoundException("%s does not exist", file.getName());
        }
        ZipDexContainer zipDexContainer = new ZipDexContainer(file, opcodes);
        if (zipDexContainer.isZipFile()) {
            return zipDexContainer;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            try {
                try {
                    try {
                        SingletonMultiDexContainer singletonMultiDexContainer = new SingletonMultiDexContainer(file.getPath(), DexBackedDexFile.fromInputStream(opcodes, bufferedInputStream));
                        bufferedInputStream.close();
                        return singletonMultiDexContainer;
                    } catch (DexBackedDexFile.NotADexFile unused) {
                        SingletonMultiDexContainer singletonMultiDexContainer2 = new SingletonMultiDexContainer(file.getPath(), DexBackedOdexFile.fromInputStream(opcodes, (InputStream) bufferedInputStream));
                        bufferedInputStream.close();
                        return singletonMultiDexContainer2;
                    }
                } catch (OatFile.NotAnOatFileException unused2) {
                    oatFileFromInputStream = null;
                    if (oatFileFromInputStream != null) {
                        bufferedInputStream.close();
                        throw new UnsupportedFileTypeException("%s is not an apk, dex, odex or oat file.", file.getPath());
                    }
                    if (oatFileFromInputStream.isSupportedVersion() != 0) {
                        throw new UnsupportedOatVersionException(oatFileFromInputStream);
                    }
                    bufferedInputStream.close();
                    return oatFileFromInputStream;
                }
            } catch (DexBackedOdexFile.NotAnOdexFile unused3) {
                oatFileFromInputStream = OatFile.fromInputStream(bufferedInputStream, new FilenameVdexProvider(file));
                if (oatFileFromInputStream != null) {
                    bufferedInputStream.close();
                    throw new UnsupportedFileTypeException("%s is not an apk, dex, odex or oat file.", file.getPath());
                }
                if (oatFileFromInputStream.isSupportedVersion() != 0) {
                    throw new UnsupportedOatVersionException(oatFileFromInputStream);
                }
                bufferedInputStream.close();
                return oatFileFromInputStream;
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void writeDexFile(@Nonnull String str, @Nonnull DexFile dexFile) throws IOException {
        DexPool.writeTo(str, dexFile);
    }

    private DexFileFactory() {
    }

    public static class DexFileNotFoundException extends ExceptionWithContext {
        public DexFileNotFoundException(@Nullable String str, Object... objArr) {
            super(str, objArr);
        }

        public DexFileNotFoundException(Throwable th, @Nullable String str, Object... objArr) {
            super(th, str, objArr);
        }
    }

    public static class UnsupportedOatVersionException extends ExceptionWithContext {

        @Nonnull
        public final OatFile oatFile;

        public UnsupportedOatVersionException(@Nonnull OatFile oatFile) {
            super("Unsupported oat version: %d", Integer.valueOf(oatFile.getOatVersion()));
            this.oatFile = oatFile;
        }
    }

    public static class MultipleMatchingDexEntriesException extends ExceptionWithContext {
        public MultipleMatchingDexEntriesException(@Nonnull String str, Object... objArr) {
            super(String.format(str, objArr), new Object[0]);
        }
    }

    public static class UnsupportedFileTypeException extends ExceptionWithContext {
        public UnsupportedFileTypeException(@Nonnull String str, Object... objArr) {
            super(String.format(str, objArr), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean fullEntryMatch(@Nonnull String str, @Nonnull String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (str.charAt(0) == '/') {
            str = str.substring(1);
        }
        if (str2.charAt(0) == '/') {
            str2 = str2.substring(1);
        }
        return str.equals(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean partialEntryMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (!str.endsWith(str2)) {
            return false;
        }
        char cCharAt = str.charAt((str.length() - str2.length()) - 1);
        char cCharAt2 = str2.charAt(0);
        return cCharAt2 == ':' || cCharAt2 == '/' || cCharAt2 == '!' || cCharAt == ':' || cCharAt == '/' || cCharAt == '!';
    }

    protected static class DexEntryFinder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final MultiDexContainer<? extends DexBackedDexFile> dexContainer;
        private final String filename;

        public DexEntryFinder(@Nonnull String str, @Nonnull MultiDexContainer<? extends DexBackedDexFile> multiDexContainer) {
            this.filename = str;
            this.dexContainer = multiDexContainer;
        }

        @Nonnull
        public MultiDexContainer.DexEntry<? extends DexBackedDexFile> findEntry(@Nonnull String str, boolean z) throws IOException {
            if (z) {
                try {
                    MultiDexContainer.DexEntry entry = this.dexContainer.getEntry(str);
                    if (entry != null) {
                        return entry;
                    }
                    throw new DexFileNotFoundException("Could not find entry %s in %s.", str, this.filename);
                } catch (DexBackedDexFile.NotADexFile unused) {
                    throw new UnsupportedFileTypeException("Entry %s in %s is not a dex file", str, this.filename);
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (String str2 : this.dexContainer.getDexEntryNames()) {
                if (!DexFileFactory.fullEntryMatch(str2, str)) {
                    if (DexFileFactory.partialEntryMatch(str2, str)) {
                        arrayList3.add(str2);
                        arrayList4.add(this.dexContainer.getEntry(str2));
                    }
                } else {
                    arrayList.add(str2);
                    arrayList2.add(this.dexContainer.getEntry(str2));
                }
            }
            if (arrayList2.size() == 1) {
                try {
                    return (MultiDexContainer.DexEntry) arrayList2.get(0);
                } catch (DexBackedDexFile.NotADexFile unused2) {
                    throw new UnsupportedFileTypeException("Entry %s in %s is not a dex file", arrayList.get(0), this.filename);
                }
            }
            if (arrayList2.size() > 1) {
                throw new MultipleMatchingDexEntriesException(String.format("Multiple entries in %s match %s: %s", this.filename, str, StringUtils.join(arrayList, ", ")), new Object[0]);
            }
            if (arrayList4.size() == 0) {
                throw new DexFileNotFoundException("Could not find a dex entry in %s matching %s", this.filename, str);
            }
            if (arrayList4.size() > 1) {
                throw new MultipleMatchingDexEntriesException(String.format("Multiple dex entries in %s match %s: %s", this.filename, str, StringUtils.join(arrayList3, ", ")), new Object[0]);
            }
            return (MultiDexContainer.DexEntry) arrayList4.get(0);
        }
    }

    private static class SingletonMultiDexContainer implements MultiDexContainer<DexBackedDexFile> {
        private final DexBackedDexFile dexFile;
        private final String entryName;

        public SingletonMultiDexContainer(@Nonnull String str, @Nonnull DexBackedDexFile dexBackedDexFile) {
            this.entryName = str;
            this.dexFile = dexBackedDexFile;
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
        @Nonnull
        public List<String> getDexEntryNames() {
            return Collections.singletonList(this.entryName);
        }

        @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
        @Nullable
        public MultiDexContainer.DexEntry<DexBackedDexFile> getEntry(@Nonnull final String str) {
            if (str.equals(this.entryName)) {
                return new MultiDexContainer.DexEntry<DexBackedDexFile>() { // from class: com.android.tools.smali.dexlib2.DexFileFactory.SingletonMultiDexContainer.1
                    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
                    @Nonnull
                    public String getEntryName() {
                        return str;
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
                    @Nonnull
                    public DexBackedDexFile getDexFile() {
                        return SingletonMultiDexContainer.this.dexFile;
                    }

                    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
                    @Nonnull
                    public MultiDexContainer<? extends DexBackedDexFile> getContainer() {
                        return SingletonMultiDexContainer.this;
                    }
                };
            }
            return null;
        }
    }

    public static class FilenameVdexProvider implements OatFile.VdexProvider {

        @Nullable
        private byte[] buf = null;
        private boolean loadedVdex = false;
        private final File vdexFile;

        public FilenameVdexProvider(File file) {
            this.vdexFile = new File(file.getAbsoluteFile().getParentFile(), getNameWithoutExtension(file.getAbsolutePath()) + ".vdex");
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.OatFile.VdexProvider
        @Nullable
        public byte[] getVdex() {
            File parentFile;
            if (!this.loadedVdex) {
                File file = this.vdexFile;
                if (!file.exists() && (parentFile = file.getParentFile().getParentFile()) != null) {
                    file = new File(parentFile, this.vdexFile.getName());
                }
                if (file.exists()) {
                    try {
                        this.buf = InputStreamUtil.toByteArray(new FileInputStream(file));
                    } catch (FileNotFoundException unused) {
                        this.buf = null;
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
                this.loadedVdex = true;
            }
            return this.buf;
        }

        public static String getNameWithoutExtension(String str) {
            String name = new File(str).getName();
            int iLastIndexOf = name.lastIndexOf(46);
            return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
        }
    }
}
