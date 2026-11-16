package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.OatFile;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class PathEntryLoader {
    Opcodes opcodes;
    final Set<File> loadedFiles = new HashSet();
    final List<ClassProvider> classProviders = new ArrayList();

    public Opcodes getOpcodes() {
        return this.opcodes;
    }

    public List<ClassProvider> getClassProviders() {
        return this.classProviders;
    }

    public PathEntryLoader(Opcodes opcodes) {
        this.opcodes = opcodes;
    }

    @Nonnull
    public List<ClassProvider> getResolvedClassProviders() {
        return this.classProviders;
    }

    public void loadEntry(@Nonnull File file, boolean z) throws NoDexException, IOException {
        if (this.loadedFiles.contains(file)) {
            return;
        }
        try {
            MultiDexContainer<? extends DexBackedDexFile> multiDexContainerLoadDexContainer = DexFileFactory.loadDexContainer(file, this.opcodes);
            List<String> dexEntryNames = multiDexContainerLoadDexContainer.getDexEntryNames();
            if (dexEntryNames.isEmpty()) {
                throw new NoDexException("%s contains no dex file", file);
            }
            this.loadedFiles.add(file);
            Iterator<String> it = dexEntryNames.iterator();
            while (it.hasNext()) {
                this.classProviders.add(new DexClassProvider(multiDexContainerLoadDexContainer.getEntry(it.next()).getDexFile()));
            }
            if (z && (multiDexContainerLoadDexContainer instanceof OatFile)) {
                List<String> bootClassPath = ((OatFile) multiDexContainerLoadDexContainer).getBootClassPath();
                if (bootClassPath.isEmpty()) {
                    return;
                }
                try {
                    loadOatDependencies(file.getParentFile(), bootClassPath);
                } catch (ClassPathResolver.NotFoundException e) {
                    throw new ClassPathResolver.ResolveException(e, "Error while loading oat file %s", file);
                } catch (NoDexException e2) {
                    throw new ClassPathResolver.ResolveException(e2, "Error while loading dependencies for oat file %s", file);
                }
            }
        } catch (DexFileFactory.UnsupportedFileTypeException e3) {
            throw new ClassPathResolver.ResolveException(e3);
        }
    }

    private void loadOatDependencies(@Nonnull File file, @Nonnull List<String> list) throws NoDexException, ClassPathResolver.NotFoundException, IOException {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String filenameForOatDependency = getFilenameForOatDependency(it.next());
            File file2 = new File(file, filenameForOatDependency);
            if (!file2.exists()) {
                throw new ClassPathResolver.NotFoundException("Cannot find dependency %s in %s", filenameForOatDependency, file);
            }
            loadEntry(file2, false);
        }
    }

    @Nonnull
    private String getFilenameForOatDependency(String str) {
        String strSubstring = str.substring(str.lastIndexOf(47) + 1);
        if (!strSubstring.endsWith(".art")) {
            return strSubstring;
        }
        return strSubstring.substring(0, strSubstring.length() - 4) + ".oat";
    }

    static class NoDexException extends Exception {
        public NoDexException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }
}
