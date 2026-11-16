package com.dex2c.plus.engine;

import android.content.Context;
import com.dex2c.plus.ConsoleLogger;
import com.dex2c.plus.model.ProjectState;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public class NdkCompiler {
    private static final Set<Process> ACTIVE_PROCESSES;
    private static final AtomicBoolean CANCEL_REQUESTED;

    public interface InstallProgressListener {
        void onProgress(String str, String str2, int i, boolean z);
    }

    public static native String getOnlineNdkUrlNative();

    static {
        try {
            System.loadLibrary("dex2cplus");
        } catch (Throwable unused) {
        }
        CANCEL_REQUESTED = new AtomicBoolean(false);
        ACTIVE_PROCESSES = Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static void resetCancellation() {
        CANCEL_REQUESTED.set(false);
    }

    public static boolean isCancelRequested() {
        return CANCEL_REQUESTED.get();
    }

    public static void cancelActiveProcesses() {
        CANCEL_REQUESTED.set(true);
        for (Process process : ACTIVE_PROCESSES) {
            try {
                try {
                    process.destroyForcibly();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                process.destroy();
            }
        }
        ACTIVE_PROCESSES.clear();
    }

    public static class NdkStatus {
        public final String message;
        public final boolean ready;

        public NdkStatus(boolean z, String str) {
            this.ready = z;
            this.message = str;
        }
    }

    public static NdkStatus checkStatus(Context context) {
        File file = new File(context.getFilesDir(), "mini_ndk");
        File file2 = new File(file, "sysroot/usr/include/jni.h");
        File fileFindClangBinary = findClangBinary(context, file);
        boolean zExists = file2.exists();
        boolean z = fileFindClangBinary != null && fileFindClangBinary.exists();
        if (zExists && z) {
            return new NdkStatus(true, "Ready: sysroot + clang (" + fileFindClangBinary.getName() + ")");
        }
        return new NdkStatus(false, "Install/Uninstall native code (C/C++) build support!");
    }

    private static boolean hasMiniNdkAsset(Context context) {
        try {
            String[] list = context.getAssets().list("");
            if (list != null) {
                for (String str : list) {
                    if ("mini_ndk.zip".equals(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean installFromLocalFile(Context context, File file, InstallProgressListener installProgressListener) {
        File file2;
        long j;
        boolean z = false;
        if (file == null || !file.exists() || !file.isFile()) {
            return false;
        }
        File file3 = new File(context.getFilesDir(), "mini_ndk");
        if (installProgressListener != null) {
            try {
                installProgressListener.onProgress("Installing...", file.getName(), 0, false);
            } catch (Exception unused) {
                return false;
            }
        }
        long jMax = Math.max(1L, file.length());
        byte[] bArr = new byte[32768];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream, 32768));
            int i = 0;
            long j2 = 0;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (!CANCEL_REQUESTED.get()) {
                            String name = nextEntry.getName();
                            if (name.startsWith("mini_ndk/")) {
                                name = name.substring(9);
                            }
                            if (!name.isEmpty()) {
                                File file4 = new File(file3, name);
                                if (nextEntry.isDirectory()) {
                                    file4.mkdirs();
                                    file2 = file3;
                                    j = jMax;
                                } else {
                                    if (file4.getParentFile() != null) {
                                        file4.getParentFile().mkdirs();
                                    }
                                    FileOutputStream fileOutputStream = new FileOutputStream(file4);
                                    file2 = file3;
                                    while (true) {
                                        try {
                                            int i2 = zipInputStream.read(bArr);
                                            if (i2 <= 0) {
                                                break;
                                            }
                                            long j3 = jMax;
                                            fileOutputStream.write(bArr, 0, i2);
                                            jMax = j3;
                                        } catch (Throwable th) {
                                            try {
                                                fileOutputStream.close();
                                                throw th;
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                                throw th;
                                            }
                                        }
                                        try {
                                            zipInputStream.close();
                                            throw th;
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                            throw th;
                                        }
                                    }
                                    j = jMax;
                                    fileOutputStream.close();
                                    if (name.startsWith("bin/") || name.startsWith("lib/") || name.endsWith("clang") || name.endsWith("clang++") || name.endsWith("lld")) {
                                        file4.setExecutable(true, false);
                                        file4.setReadable(true, false);
                                    }
                                    i++;
                                    long compressedSize = nextEntry.getCompressedSize();
                                    if (compressedSize <= 0) {
                                        compressedSize = Math.min(j / 200, 16384L);
                                    }
                                    j2 += compressedSize;
                                    int iMin = (int) Math.min(99L, (100 * j2) / j);
                                    if (installProgressListener != null && (i % 3 == 0 || iMin >= 95)) {
                                        installProgressListener.onProgress("Installing...", i + " files", iMin, false);
                                    }
                                }
                                file3 = file2;
                                jMax = j;
                                z = false;
                            }
                        } else {
                            zipInputStream.close();
                            fileInputStream.close();
                            return z;
                        }
                    } else {
                        zipInputStream.close();
                        fileInputStream.close();
                        if (i == 0) {
                            return false;
                        }
                        if (installProgressListener == null) {
                            return true;
                        }
                        installProgressListener.onProgress("Installing...", i + " files", 100, false);
                        return true;
                    }
                } catch (Throwable th4) {
                    zipInputStream.close();
                    throw th4;
                }
                try {
                    fileInputStream.close();
                    throw th;
                } catch (Throwable th5) {
                    th.addSuppressed(th5);
                    throw th;
                }
            }
        } catch (Throwable th6) {
            fileInputStream.close();
            throw th6;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01d5 */
    /* JADX WARN: Code duplicated, block: B:146:0x024c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x024e A[Catch: all -> 0x0242, TryCatch #4 {all -> 0x0242, blocks: (B:13:0x0035, B:14:0x003a, B:17:0x0044, B:144:0x0246, B:147:0x024e, B:148:0x0254, B:53:0x00d9), top: B:183:0x0033 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x0265  */
    /* JADX WARN: Code duplicated, block: B:157:0x0269 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:163:0x0276  */
    /* JADX WARN: Code duplicated, block: B:172:0x0289  */
    /* JADX WARN: Code duplicated, block: B:179:0x026b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x025a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x027e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0233: MOVE (r7 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY]), block:B:136:0x0233 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r27v10 */
    /* JADX WARN: Type inference failed for: r27v11 */
    /* JADX WARN: Type inference failed for: r27v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v6, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean downloadAndInstallOnline(android.content.Context r28, java.lang.String r29, com.dex2c.plus.engine.NdkCompiler.InstallProgressListener r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dex2c.plus.engine.NdkCompiler.downloadAndInstallOnline(android.content.Context, java.lang.String, com.dex2c.plus.engine.NdkCompiler$InstallProgressListener):boolean");
    }

    /* JADX WARN: Code duplicated, block: B:55:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static boolean extractMiniNdk(Context context) {
        File file = new File(context.getFilesDir(), "mini_ndk");
        try {
            InputStream inputStreamOpen = context.getAssets().open("mini_ndk.zip");
            try {
                ZipInputStream zipInputStream = new ZipInputStream(inputStreamOpen);
                try {
                    byte[] bArr = new byte[8192];
                    int i = 0;
                    while (true) {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            break;
                        }
                        File file2 = new File(file, nextEntry.getName());
                        if (nextEntry.isDirectory()) {
                            file2.mkdirs();
                        } else {
                            if (file2.getParentFile() != null) {
                                file2.getParentFile().mkdirs();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            while (true) {
                                try {
                                    int i2 = zipInputStream.read(bArr);
                                    if (i2 <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, i2);
                                } catch (Throwable th) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                                try {
                                    zipInputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th;
                            }
                            fileOutputStream.close();
                            if (nextEntry.getName().startsWith("bin/") || nextEntry.getName().startsWith("lib/")) {
                                file2.setExecutable(true, false);
                                file2.setReadable(true, false);
                            }
                            i++;
                        }
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th4) {
                                th.addSuppressed(th4);
                            }
                        }
                        throw th;
                    }
                    boolean z = i > 0;
                    zipInputStream.close();
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    return z;
                } catch (Throwable th5) {
                    zipInputStream.close();
                    throw th5;
                }
            } catch (Throwable th6) {
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                throw th6;
            }
        } catch (Exception unused) {
            return false;
        }
    }

    private static File findClangBinary(Context context, File file) {
        File[] fileArr = {new File(context.getApplicationInfo().nativeLibraryDir, "libclang.so"), new File(file, "bin/clang++"), new File(file, "bin/clang"), new File("/data/data/com.termux/files/usr/bin/clang++")};
        for (int i = 0; i < 4; i++) {
            File file2 = fileArr[i];
            if (file2.exists() && file2.isFile()) {
                file2.setExecutable(true, false);
                return file2;
            }
        }
        return null;
    }

    private static File findLldBinary(Context context, File file) {
        File[] fileArr = {new File(context.getApplicationInfo().nativeLibraryDir, "liblld.so"), new File(file, "bin/ld.lld"), new File(file, "bin/lld"), new File("/data/data/com.termux/files/usr/bin/ld.lld")};
        for (int i = 0; i < 4; i++) {
            File file2 = fileArr[i];
            if (file2.exists() && file2.isFile()) {
                file2.setExecutable(true, false);
                return file2;
            }
        }
        return null;
    }

    public static boolean compileIfAvailable(Context context, Dex2CTranslator.Result result, File file, boolean z, boolean z2) {
        ProjectState projectState = ProjectState.get();
        return compileIfAvailable(context, result, file, z2, z, projectState.x86, projectState.x86_64, projectState.parallelBuild, projectState.customLibName);
    }

    public static boolean compileIfAvailable(Context context, Dex2CTranslator.Result result, File file, boolean z, boolean z2, boolean z3) {
        ProjectState projectState = ProjectState.get();
        return compileIfAvailable(context, result, file, z2, z, projectState.x86, projectState.x86_64, z3, projectState.customLibName);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:51:0x0109  */
    /* JADX WARN: Code duplicated, block: B:52:0x010c  */
    public static boolean compileIfAvailable(Context context, Dex2CTranslator.Result result, File file, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str) {
        File file2;
        File file3;
        int i;
        boolean z6;
        AtomicBoolean atomicBoolean = CANCEL_REQUESTED;
        if (atomicBoolean.get()) {
            return false;
        }
        File file4 = new File(context.getFilesDir(), "mini_ndk");
        File file5 = new File(file4, "sysroot");
        if (!new File(file5, "usr/include/jni.h").exists() && hasMiniNdkAsset(context)) {
            extractMiniNdk(context);
        }
        File fileFindClangBinary = findClangBinary(context, file4);
        File fileFindLldBinary = findLldBinary(context, file4);
        if (!new File(file5, "usr/include/jni.h").exists() || fileFindClangBinary == null || !fileFindClangBinary.exists()) {
            ConsoleLogger.get().error("NDK", "Android NDK toolchain is not installed.");
            return false;
        }
        String str2 = "lib" + ProjectState.sanitizeLibraryName(str) + ".so";
        boolean z7 = (z || z2 || z3 || z4) ? z2 : true;
        if (z && !atomicBoolean.get()) {
            file2 = fileFindLldBinary;
            file3 = fileFindClangBinary;
            if (compileAndLinkAbi(context, file3, file2, file5, result, file, "armeabi-v7a", "arm-linux-androideabi", "armv7a-linux-androideabi21", "armelf_linux_eabi", z5, str2)) {
                i = 1;
            } else {
                i = 0;
                z6 = false;
            }
            if (z7 && !atomicBoolean.get()) {
                if (compileAndLinkAbi(context, file3, file2, file5, result, file, "arm64-v8a", "aarch64-linux-android", "aarch64-linux-android21", "aarch64linux", z5, str2)) {
                    i++;
                } else {
                    z6 = false;
                }
            }
            if (z3 && !atomicBoolean.get()) {
                if (compileAndLinkAbi(context, file3, file2, file5, result, file, "x86", "i686-linux-android", "i686-linux-android21", "elf_i386", z5, str2)) {
                    i++;
                } else {
                    z6 = false;
                }
            }
            if (z4 && !atomicBoolean.get()) {
                if (compileAndLinkAbi(context, file3, file2, file5, result, file, "x86_64", "x86_64-linux-android", "x86_64-linux-android21", "elf_x86_64", z5, str2)) {
                    i++;
                } else {
                    z6 = false;
                }
            }
            return atomicBoolean.get() && i > 0 && z6;
        }
        file2 = fileFindLldBinary;
        file3 = fileFindClangBinary;
        i = 0;
        z6 = true;
        if (z7) {
            if (compileAndLinkAbi(context, file3, file2, file5, result, file, "arm64-v8a", "aarch64-linux-android", "aarch64-linux-android21", "aarch64linux", z5, str2)) {
                i++;
            } else {
                z6 = false;
            }
        }
        if (z3) {
            if (compileAndLinkAbi(context, file3, file2, file5, result, file, "x86", "i686-linux-android", "i686-linux-android21", "elf_i386", z5, str2)) {
                i++;
            } else {
                z6 = false;
            }
        }
        if (z4) {
            if (compileAndLinkAbi(context, file3, file2, file5, result, file, "x86_64", "x86_64-linux-android", "x86_64-linux-android21", "elf_x86_64", z5, str2)) {
                i++;
            } else {
                z6 = false;
            }
        }
        if (atomicBoolean.get()) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:113:0x04c0 A[LOOP:5: B:111:0x04ba->B:113:0x04c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:115:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:118:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:126:0x0522  */
    /* JADX WARN: Code duplicated, block: B:58:0x027c  */
    /* JADX WARN: Code duplicated, block: B:66:0x02a1 A[LOOP:2: B:64:0x029b->B:66:0x02a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x02ce  */
    /* JADX WARN: Instruction removed from duplicated block: B:126:0x0522, please report this as an issue */
    private static boolean compileAndLinkAbi(final Context context, final File file, File file2, File file3, Dex2CTranslator.Result result, File file4, String str, String str2, final String str3, String str4, boolean z, String str5) {
        File file5;
        File file6;
        File file7;
        File file8;
        String str6;
        boolean z2;
        Dex2CTranslator.Result result2;
        AtomicBoolean atomicBoolean;
        String str7;
        File file9;
        File file10;
        File file11;
        String str8;
        String str9;
        boolean z3;
        ArrayList arrayList;
        Iterator<File> it;
        ArrayList arrayList2;
        Iterator it2;
        int iRunProcess;
        String str10;
        boolean z4;
        final File file12 = file3;
        String str11 = str;
        String str12 = str2;
        if (CANCEL_REQUESTED.get()) {
            return false;
        }
        File file13 = new File(file4, "lib/" + str11);
        file13.mkdirs();
        File file14 = new File(file4, "obj/" + str11);
        file14.mkdirs();
        File file15 = new File(file13, str5);
        if (file15.exists()) {
            file15.delete();
        }
        File file16 = new File(file12.getParentFile(), "clang_res");
        File file17 = new File(file12, "usr/lib/" + str12 + "/21");
        StringBuilder sb = new StringBuilder("usr/lib/");
        sb.append(str12);
        File file18 = new File(file12, sb.toString());
        boolean z5 = file17.exists() && new File(file17, "libc.so").exists();
        final int iMax = Math.max(1, result.cppFiles.size());
        final String str13 = "ABI_" + str11;
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        ConsoleLogger.get().updateStep(str13, "Compiling " + str11 + "...", "0/" + iMax);
        int iMin = (!z || result.cppFiles.size() <= 1) ? 1 : Math.min(result.cppFiles.size(), Math.min(3, Math.max(2, Math.max(1, Runtime.getRuntime().availableProcessors()) / 2)));
        final List listSynchronizedList = Collections.synchronizedList(new ArrayList());
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        String str14 = "...";
        String str15 = "/";
        if (iMin <= 1) {
            file5 = file16;
            file6 = file14;
            file7 = file17;
            file8 = file18;
            str6 = "/";
            boolean z6 = true;
            z2 = false;
            result2 = result;
            atomicBoolean = atomicBoolean2;
            Iterator<File> it3 = result2.cppFiles.iterator();
            while (true) {
                if (it3.hasNext()) {
                    File next = it3.next();
                    if (CANCEL_REQUESTED.get()) {
                        atomicBoolean.set(z6);
                    } else {
                        str7 = str;
                        file9 = file5;
                        context = context;
                        File fileCompileSingleSource = compileSingleSource(context, file, file3, file9, file6, next, str7, str2, str3);
                        file10 = file6;
                        file11 = file3;
                        if (fileCompileSingleSource == null) {
                            atomicBoolean.set(z6);
                            str8 = str14;
                            str9 = str6;
                            z3 = true;
                        } else {
                            listSynchronizedList.add(fileCompileSingleSource);
                            int iIncrementAndGet = atomicInteger.incrementAndGet();
                            ConsoleLogger consoleLogger = ConsoleLogger.get();
                            StringBuilder sb2 = new StringBuilder("Compiling ");
                            sb2.append(str7);
                            String str16 = str14;
                            sb2.append(str16);
                            consoleLogger.updateStep(str13, sb2.toString(), iIncrementAndGet + str6 + iMax);
                            file6 = file10;
                            file5 = file9;
                            atomicBoolean = atomicBoolean;
                            str14 = str16;
                            z6 = true;
                        }
                    }
                    AtomicBoolean atomicBoolean3 = atomicBoolean;
                    if (!CANCEL_REQUESTED.get() && !atomicBoolean3.get() && listSynchronizedList.size() == result2.cppFiles.size()) {
                        arrayList = new ArrayList();
                        it = result2.cppFiles.iterator();
                        while (it.hasNext()) {
                            arrayList.add(new File(file10, it.next().getName().replace(".cpp", ".o")));
                        }
                        if (file2 == null && file2.exists()) {
                            List<String> listBuildExecPrefix = buildExecPrefix(context, file2);
                            if (file2.getName().contains("lld") && !file2.getName().equals("ld.lld")) {
                                listBuildExecPrefix.add("-flavor");
                                listBuildExecPrefix.add("gnu");
                            }
                            listBuildExecPrefix.add("-shared");
                            listBuildExecPrefix.add("-soname");
                            listBuildExecPrefix.add(str5);
                            listBuildExecPrefix.add("-z");
                            listBuildExecPrefix.add("now");
                            listBuildExecPrefix.add("-z");
                            listBuildExecPrefix.add("relro");
                            listBuildExecPrefix.add("-z");
                            listBuildExecPrefix.add("max-page-size=16384");
                            listBuildExecPrefix.add("-m");
                            listBuildExecPrefix.add(str4);
                            if (z5) {
                                listBuildExecPrefix.add("--no-undefined");
                                File file19 = file7;
                                File file20 = new File(file19, "crtbegin_so.o");
                                if (file20.exists()) {
                                    listBuildExecPrefix.add(file20.getAbsolutePath());
                                }
                                Iterator it4 = arrayList.iterator();
                                while (it4.hasNext()) {
                                    listBuildExecPrefix.add(((File) it4.next()).getAbsolutePath());
                                }
                                StringBuilder sb3 = new StringBuilder("-L");
                                str10 = "Linker failed for ";
                                sb3.append(file19.getAbsolutePath());
                                listBuildExecPrefix.add(sb3.toString());
                                listBuildExecPrefix.add("-L" + file8.getAbsolutePath());
                                File file21 = new File(file9, "lib/linux");
                                if (file21.exists()) {
                                    listBuildExecPrefix.add("-L" + file21.getAbsolutePath());
                                }
                                listBuildExecPrefix.add("-llog");
                                listBuildExecPrefix.add("-lc");
                                listBuildExecPrefix.add("-lm");
                                listBuildExecPrefix.add("-ldl");
                                File file22 = new File(file19, "crtend_so.o");
                                if (file22.exists()) {
                                    listBuildExecPrefix.add(file22.getAbsolutePath());
                                }
                            } else {
                                str10 = "Linker failed for ";
                                listBuildExecPrefix.add("--unresolved-symbols=ignore-all");
                                listBuildExecPrefix.add("--allow-shlib-undefined");
                                Iterator it5 = arrayList.iterator();
                                while (it5.hasNext()) {
                                    listBuildExecPrefix.add(((File) it5.next()).getAbsolutePath());
                                }
                            }
                            listBuildExecPrefix.add("-o");
                            listBuildExecPrefix.add(file15.getAbsolutePath());
                            int iRunProcess2 = runProcess(context, file11, listBuildExecPrefix);
                            if (iRunProcess2 == 0 && file15.exists() && !CANCEL_REQUESTED.get()) {
                                ConsoleLogger.get().updateStep(str13, "Compiling " + str7 + str8, iMax + str9 + iMax);
                                return z3;
                            }
                            if (!CANCEL_REQUESTED.get()) {
                                ConsoleLogger.get().error("NDK", str10 + str7 + " (code " + iRunProcess2 + ")");
                            }
                            return z2;
                        }
                        arrayList2 = new ArrayList();
                        arrayList2.add(file.getAbsolutePath());
                        arrayList2.add("-target");
                        arrayList2.add(str3);
                        arrayList2.add("--sysroot=" + file11.getAbsolutePath());
                        arrayList2.add("-shared");
                        if (!z5) {
                            arrayList2.add("-Wl,--unresolved-symbols=ignore-all");
                            arrayList2.add("-Wl,--allow-shlib-undefined");
                            arrayList2.add("-nostdlib");
                        }
                        it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((File) it2.next()).getAbsolutePath());
                        }
                        if (z5) {
                            arrayList2.add("-llog");
                        }
                        arrayList2.add("-o");
                        arrayList2.add(file15.getAbsolutePath());
                        iRunProcess = runProcess(context, file11, arrayList2);
                        if (iRunProcess != 0 && file15.exists() && !CANCEL_REQUESTED.get()) {
                            ConsoleLogger.get().updateStep(str13, ((String) r18) + str7 + str8, iMax + str9 + iMax);
                            return z3;
                        }
                        if (!CANCEL_REQUESTED.get()) {
                            ConsoleLogger.get().error("NDK", "Linker failed for " + str7 + " (code " + iRunProcess + ")");
                        }
                    }
                    return z2;
                }
            }
        } else {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(iMin, new ThreadFactory() { // from class: com.dex2c.plus.engine.NdkCompiler$$ExternalSyntheticLambda2
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return NdkCompiler.lambda$compileAndLinkAbi$0(runnable);
                }
            });
            ArrayList arrayList3 = new ArrayList();
            AtomicBoolean atomicBoolean4 = atomicBoolean2;
            for (final File file23 : result.cppFiles) {
                final File file24 = file14;
                final String str17 = str11;
                File file25 = file17;
                String str18 = str15;
                ArrayList arrayList4 = arrayList3;
                final String str19 = str12;
                final File file26 = file16;
                final AtomicBoolean atomicBoolean5 = atomicBoolean4;
                arrayList4.add(new Callable() { // from class: com.dex2c.plus.engine.NdkCompiler$$ExternalSyntheticLambda3
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return NdkCompiler.lambda$compileAndLinkAbi$1(atomicBoolean5, context, file, file12, file26, file24, file23, str17, str19, str3, listSynchronizedList, atomicInteger, str13, iMax);
                    }
                });
                executorServiceNewFixedThreadPool = executorServiceNewFixedThreadPool;
                str11 = str;
                str12 = str2;
                file14 = file24;
                file16 = file26;
                arrayList3 = arrayList4;
                file18 = file18;
                str15 = str18;
                file12 = file3;
                atomicBoolean4 = atomicBoolean5;
                file17 = file25;
            }
            ExecutorService executorService = executorServiceNewFixedThreadPool;
            file6 = file14;
            file7 = file17;
            str6 = str15;
            atomicBoolean = atomicBoolean4;
            z2 = false;
            ArrayList arrayList5 = arrayList3;
            file8 = file18;
            file5 = file16;
            try {
                try {
                    Iterator it6 = executorService.invokeAll(arrayList5).iterator();
                    while (it6.hasNext()) {
                        if (!((Boolean) ((Future) it6.next()).get()).booleanValue()) {
                            z4 = true;
                            try {
                                atomicBoolean.set(true);
                            } catch (Exception unused) {
                                atomicBoolean.set(z4);
                                executorService.shutdownNow();
                                result2 = result;
                                str7 = str;
                                file10 = file6;
                                file9 = file5;
                                str8 = str14;
                                str9 = str6;
                                z3 = true;
                                file11 = file3;
                                AtomicBoolean atomicBoolean6 = atomicBoolean;
                                if (!CANCEL_REQUESTED.get()) {
                                    arrayList = new ArrayList();
                                    it = result2.cppFiles.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(new File(file10, it.next().getName().replace(".cpp", ".o")));
                                    }
                                    if (file2 == null) {
                                    }
                                    arrayList2 = new ArrayList();
                                    arrayList2.add(file.getAbsolutePath());
                                    arrayList2.add("-target");
                                    arrayList2.add(str3);
                                    arrayList2.add("--sysroot=" + file11.getAbsolutePath());
                                    arrayList2.add("-shared");
                                    if (!z5) {
                                        arrayList2.add("-Wl,--unresolved-symbols=ignore-all");
                                        arrayList2.add("-Wl,--allow-shlib-undefined");
                                        arrayList2.add("-nostdlib");
                                    }
                                    it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        arrayList2.add(((File) it2.next()).getAbsolutePath());
                                    }
                                    if (z5) {
                                        arrayList2.add("-llog");
                                    }
                                    arrayList2.add("-o");
                                    arrayList2.add(file15.getAbsolutePath());
                                    iRunProcess = runProcess(context, file11, arrayList2);
                                    if (iRunProcess != 0) {
                                    }
                                    if (!CANCEL_REQUESTED.get()) {
                                        ConsoleLogger.get().error("NDK", "Linker failed for " + str7 + " (code " + iRunProcess + ")");
                                    }
                                }
                                return z2;
                            }
                        }
                    }
                } catch (Throwable th) {
                    executorService.shutdownNow();
                    throw th;
                }
            } catch (Exception unused2) {
                z4 = true;
            }
            executorService.shutdownNow();
            result2 = result;
        }
        str7 = str;
        file10 = file6;
        file9 = file5;
        str8 = str14;
        str9 = str6;
        z3 = true;
        file11 = file3;
        AtomicBoolean atomicBoolean7 = atomicBoolean;
        if (!CANCEL_REQUESTED.get()) {
            arrayList = new ArrayList();
            it = result2.cppFiles.iterator();
            while (it.hasNext()) {
                arrayList.add(new File(file10, it.next().getName().replace(".cpp", ".o")));
            }
            if (file2 == null) {
            }
            arrayList2 = new ArrayList();
            arrayList2.add(file.getAbsolutePath());
            arrayList2.add("-target");
            arrayList2.add(str3);
            arrayList2.add("--sysroot=" + file11.getAbsolutePath());
            arrayList2.add("-shared");
            if (!z5) {
                arrayList2.add("-Wl,--unresolved-symbols=ignore-all");
                arrayList2.add("-Wl,--allow-shlib-undefined");
                arrayList2.add("-nostdlib");
            }
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((File) it2.next()).getAbsolutePath());
            }
            if (z5) {
                arrayList2.add("-llog");
            }
            arrayList2.add("-o");
            arrayList2.add(file15.getAbsolutePath());
            iRunProcess = runProcess(context, file11, arrayList2);
            if (iRunProcess != 0) {
            }
            if (!CANCEL_REQUESTED.get()) {
                ConsoleLogger.get().error("NDK", "Linker failed for " + str7 + " (code " + iRunProcess + ")");
            }
        }
        return z2;
    }

    static /* synthetic */ Thread lambda$compileAndLinkAbi$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "Dex2c-ClangWorker");
        thread.setPriority(4);
        return thread;
    }

    static /* synthetic */ Boolean lambda$compileAndLinkAbi$1(AtomicBoolean atomicBoolean, Context context, File file, File file2, File file3, File file4, File file5, String str, String str2, String str3, List list, AtomicInteger atomicInteger, String str4, int i) throws Exception {
        if (atomicBoolean.get() || CANCEL_REQUESTED.get()) {
            return false;
        }
        File fileCompileSingleSource = compileSingleSource(context, file, file2, file3, file4, file5, str, str2, str3);
        if (fileCompileSingleSource == null) {
            atomicBoolean.set(true);
            return false;
        }
        list.add(fileCompileSingleSource);
        int iIncrementAndGet = atomicInteger.incrementAndGet();
        ConsoleLogger.get().updateStep(str4, "Compiling " + str + "...", iIncrementAndGet + "/" + i);
        return true;
    }

    private static File compileSingleSource(Context context, File file, File file2, File file3, File file4, File file5, String str, String str2, String str3) {
        AtomicBoolean atomicBoolean = CANCEL_REQUESTED;
        if (atomicBoolean.get()) {
            return null;
        }
        File file6 = new File(file4, file5.getName().replace(".cpp", ".o"));
        if (file6.exists()) {
            file6.delete();
        }
        List<String> listBuildExecPrefix = buildExecPrefix(context, file);
        listBuildExecPrefix.add("-cc1");
        listBuildExecPrefix.add("-triple");
        listBuildExecPrefix.add(str3);
        listBuildExecPrefix.add("-emit-obj");
        listBuildExecPrefix.add("-pic-level");
        listBuildExecPrefix.add("2");
        listBuildExecPrefix.add("-O2");
        listBuildExecPrefix.add("-std=c++17");
        listBuildExecPrefix.add("-fgnuc-version=4.2.1");
        listBuildExecPrefix.add("-isysroot");
        listBuildExecPrefix.add(file2.getAbsolutePath());
        File file7 = new File(file2, "usr/include/c++/v1");
        if (file7.exists()) {
            listBuildExecPrefix.add("-internal-isystem");
            listBuildExecPrefix.add(file7.getAbsolutePath());
        }
        if (file3.exists()) {
            listBuildExecPrefix.add("-resource-dir");
            listBuildExecPrefix.add(file3.getAbsolutePath());
            File file8 = new File(file3, "include");
            if (file8.exists()) {
                listBuildExecPrefix.add("-internal-isystem");
                listBuildExecPrefix.add(file8.getAbsolutePath());
            }
        }
        File file9 = new File(file2, "usr/include/" + str2);
        if (file9.exists()) {
            listBuildExecPrefix.add("-internal-externc-isystem");
            listBuildExecPrefix.add(file9.getAbsolutePath());
        } else {
            File file10 = new File(file2, "usr/include/aarch64-linux-android");
            if (!file10.exists()) {
                file10 = new File(file2, "usr/include/arm-linux-androideabi");
            }
            if (file10.exists()) {
                listBuildExecPrefix.add("-internal-externc-isystem");
                listBuildExecPrefix.add(file10.getAbsolutePath());
            }
        }
        listBuildExecPrefix.add("-internal-externc-isystem");
        listBuildExecPrefix.add(new File(file2, "usr/include").getAbsolutePath());
        listBuildExecPrefix.add("-I");
        listBuildExecPrefix.add(file5.getParentFile().getAbsolutePath());
        listBuildExecPrefix.add("-o");
        listBuildExecPrefix.add(file6.getAbsolutePath());
        listBuildExecPrefix.add("-x");
        listBuildExecPrefix.add("c++");
        listBuildExecPrefix.add(file5.getAbsolutePath());
        int iRunProcess = runProcess(context, file2, listBuildExecPrefix);
        if (atomicBoolean.get()) {
            return null;
        }
        if (iRunProcess == 0 && file6.exists()) {
            return file6;
        }
        ConsoleLogger.get().error("NDK", "Compile failed on " + file5.getName() + " [" + str + "]");
        return null;
    }

    private static List<String> buildExecPrefix(Context context, File file) {
        ArrayList arrayList = new ArrayList();
        if (!file.getAbsolutePath().startsWith(context.getApplicationInfo().nativeLibraryDir) && new File("/system/bin/linker64").exists()) {
            arrayList.add("/system/bin/linker64");
        }
        arrayList.add(file.getAbsolutePath());
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b6  */
    private static int runProcess(Context context, File file, List<String> list) {
        String str;
        if (CANCEL_REQUESTED.get()) {
            return -1;
        }
        Process processStart = null;
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(list);
            File file2 = new File(file.getParentFile(), "lib");
            StringBuilder sb = new StringBuilder();
            sb.append(context.getApplicationInfo().nativeLibraryDir);
            if (file2.exists()) {
                str = ":" + file2.getAbsolutePath();
            } else {
                str = "";
            }
            sb.append(str);
            processBuilder.environment().put("LD_LIBRARY_PATH", sb.toString());
            processBuilder.environment().put("TMPDIR", context.getCacheDir().getAbsolutePath());
            processBuilder.redirectErrorStream(true);
            processStart = processBuilder.start();
            ACTIVE_PROCESSES.add(processStart);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
            while (bufferedReader.readLine() != null) {
                try {
                    if (CANCEL_REQUESTED.get()) {
                        processStart.destroyForcibly();
                        break;
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                if (processStart != null) {
                    ACTIVE_PROCESSES.remove(processStart);
                }
                return -1;
            }
            bufferedReader.close();
            int iWaitFor = processStart.waitFor();
            if (processStart != null) {
                ACTIVE_PROCESSES.remove(processStart);
            }
            return iWaitFor;
        } catch (Exception unused) {
            if (processStart != null) {
                ACTIVE_PROCESSES.remove(processStart);
            }
            return -1;
        } catch (Throwable th3) {
            if (processStart != null) {
                ACTIVE_PROCESSES.remove(processStart);
            }
            throw th3;
        }
    }
}
