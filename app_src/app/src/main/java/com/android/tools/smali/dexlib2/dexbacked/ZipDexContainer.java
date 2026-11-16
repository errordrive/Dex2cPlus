package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import com.android.tools.smali.dexlib2.util.DexUtil;
import com.android.tools.smali.util.InputStreamUtil;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ZipDexContainer implements MultiDexContainer<DexBackedDexFile> {
    private TreeMap<String, DexBackedDexFile> entries;

    @Nullable
    private final Opcodes opcodes;
    private final File zipFilePath;

    public static class NotAZipFileException extends RuntimeException {
    }

    public ZipDexContainer(@Nonnull File file, @Nullable Opcodes opcodes) {
        this.zipFilePath = file;
        this.opcodes = opcodes;
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nonnull
    public List<String> getDexEntryNames() throws IOException {
        return new ArrayList(getEntries().keySet());
    }

    private Map<String, DexBackedDexFile> getEntries() throws IOException {
        String str;
        TreeMap<String, DexBackedDexFile> treeMap = this.entries;
        if (treeMap != null) {
            return treeMap;
        }
        this.entries = new TreeMap<>();
        ZipFile zipFile = getZipFile();
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (isDex(zipFile, zipEntryNextElement)) {
                    InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                    try {
                        byte[] byteArray = InputStreamUtil.toByteArray(inputStream);
                        int fileSize = 0;
                        int i = 1;
                        while (fileSize < byteArray.length) {
                            DexBackedDexFile dexBackedDexFile = new DexBackedDexFile(this.opcodes, byteArray, 0, true, fileSize);
                            TreeMap<String, DexBackedDexFile> treeMap2 = this.entries;
                            StringBuilder sb = new StringBuilder();
                            sb.append(zipEntryNextElement.getName());
                            if (i > 1) {
                                str = "/" + i;
                            } else {
                                str = "";
                            }
                            sb.append(str);
                            treeMap2.put(sb.toString(), dexBackedDexFile);
                            fileSize += dexBackedDexFile.getFileSize();
                            i++;
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable th) {
                        if (inputStream == null) {
                            throw th;
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
            }
            TreeMap<String, DexBackedDexFile> treeMap3 = this.entries;
            if (zipFile != null) {
                zipFile.close();
            }
            return treeMap3;
        } catch (Throwable th3) {
            if (zipFile == null) {
                throw th3;
            }
            try {
                zipFile.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer
    @Nullable
    public MultiDexContainer.DexEntry<DexBackedDexFile> getEntry(@Nonnull final String str) throws IOException {
        final DexBackedDexFile dexBackedDexFile = getEntries().get(str);
        if (dexBackedDexFile == null) {
            return null;
        }
        return new MultiDexContainer.DexEntry() { // from class: com.android.tools.smali.dexlib2.dexbacked.ZipDexContainer.1
            @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
            @Nonnull
            public String getEntryName() {
                return str;
            }

            @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
            @Nonnull
            public DexFile getDexFile() {
                return dexBackedDexFile;
            }

            @Override // com.android.tools.smali.dexlib2.iface.MultiDexContainer.DexEntry
            @Nonnull
            public MultiDexContainer getContainer() {
                return ZipDexContainer.this;
            }
        };
    }

    public boolean isZipFile() {
        try {
            ZipFile zipFile = getZipFile();
            if (zipFile != null) {
                zipFile.close();
            }
            return true;
        } catch (NotAZipFileException | IOException unused) {
            return false;
        }
    }

    protected boolean isDex(@Nonnull ZipFile zipFile, @Nonnull ZipEntry zipEntry) throws IOException {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
            try {
                DexUtil.verifyDexHeader(bufferedInputStream);
                bufferedInputStream.close();
                return true;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (DexBackedDexFile.NotADexFile | DexUtil.InvalidFile | DexUtil.UnsupportedFile unused) {
            return false;
        }
    }

    protected ZipFile getZipFile() throws IOException {
        try {
            return new ZipFile(this.zipFilePath);
        } catch (IOException unused) {
            throw new NotAZipFileException();
        }
    }
}
