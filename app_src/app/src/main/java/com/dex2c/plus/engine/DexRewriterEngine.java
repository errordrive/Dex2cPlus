package com.dex2c.plus.engine;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.debug.DebugItem;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.immutable.ImmutableClassDef;
import com.android.tools.smali.dexlib2.immutable.ImmutableExceptionHandler;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethod;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethodImplementation;
import com.android.tools.smali.dexlib2.immutable.ImmutableTryBlock;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethodParameter;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction10x;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction21c;
import com.android.tools.smali.dexlib2.immutable.instruction.ImmutableInstruction35c;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableStringReference;
import com.android.tools.smali.dexlib2.rewriter.DexRewriter;
import com.android.tools.smali.dexlib2.rewriter.Rewriter;
import com.android.tools.smali.dexlib2.rewriter.RewriterModule;
import com.android.tools.smali.dexlib2.rewriter.Rewriters;
import com.dex2c.plus.ConsoleLogger;
import com.dex2c.plus.StorageHelper;
import com.dex2c.plus.model.DexClassItem;
import com.dex2c.plus.model.ProjectState;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.Adler32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class DexRewriterEngine {
    public static final String LOADER_INIT_METHOD = "init";
    private static final int STREAM_BUF_SIZE = 65536;

    public static class OutputResult {
        public File bundleZip;
        public File outputFolder;
        public File protectedApk;
    }

    public static OutputResult packageAndSaveToStorage(Context context, File file, String str, List<DexClassItem> list, File file2, boolean z, String str2, String str3, Set<String> set) throws Exception {
        File file3;
        DexBackedDexFile dexBackedDexFileLoadDexFile;
        HashMap map = new HashMap();
        File file4 = new File(file2, "dex");
        file4.mkdirs();
        String strSanitizeLibraryName = ProjectState.sanitizeLibraryName(str2);
        String str4 = "L" + ProjectState.sanitizeLoaderClassName(str3).replace('.', '/') + ";";
        File file5 = new File(file2, "lib");
        boolean zHasCompiledSoFiles = hasCompiledSoFiles(file5, "lib" + strSanitizeLibraryName + ".so");
        if (z && zHasCompiledSoFiles) {
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            HashSet hashSet2 = new HashSet();
            for (DexClassItem dexClassItem : list) {
                if (!str4.equals(dexClassItem.descriptor) && (set == null || set.contains(dexClassItem.descriptor))) {
                    hashSet.add(dexClassItem.descriptor);
                    if (hashSet2.add(dexClassItem.dexEntryName)) {
                        arrayList.add(dexClassItem.dexEntryName);
                    }
                }
            }
            Collections.sort(arrayList);
            String str5 = "classes.dex";
            int i = 0;
            if (!arrayList.contains("classes.dex")) {
                str5 = arrayList.isEmpty() ? null : (String) arrayList.get(0);
            }
            int iMax = Math.max(1, arrayList.size());
            ConsoleLogger.get().updateStep("STEP_REWRITE", "Rewriting DEX...", "0/" + iMax);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str6 = (String) it.next();
                if (NdkCompiler.isCancelRequested()) {
                    break;
                }
                it = it;
                int i2 = i;
                File file6 = new File(file4, "in_" + str6);
                try {
                    if (ApkDexManager.extractSingleDexToFile(file, str6, file6)) {
                        try {
                            dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file6, (Opcodes) null);
                        } catch (Exception unused) {
                            dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file6, Opcodes.getDefault());
                        }
                        boolean zEquals = str6.equals(str5);
                        String str7 = str5;
                        file3 = file6;
                        try {
                            final DexFile dexFileRewrite = new DexRewriter(new AnonymousClass1(str4, strSanitizeLibraryName, hashSet)).getDexFileRewriter().rewrite(dexBackedDexFileLoadDexFile);
                            if (zEquals && !containsClass(dexFileRewrite, str4)) {
                                final ClassDef classDefBuildCustomLoaderClassDef = buildCustomLoaderClassDef(str4, strSanitizeLibraryName);
                                dexFileRewrite = new DexFile() { // from class: com.dex2c.plus.engine.DexRewriterEngine.2
                                    @Override // com.android.tools.smali.dexlib2.iface.DexFile
                                    public Set<? extends ClassDef> getClasses() {
                                        LinkedHashSet linkedHashSet = new LinkedHashSet(dexFileRewrite.getClasses());
                                        linkedHashSet.add(classDefBuildCustomLoaderClassDef);
                                        return linkedHashSet;
                                    }

                                    @Override // com.android.tools.smali.dexlib2.iface.DexFile
                                    public Opcodes getOpcodes() {
                                        return dexFileRewrite.getOpcodes();
                                    }
                                };
                            }
                            File file7 = new File(file4, str6);
                            DexFileFactory.writeDexFile(file7.getAbsolutePath(), dexFileRewrite);
                            sanitizeNativeMethodsInDexFile(file7);
                            map.put(str6, file7);
                            i = i2 + 1;
                            ConsoleLogger.get().updateStep("STEP_REWRITE", "Rewriting DEX...", i + "/" + iMax);
                            if (file3.exists()) {
                                file3.delete();
                            }
                            str5 = str7;
                        } catch (Throwable th) {
                            th = th;
                            if (file3.exists()) {
                                file3.delete();
                            }
                            throw th;
                        }
                    } else {
                        if (file6.exists()) {
                            file6.delete();
                        }
                        i = i2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    file3 = file6;
                }
            }
            if (!NdkCompiler.isCancelRequested()) {
                ConsoleLogger.get().updateStep("STEP_REWRITE", "Rewriting DEX...", iMax + "/" + iMax);
            }
        }
        File fileResolveOutputDirectory = resolveOutputDirectory(context, file);
        File fileResolveNextCompiledApkFile = resolveNextCompiledApkFile(fileResolveOutputDirectory, str);
        ConsoleLogger.get().updateStep("STEP_PACKAGE", "Packaging APK...", "0/1");
        rebuildApkWithNativeFastZip(file, fileResolveNextCompiledApkFile, map, file5);
        try {
            ApkSignerHelper.signApk(fileResolveNextCompiledApkFile);
        } catch (Throwable ignored) {
        }
        if (!NdkCompiler.isCancelRequested()) {
            ConsoleLogger.get().updateStep("STEP_PACKAGE", "Packaging APK...", "1/1");
        }
        OutputResult outputResult = new OutputResult();
        outputResult.outputFolder = fileResolveOutputDirectory;
        outputResult.protectedApk = fileResolveNextCompiledApkFile;
        outputResult.bundleZip = null;
        return outputResult;
    }

    /* JADX INFO: renamed from: com.dex2c.plus.engine.DexRewriterEngine$1, reason: invalid class name */
    class AnonymousClass1 extends RewriterModule {
        final /* synthetic */ String val$cleanLibName;
        final /* synthetic */ String val$loaderClassDesc;
        final /* synthetic */ Set val$targetDescriptors;

        AnonymousClass1(String str, String str2, Set set) {
            this.val$loaderClassDesc = str;
            this.val$cleanLibName = str2;
            this.val$targetDescriptors = set;
        }

        @Override // com.android.tools.smali.dexlib2.rewriter.RewriterModule
        public Rewriter<ClassDef> getClassDefRewriter(Rewriters rewriters) {
            final String str = this.val$loaderClassDesc;
            final String str2 = this.val$cleanLibName;
            final Set set = this.val$targetDescriptors;
            return new Rewriter() { // from class: com.dex2c.plus.engine.DexRewriterEngine$1$$ExternalSyntheticLambda0
                @Override // com.android.tools.smali.dexlib2.rewriter.Rewriter
                public final Object rewrite(Object obj) {
                    return DexRewriterEngine.AnonymousClass1.lambda$getClassDefRewriter$0(str, str2, set, (ClassDef) obj);
                }
            };
        }

        static /* synthetic */ ClassDef lambda$getClassDefRewriter$0(String str, String str2, Set set, ClassDef classDef) {
            if (str.equals(classDef.getType())) {
                return DexRewriterEngine.buildCustomLoaderClassDef(str, str2);
            }
            return (set.contains(classDef.getType()) && Dex2CTranslator.isClassTranslatable(classDef)) ? DexRewriterEngine.rewriteProtectedClass(classDef, str) : classDef;
        }
    }

    private static File resolveOutputDirectory(Context context, File file) {
        File parentFile;
        ProjectState projectState = ProjectState.get();
        if (projectState.outputLocationMode == 1) {
            if (projectState.selectedApkSourceFile != null) {
                file = projectState.selectedApkSourceFile;
            }
            if (file != null && (parentFile = file.getParentFile()) != null && ((parentFile.exists() || parentFile.mkdirs()) && parentFile.canWrite())) {
                return parentFile;
            }
        }
        File dex2cPlusOutputDir = StorageHelper.getDex2cPlusOutputDir(context);
        if (!dex2cPlusOutputDir.exists()) {
            dex2cPlusOutputDir.mkdirs();
        }
        return dex2cPlusOutputDir;
    }

    private static File resolveNextCompiledApkFile(File file, String str) {
        String str2;
        if (str == null || str.trim().isEmpty()) {
            str = "";
        }
        String strReplaceAll = str.replaceAll("(?i)\\.apk$", "").replaceAll("(?i)_?dex2c_(compiled(_\\d+)?|\\d+_\\d+)$", "").replaceAll("(?i)_?dex2c$", "").replaceAll("[^a-zA-Z0-9._-]", "_");
        if (strReplaceAll.isEmpty() || strReplaceAll.equalsIgnoreCase(TypedValues.AttributesType.S_TARGET)) {
            str2 = "dex2c_Compiled";
        } else {
            str2 = strReplaceAll + "_dex2c_Compiled";
        }
        File file2 = new File(file, str2 + ".apk");
        if (!file2.exists()) {
            return file2;
        }
        int i = 2;
        while (true) {
            File file3 = new File(file, str2 + "_" + i + ".apk");
            if (!file3.exists()) {
                return file3;
            }
            i++;
        }
    }

    private static boolean containsClass(DexFile dexFile, String str) {
        Iterator<? extends ClassDef> it = dexFile.getClasses().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getType())) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasCompiledSoFiles(File file, String str) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            File file3 = new File(file2, str);
            if (file3.exists() && file3.length() > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ClassDef buildCustomLoaderClassDef(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new ImmutableInstruction35c(Opcode.INVOKE_STATIC, 0, 0, 0, 0, 0, 0, new ImmutableMethodReference(str, LOADER_INIT_METHOD, (List<String>) Collections.EMPTY_LIST, "V")));
        arrayList2.add(new ImmutableInstruction10x(Opcode.RETURN_VOID));
        arrayList.add(new ImmutableMethod(str, "<clinit>", (Iterable<? extends MethodParameter>) Collections.EMPTY_LIST, "V", AccessFlags.STATIC.getValue() | AccessFlags.CONSTRUCTOR.getValue(), (Set<? extends Annotation>) Collections.EMPTY_SET, (Set<HiddenApiRestriction>) Collections.EMPTY_SET, new ImmutableMethodImplementation(0, arrayList2, (List<? extends TryBlock<? extends ExceptionHandler>>) null, (Iterable<? extends DebugItem>) null)));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new ImmutableInstruction35c(Opcode.INVOKE_DIRECT, 1, 0, 0, 0, 0, 0, new ImmutableMethodReference("Ljava/lang/Object;", "<init>", (List<String>) Collections.EMPTY_LIST, "V")));
        arrayList3.add(new ImmutableInstruction10x(Opcode.RETURN_VOID));
        arrayList.add(new ImmutableMethod(str, "<init>", (Iterable<? extends MethodParameter>) Collections.EMPTY_LIST, "V", AccessFlags.PUBLIC.getValue() | AccessFlags.CONSTRUCTOR.getValue(), (Set<? extends Annotation>) Collections.EMPTY_SET, (Set<HiddenApiRestriction>) Collections.EMPTY_SET, new ImmutableMethodImplementation(1, arrayList3, (List<? extends TryBlock<? extends ExceptionHandler>>) null, (Iterable<? extends DebugItem>) null)));
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new ImmutableInstruction21c(Opcode.CONST_STRING, 0, new ImmutableStringReference(str2)));
        arrayList4.add(new ImmutableInstruction35c(Opcode.INVOKE_STATIC, 1, 0, 0, 0, 0, 0, new ImmutableMethodReference("Ljava/lang/System;", "loadLibrary", (List<String>) Collections.singletonList("Ljava/lang/String;"), "V")));
        arrayList4.add(new ImmutableInstruction10x(Opcode.RETURN_VOID));
        arrayList.add(new ImmutableMethod(str, LOADER_INIT_METHOD, (Iterable<? extends MethodParameter>) Collections.EMPTY_LIST, "V", AccessFlags.PUBLIC.getValue() | AccessFlags.STATIC.getValue(), (Set<? extends Annotation>) Collections.EMPTY_SET, (Set<HiddenApiRestriction>) Collections.EMPTY_SET, new ImmutableMethodImplementation(1, arrayList4, (List<? extends TryBlock<? extends ExceptionHandler>>) null, (Iterable<? extends DebugItem>) null)));
        return new ImmutableClassDef(str, AccessFlags.PUBLIC.getValue(), "Ljava/lang/Object;", Collections.EMPTY_LIST, "Loader.java", Collections.EMPTY_SET, Collections.EMPTY_LIST, Collections.EMPTY_LIST, arrayList, Collections.EMPTY_LIST);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ClassDef rewriteProtectedClass(ClassDef classDef, String str) {
        String type = classDef.getType();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Method method = null;
        for (Method method2 : classDef.getDirectMethods()) {
            if ("<clinit>".equals(method2.getName())) {
                method = method2;
            } else if (Dex2CTranslator.isTranslatable(method2)) {
                arrayList.add(toNativeMethod(method2));
            } else {
                arrayList.add(method2);
            }
        }
        for (Method method3 : classDef.getVirtualMethods()) {
            if (Dex2CTranslator.isTranslatable(method3)) {
                arrayList2.add(toNativeMethod(method3));
            } else {
                arrayList2.add(method3);
            }
        }
        if (method != null) {
            arrayList.add(prependLoaderCallToClinit(str, method));
        } else {
            arrayList.add(buildFreshClinitCallingLoader(type, str));
        }
        return new ImmutableClassDef(classDef.getType(), classDef.getAccessFlags(), classDef.getSuperclass(), classDef.getInterfaces(), classDef.getSourceFile(), classDef.getAnnotations(), classDef.getStaticFields(), classDef.getInstanceFields(), arrayList, arrayList2);
    }

    private static Method toNativeMethod(Method method) {
        int accessFlags = (method.getAccessFlags() | AccessFlags.NATIVE.getValue()) & (~AccessFlags.DECLARED_SYNCHRONIZED.getValue()) & (~AccessFlags.SYNCHRONIZED.getValue()) & (~AccessFlags.STRICTFP.getValue());
        String definingClass = method.getDefiningClass();
        String name = method.getName();
        List<ImmutableMethodParameter> cleanParams = toCleanParameters(method.getParameters());
        String returnType = method.getReturnType();
        Set<? extends Annotation> annotations = method.getAnnotations();
        Set<HiddenApiRestriction> hiddenApiRestrictions = method.getHiddenApiRestrictions();
        return new ImmutableMethod(definingClass, name, cleanParams, returnType, accessFlags, annotations, hiddenApiRestrictions, (MethodImplementation) null);
    }

    private static List<ImmutableMethodParameter> toCleanParameters(List<? extends MethodParameter> list) {
        if (list == null) return Collections.emptyList();
        ArrayList<ImmutableMethodParameter> clean = new ArrayList<>(list.size());
        for (MethodParameter p : list) {
            clean.add(new ImmutableMethodParameter(p.getType(), Collections.emptySet(), null));
        }
        return clean;
    }

    private static Method buildFreshClinitCallingLoader(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ImmutableInstruction35c(Opcode.INVOKE_STATIC, 0, 0, 0, 0, 0, 0, new ImmutableMethodReference(str2, LOADER_INIT_METHOD, (List<String>) Collections.EMPTY_LIST, "V")));
        arrayList.add(new ImmutableInstruction10x(Opcode.RETURN_VOID));
        ImmutableMethodImplementation immutableMethodImplementation = new ImmutableMethodImplementation(0, arrayList, (List<? extends TryBlock<? extends ExceptionHandler>>) null, (Iterable<? extends DebugItem>) null);
        return new ImmutableMethod(str, "<clinit>", (Iterable<? extends MethodParameter>) Collections.EMPTY_LIST, "V", AccessFlags.STATIC.getValue() | AccessFlags.CONSTRUCTOR.getValue(), (Set<? extends Annotation>) Collections.EMPTY_SET, (Set<HiddenApiRestriction>) Collections.EMPTY_SET, immutableMethodImplementation);
    }

    private static Method prependLoaderCallToClinit(String str, Method method) {
        MethodImplementation implementation = method.getImplementation();
        if (implementation == null) {
            return buildFreshClinitCallingLoader(method.getDefiningClass(), str);
        }
        ImmutableInstruction35c immutableInstruction35c = new ImmutableInstruction35c(Opcode.INVOKE_STATIC, 0, 0, 0, 0, 0, 0, new ImmutableMethodReference(str, LOADER_INIT_METHOD, (List<String>) Collections.EMPTY_LIST, "V"));
        ImmutableInstruction10x immutableInstruction10x = new ImmutableInstruction10x(Opcode.NOP);
        int codeUnits = immutableInstruction35c.getCodeUnits() + immutableInstruction10x.getCodeUnits();
        ArrayList arrayList = new ArrayList();
        arrayList.add(immutableInstruction35c);
        arrayList.add(immutableInstruction10x);
        Iterator<? extends Instruction> it = implementation.getInstructions().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        ArrayList arrayList2 = new ArrayList();
        for (TryBlock<? extends ExceptionHandler> tryBlock : implementation.getTryBlocks()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = tryBlock.getExceptionHandlers().iterator();
            while (it2.hasNext()) {
                ExceptionHandler exceptionHandler = (ExceptionHandler) it2.next();
                arrayList3.add(new ImmutableExceptionHandler(exceptionHandler.getExceptionType(), exceptionHandler.getHandlerCodeAddress() + codeUnits));
            }
            arrayList2.add(new ImmutableTryBlock(tryBlock.getStartCodeAddress() + codeUnits, tryBlock.getCodeUnitCount(), arrayList3));
        }
        return new ImmutableMethod(method.getDefiningClass(), method.getName(), method.getParameters(), method.getReturnType(), method.getAccessFlags(), method.getAnnotations(), method.getHiddenApiRestrictions(), new ImmutableMethodImplementation(implementation.getRegisterCount(), arrayList, arrayList2, (Iterable<? extends DebugItem>) null));
    }

    private static void rebuildApkWithNativeFastZip(File file, File file2, Map<String, File> map, File file3) throws Exception {
        try {
            if (FastZipModifier.copyFileNative(file.getAbsolutePath(), file2.getAbsolutePath())) {
                FastZipModifier.sanitizeZipFakeEncryptionNative(file2.getAbsolutePath());
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, File> entry : map.entrySet()) {
                    File value = entry.getValue();
                    if (value != null && value.exists()) {
                        arrayList.add(entry.getKey());
                        arrayList.add(value.getAbsolutePath());
                    }
                }
                collectDirFilePairs(file3, "lib", arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                if (FastZipModifier.appendFilesNative(file2.getAbsolutePath(), (String[]) arrayList.toArray(new String[0]))) {
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        rebuildApkStreamingFallback(file, file2, map, file3);
    }

    private static void collectDirFilePairs(File file, String str, List<String> list) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String str2 = str + "/" + file2.getName();
            if (file2.isDirectory()) {
                collectDirFilePairs(file2, str2, list);
            } else if (file2.isFile() && file2.length() > 0) {
                list.add(str2);
                list.add(file2.getAbsolutePath());
            }
        }
    }

    private static void rebuildApkStreamingFallback(File file, File file2, Map<String, File> map, File file3) throws Exception {
        byte[] bArr = new byte[65536];
        HashSet hashSet = new HashSet();
        ZipFile zipFile = new ZipFile(file);
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2), 65536));
            try {
                if (file3.exists()) {
                    addDirToZip(file3, "lib", zipOutputStream, hashSet, bArr);
                }
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements() && !NdkCompiler.isCancelRequested()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!hashSet.contains(name) && (!name.startsWith("META-INF/") || (!name.endsWith(".SF") && !name.endsWith(".RSA") && !name.endsWith(".DSA") && !name.equals("META-INF/MANIFEST.MF")))) {
                        hashSet.add(name);
                        if (map.containsKey(name)) {
                            zipOutputStream.putNextEntry(new ZipEntry(name));
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(map.get(name)), 65536);
                            while (true) {
                                try {
                                    int i = bufferedInputStream.read(bArr);
                                    if (i <= 0) {
                                        break;
                                    } else {
                                        zipOutputStream.write(bArr, 0, i);
                                    }
                                } catch (Throwable th) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                                try {
                                    zipOutputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th;
                            }
                            bufferedInputStream.close();
                            zipOutputStream.closeEntry();
                        } else {
                            ZipEntry zipEntry = new ZipEntry(name);
                            if (zipEntryNextElement.getMethod() == 0) {
                                zipEntry.setMethod(0);
                                zipEntry.setSize(zipEntryNextElement.getSize());
                                zipEntry.setCompressedSize(zipEntryNextElement.getSize());
                                zipEntry.setCrc(zipEntryNextElement.getCrc());
                            }
                            zipOutputStream.putNextEntry(zipEntry);
                            InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                            while (true) {
                                try {
                                    int i2 = inputStream.read(bArr);
                                    if (i2 <= 0) {
                                        break;
                                    } else {
                                        zipOutputStream.write(bArr, 0, i2);
                                    }
                                } catch (Throwable th4) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th5) {
                                            th4.addSuppressed(th5);
                                        }
                                    }
                                    throw th4;
                                }
                                zipOutputStream.close();
                                throw th;
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            zipOutputStream.closeEntry();
                        }
                    }
                }
                zipOutputStream.close();
                zipFile.close();
            } catch (Throwable th6) {
                zipOutputStream.close();
                throw th6;
            }
        } catch (Throwable th7) {
            try {
                zipFile.close();
            } catch (Throwable th8) {
                th7.addSuppressed(th8);
            }
            throw th7;
        }
    }

    private static void addDirToZip(File file, String str, ZipOutputStream zipOutputStream, Set<String> set, byte[] bArr) throws Exception {
        File[] fileArrListFiles;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                String str2 = str + "/" + file2.getName();
                if (file2.isDirectory()) {
                    addDirToZip(file2, str2, zipOutputStream, set, bArr);
                } else if (set.contains(str2)) {
                    continue;
                } else {
                    set.add(str2);
                    ZipEntry zipEntry = new ZipEntry(str2);
                    if (str2.startsWith("lib/") || str2.endsWith(".so")) {
                        zipEntry.setMethod(ZipEntry.STORED);
                        zipEntry.setSize(file2.length());
                        zipEntry.setCompressedSize(file2.length());
                        java.util.zip.CRC32 crc = new java.util.zip.CRC32();
                        try (FileInputStream fis = new FileInputStream(file2)) {
                            int r;
                            while ((r = fis.read(bArr)) > 0) {
                                crc.update(bArr, 0, r);
                            }
                        }
                        zipEntry.setCrc(crc.getValue());
                    }
                    zipOutputStream.putNextEntry(zipEntry);
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2), 65536);
                    while (true) {
                        try {
                            int i = bufferedInputStream.read(bArr);
                            if (i <= 0) {
                                break;
                            } else {
                                zipOutputStream.write(bArr, 0, i);
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
                    bufferedInputStream.close();
                    zipOutputStream.closeEntry();
                }
            }
        }
    }

    public static boolean sanitizeNativeMethodsInDexFile(File dexFile) {
        if (dexFile == null || !dexFile.exists() || dexFile.length() < 112) {
            return false;
        }
        try {
            byte[] dex;
            try (FileInputStream fis = new FileInputStream(dexFile);
                 ByteArrayOutputStream baos = new ByteArrayOutputStream((int) dexFile.length() + 4096)) {
                byte[] buf = new byte[16384];
                int r;
                while ((r = fis.read(buf)) != -1) {
                    baos.write(buf, 0, r);
                }
                dex = baos.toByteArray();
            }

            ByteBuffer header = ByteBuffer.wrap(dex).order(ByteOrder.LITTLE_ENDIAN);
            int classDefsSize = header.getInt(96);
            int classDefsOff = header.getInt(100);

            ByteArrayOutputStream appendBaos = new ByteArrayOutputStream();
            int currentEnd = dex.length;
            boolean modified = false;

            for (int c = 0; c < classDefsSize; c++) {
                int classDefOffset = classDefsOff + c * 32;
                int classDataOff = header.getInt(classDefOffset + 24);
                if (classDataOff == 0) continue;

                int p = classDataOff;
                int[] res = readUleb(dex, p);
                int staticFieldsSize = res[0]; p = res[1];
                res = readUleb(dex, p);
                int instanceFieldsSize = res[0]; p = res[1];
                res = readUleb(dex, p);
                int directMethodsSize = res[0]; p = res[1];
                res = readUleb(dex, p);
                int virtualMethodsSize = res[0]; p = res[1];

                // Check if any native or abstract method has code_off != 0
                int scanP = p;
                for (int i = 0; i < staticFieldsSize + instanceFieldsSize; i++) {
                    res = readUleb(dex, scanP); scanP = res[1];
                    res = readUleb(dex, scanP); scanP = res[1];
                }
                boolean classNeedsFix = false;
                for (int i = 0; i < directMethodsSize + virtualMethodsSize; i++) {
                    res = readUleb(dex, scanP); scanP = res[1];
                    res = readUleb(dex, scanP); int flags = res[0]; scanP = res[1];
                    res = readUleb(dex, scanP); int codeOff = res[0]; scanP = res[1];
                    if ((flags & 0x500) != 0 && codeOff != 0) {
                        classNeedsFix = true;
                        break;
                    }
                }

                if (!classNeedsFix) continue;

                modified = true;
                ByteArrayOutputStream cdBaos = new ByteArrayOutputStream();
                writeUleb(cdBaos, staticFieldsSize);
                writeUleb(cdBaos, instanceFieldsSize);
                writeUleb(cdBaos, directMethodsSize);
                writeUleb(cdBaos, virtualMethodsSize);

                int readP = p;
                for (int i = 0; i < staticFieldsSize + instanceFieldsSize; i++) {
                    res = readUleb(dex, readP); writeUleb(cdBaos, res[0]); readP = res[1];
                    res = readUleb(dex, readP); writeUleb(cdBaos, res[0]); readP = res[1];
                }

                for (int i = 0; i < directMethodsSize + virtualMethodsSize; i++) {
                    res = readUleb(dex, readP); writeUleb(cdBaos, res[0]); readP = res[1];
                    res = readUleb(dex, readP); int flags = res[0]; writeUleb(cdBaos, flags); readP = res[1];
                    res = readUleb(dex, readP); int codeOff = res[0]; readP = res[1];
                    if ((flags & 0x500) != 0) {
                        writeUleb(cdBaos, 0);
                    } else {
                        writeUleb(cdBaos, codeOff);
                    }
                }

                byte[] newCdBytes = cdBaos.toByteArray();
                int newClassDataOff = currentEnd + appendBaos.size();
                appendBaos.write(newCdBytes);

                header.putInt(classDefOffset + 24, newClassDataOff);
            }

            if (!modified) {
                return true;
            }

            byte[] appendBytes = appendBaos.toByteArray();
            byte[] newDex = new byte[dex.length + appendBytes.length];
            System.arraycopy(dex, 0, newDex, 0, dex.length);
            System.arraycopy(appendBytes, 0, newDex, dex.length, appendBytes.length);

            ByteBuffer newBuf = ByteBuffer.wrap(newDex).order(ByteOrder.LITTLE_ENDIAN);
            newBuf.putInt(32, newDex.length);

            MessageDigest sha1 = MessageDigest.getInstance("SHA-1");
            sha1.update(newDex, 32, newDex.length - 32);
            byte[] sha1Bytes = sha1.digest();
            System.arraycopy(sha1Bytes, 0, newDex, 12, 20);

            Adler32 adler = new Adler32();
            adler.update(newDex, 12, newDex.length - 12);
            newBuf.putInt(8, (int) adler.getValue());

            try (FileOutputStream fos = new FileOutputStream(dexFile)) {
                fos.write(newDex);
            }
            return true;
        } catch (Throwable t) {
            t.printStackTrace();
            return false;
        }
    }

    private static int[] readUleb(byte[] data, int p) {
        int res = 0;
        int shift = 0;
        while (true) {
            byte b = data[p++];
            res |= (b & 0x7f) << shift;
            if ((b & 0x80) == 0) break;
            shift += 7;
        }
        return new int[]{res, p};
    }

    private static void writeUleb(ByteArrayOutputStream out, int val) {
        int remaining = val >>> 7;
        while (remaining != 0) {
            out.write((byte) ((val & 0x7f) | 0x80));
            val = remaining;
            remaining >>>= 7;
        }
        out.write((byte) (val & 0x7f));
    }
}
