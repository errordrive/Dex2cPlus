package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedOdexFile;
import com.android.tools.smali.dexlib2.dexbacked.OatFile;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import com.android.tools.smali.util.StringUtils;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ClassPathResolver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Iterable<String> classPathDirs;
    private final PathEntryLoader pathEntryLoader;

    public ClassPathResolver(@Nonnull List<String> list, @Nullable List<String> list2, @Nonnull List<String> list3, @Nonnull MultiDexContainer.DexEntry<?> dexEntry) throws IOException {
        DexFile dexFile = dexEntry.getDexFile();
        this.classPathDirs = list;
        this.pathEntryLoader = new PathEntryLoader(dexEntry.getDexFile().getOpcodes());
        for (String str : list2 == null ? getDefaultBootClassPath(dexEntry, dexFile.getOpcodes().api) : list2) {
            try {
                loadLocalOrDeviceBootClassPathEntry(str);
            } catch (NotFoundException e) {
                if (str.endsWith(".odex")) {
                    String str2 = str.substring(0, str.length() - 5) + ".jar";
                    try {
                        loadLocalOrDeviceBootClassPathEntry(str2);
                    } catch (NotFoundException unused) {
                        throw new ResolveException(e);
                    } catch (PathEntryLoader.NoDexException unused2) {
                        throw new ResolveException("Neither %s nor %s contain a dex file", str, str2);
                    }
                } else {
                    throw new ResolveException(e);
                }
            } catch (PathEntryLoader.NoDexException e2) {
                if (str.endsWith(".jar")) {
                    String str3 = str.substring(0, str.length() - 4) + ".odex";
                    try {
                        loadLocalOrDeviceBootClassPathEntry(str3);
                    } catch (NotFoundException unused3) {
                        throw new ResolveException(e2);
                    } catch (PathEntryLoader.NoDexException unused4) {
                        throw new ResolveException("Neither %s nor %s contain a dex file", str, str3);
                    }
                } else {
                    throw new ResolveException(e2);
                }
            }
        }
        Iterator<String> it = list3.iterator();
        while (it.hasNext()) {
            try {
                loadLocalClassPathEntry(it.next());
            } catch (PathEntryLoader.NoDexException e3) {
                throw new ResolveException(e3);
            }
        }
        MultiDexContainer<? extends T> container = dexEntry.getContainer();
        Iterator<String> it2 = container.getDexEntryNames().iterator();
        while (it2.hasNext()) {
            this.pathEntryLoader.getClassProviders().add(new DexClassProvider(container.getEntry(it2.next()).getDexFile()));
        }
    }

    public ClassPathResolver(@Nonnull List<String> list, @Nonnull List<String> list2, @Nonnull MultiDexContainer.DexEntry<?> dexEntry) throws IOException {
        this(list, null, list2, dexEntry);
    }

    @Nonnull
    public List<ClassProvider> getResolvedClassProviders() {
        return this.pathEntryLoader.getResolvedClassProviders();
    }

    private boolean loadLocalClassPathEntry(@Nonnull String str) throws PathEntryLoader.NoDexException, IOException {
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        try {
            this.pathEntryLoader.loadEntry(file, true);
            return true;
        } catch (DexFileFactory.UnsupportedFileTypeException e) {
            throw new ResolveException(e, "Couldn't load classpath entry %s", str);
        }
    }

    private void loadLocalOrDeviceBootClassPathEntry(@Nonnull String str) throws PathEntryLoader.NoDexException, NotFoundException, IOException {
        if (loadLocalClassPathEntry(str)) {
            return;
        }
        List<String> listSplitDevicePath = splitDevicePath(str);
        Iterator<String> it = this.classPathDirs.iterator();
        while (true) {
            if (it.hasNext()) {
                File file = new File(it.next());
                if (file.exists()) {
                    for (int i = 0; i < listSplitDevicePath.size(); i++) {
                        File file2 = new File(file, StringUtils.join(listSplitDevicePath.subList(i, listSplitDevicePath.size()), File.separator));
                        if (file2.exists() && file2.isFile()) {
                            this.pathEntryLoader.loadEntry(file2, true);
                            return;
                        }
                    }
                }
            } else {
                throw new NotFoundException("Could not find classpath entry %s", str);
            }
        }
    }

    @Nonnull
    private static List<String> splitDevicePath(@Nonnull String str) {
        return Arrays.asList(str.split("/"));
    }

    static class NotFoundException extends Exception {
        public NotFoundException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    public static class ResolveException extends RuntimeException {
        public ResolveException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }

        public ResolveException(Throwable th) {
            super(th);
        }

        public ResolveException(Throwable th, String str, Object... objArr) {
            super(String.format(str, objArr), th);
        }
    }

    @Nonnull
    private static List<String> getDefaultBootClassPath(@Nonnull MultiDexContainer.DexEntry<?> dexEntry, int i) {
        Object container = dexEntry.getContainer();
        if (container instanceof OatFile) {
            return bootClassPathForOat((OatFile) container);
        }
        DexFile dexFile = dexEntry.getDexFile();
        if (dexFile instanceof DexBackedOdexFile) {
            return ((DexBackedOdexFile) dexFile).getDependencies();
        }
        if (i <= 8) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar");
        }
        if (i <= 11) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/core-junit.jar");
        }
        if (i <= 13) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/apache-xml.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/core-junit.jar");
        }
        if (i <= 15) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/apache-xml.jar", "/system/framework/filterfw.jar");
        }
        if (i <= 17) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/telephony-common.jar", "/system/framework/mms-common.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/apache-xml.jar");
        }
        if (i <= 18) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/telephony-common.jar", "/system/framework/voip-common.jar", "/system/framework/mms-common.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/apache-xml.jar");
        }
        if (i <= 19) {
            return Arrays.asList("/system/framework/core.jar", "/system/framework/conscrypt.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/framework2.jar", "/system/framework/telephony-common.jar", "/system/framework/voip-common.jar", "/system/framework/mms-common.jar", "/system/framework/android.policy.jar", "/system/framework/services.jar", "/system/framework/apache-xml.jar", "/system/framework/webviewchromium.jar");
        }
        if (i <= 22) {
            return Arrays.asList("/system/framework/core-libart.jar", "/system/framework/conscrypt.jar", "/system/framework/okhttp.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/telephony-common.jar", "/system/framework/voip-common.jar", "/system/framework/ims-common.jar", "/system/framework/mms-common.jar", "/system/framework/android.policy.jar", "/system/framework/apache-xml.jar");
        }
        if (i <= 23) {
            return Arrays.asList("/system/framework/core-libart.jar", "/system/framework/conscrypt.jar", "/system/framework/okhttp.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/telephony-common.jar", "/system/framework/voip-common.jar", "/system/framework/ims-common.jar", "/system/framework/apache-xml.jar", "/system/framework/org.apache.http.legacy.boot.jar");
        }
        return Arrays.asList("/system/framework/core-oj.jar", "/system/framework/core-libart.jar", "/system/framework/conscrypt.jar", "/system/framework/okhttp.jar", "/system/framework/core-junit.jar", "/system/framework/bouncycastle.jar", "/system/framework/ext.jar", "/system/framework/framework.jar", "/system/framework/telephony-common.jar", "/system/framework/voip-common.jar", "/system/framework/ims-common.jar", "/system/framework/apache-xml.jar", "/system/framework/org.apache.http.legacy.boot.jar");
    }

    private static List<String> bootClassPathForOat(@Nonnull OatFile oatFile) {
        List<String> bootClassPath = oatFile.getBootClassPath();
        if (bootClassPath.isEmpty()) {
            return Arrays.asList("boot.oat");
        }
        return replaceElementsSuffix(bootClassPath, ".art", ".oat");
    }

    private static List<String> replaceElementsSuffix(List<String> list, String str, String str2) {
        for (int i = 0; i < list.size(); i++) {
            String str3 = list.get(i);
            if (str3.endsWith(str)) {
                list.set(i, str3.substring(0, str3.length() - str.length()) + str2);
            }
        }
        return list;
    }
}
