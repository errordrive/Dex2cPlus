package com.dex2c.plus.engine;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.location.LocationRequestCompat;
import androidx.core.text.HtmlCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.android.tools.smali.dexlib2.AccessFlags;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.raw.CdexHeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.MethodImplementation;
import com.android.tools.smali.dexlib2.iface.MethodParameter;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.dexlib2.iface.instruction.FiveRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.iface.instruction.NarrowLiteralInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OffsetInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.OneRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.RegisterRangeInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchElement;
import com.android.tools.smali.dexlib2.iface.instruction.SwitchPayload;
import com.android.tools.smali.dexlib2.iface.instruction.ThreeRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.TwoRegisterInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.WideLiteralInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.ArrayPayload;
import com.android.tools.smali.dexlib2.iface.reference.FieldReference;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import com.android.tools.smali.dexlib2.iface.reference.TypeReference;
import com.dex2c.plus.ConsoleLogger;
import com.dex2c.plus.model.DexClassItem;
import com.dex2c.plus.model.ProjectState;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.text.Typography;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public class Dex2CTranslator {
    private static final int MAX_METHODS_PER_BATCH_UNIT = 350;

    public static class Result {
        public final List<File> cppFiles = new ArrayList();
        public int translatedMethods = 0;
        public final List<NativeEntry> registeredMethods = new ArrayList();
        public final Set<String> translatedClassDescriptors = new HashSet();
    }

    public static class NativeEntry {
        public final String cFuncName;
        public final String classDesc;
        public final String jniSig;
        public final String methodName;

        public NativeEntry(String str, String str2, String str3, String str4) {
            this.classDesc = str;
            this.methodName = str2;
            this.jniSig = str3;
            this.cFuncName = str4;
        }
    }

    private static class UnitStringPool {
        private final boolean encrypt;
        private final Map<String, Integer> pool = new LinkedHashMap();

        UnitStringPool(boolean z) {
            this.encrypt = z;
        }

        String ref(String str) {
            if (str == null) {
                str = "";
            }
            if (!this.encrypt) {
                return "\"" + Dex2CTranslator.escapeCpp(str) + "\"";
            }
            Integer numValueOf = this.pool.get(str);
            if (numValueOf == null) {
                numValueOf = Integer.valueOf(this.pool.size());
                this.pool.put(str, numValueOf);
            }
            return "__d2c_s" + numValueOf + "()";
        }

        void writeDefinitions(Writer writer) throws Exception {
            if (!this.encrypt || this.pool.isEmpty()) {
                return;
            }
            for (Map.Entry<String, Integer> entry : this.pool.entrySet()) {
                String key = entry.getKey();
                int iIntValue = entry.getValue().intValue();
                byte[] modifiedUtf8Bytes = Dex2CTranslator.toModifiedUtf8Bytes(key);
                int length = modifiedUtf8Bytes.length;
                int iHashCode = ((key.hashCode() ^ (73244475 * length)) ^ (-1513906575)) & 255;
                if (iHashCode == 0) {
                    iHashCode = 90;
                }
                writer.write("static const char* __d2c_s");
                writer.write(Integer.toString(iIntValue));
                writer.write("() {\n    static char _d[");
                writer.write(Integer.toString(length + 1));
                writer.write("];\n    static volatile bool _u = false;\n    if (!_u) {\n        static const unsigned char _e[");
                writer.write(Integer.toString(Math.max(1, length)));
                writer.write("] = {");
                if (length == 0) {
                    writer.write("0x00");
                } else {
                    for (int i = 0; i < length; i++) {
                        if (i > 0) {
                            writer.write(",");
                        }
                        writer.write(String.format(Locale.US, "0x%02X", Integer.valueOf(((((i * 37) + iHashCode) + (i ^ 90)) & 255) ^ (modifiedUtf8Bytes[i] & 255))));
                    }
                }
                writer.write("};\n        for (int _i = 0; _i < ");
                writer.write(Integer.toString(length));
                writer.write("; ++_i) _d[_i] = (char)(_e[_i] ^ ((");
                writer.write(Integer.toString(iHashCode));
                writer.write(" + _i * 37 + (_i ^ 0x5A)) & 0xFF));\n        _d[");
                writer.write(Integer.toString(length));
                writer.write("] = '\\0';\n        _u = true;\n    }\n    return _d;\n}\n\n");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0365  */
    /* JADX WARN: Code duplicated, block: B:155:0x0223 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0213 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x021e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0203 A[Catch: all -> 0x035c, TRY_LEAVE, TryCatch #2 {all -> 0x035c, blocks: (B:36:0x011b, B:43:0x0137, B:46:0x0144, B:47:0x014e, B:49:0x0154, B:52:0x0162, B:54:0x016c, B:57:0x0174, B:59:0x017c, B:60:0x019c, B:62:0x01a8, B:64:0x01b0, B:66:0x01b9, B:69:0x01d4, B:70:0x01fd, B:72:0x0203, B:45:0x013c), top: B:131:0x011b, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0216 A[Catch: all -> 0x031a, TryCatch #1 {all -> 0x031a, blocks: (B:74:0x0209, B:77:0x0216, B:80:0x0223, B:82:0x0237, B:84:0x0265, B:86:0x029e, B:83:0x025f, B:91:0x02e2, B:92:0x02e7), top: B:129:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0237 A[Catch: all -> 0x031a, TryCatch #1 {all -> 0x031a, blocks: (B:74:0x0209, B:77:0x0216, B:80:0x0223, B:82:0x0237, B:84:0x0265, B:86:0x029e, B:83:0x025f, B:91:0x02e2, B:92:0x02e7), top: B:129:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x025f A[Catch: all -> 0x031a, TryCatch #1 {all -> 0x031a, blocks: (B:74:0x0209, B:77:0x0216, B:80:0x0223, B:82:0x0237, B:84:0x0265, B:86:0x029e, B:83:0x025f, B:91:0x02e2, B:92:0x02e7), top: B:129:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x029e A[Catch: all -> 0x031a, TryCatch #1 {all -> 0x031a, blocks: (B:74:0x0209, B:77:0x0216, B:80:0x0223, B:82:0x0237, B:84:0x0265, B:86:0x029e, B:83:0x025f, B:91:0x02e2, B:92:0x02e7), top: B:129:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:91:0x02e2 A[Catch: all -> 0x031a, TryCatch #1 {all -> 0x031a, blocks: (B:74:0x0209, B:77:0x0216, B:80:0x0223, B:82:0x0237, B:84:0x0265, B:86:0x029e, B:83:0x025f, B:91:0x02e2, B:92:0x02e7), top: B:129:0x0209 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x0237, please report this as an issue */
    public static Result translate(File file, List<DexClassItem> list, File file2, boolean z, boolean z2) throws Exception {
        StringBuilder sb;
        UnitStringPool unitStringPool;
        boolean z3;
        DexBackedDexFile dexBackedDexFileLoadDexFile;
        String str;
        String strReplace;
        String strReplaceAll;
        Set<String> setFindOverloadedMethodNames;
        ClassDef classDef;
        UnitStringPool unitStringPool2;
        int i;
        int i2;
        int i3;
        ClassDef classDef2;
        MethodImplementation implementation;
        boolean zContains;
        String strBuildStandardJniName;
        StringBuilder sb2;
        UnitStringPool unitStringPool3;
        int i4;
        file = file;
        file2 = file2;
        boolean z4 = z2;
        String str2 = "[^a-zA-Z0-9_]";
        String str3 = "_";
        File file3 = new File(file2, "jni");
        if (!file3.exists()) {
            file3.mkdirs();
        }
        writeRuntimeHeader(new File(file3, "dex2c_runtime.h"));
        Result result = new Result();
        if (file != null && file.exists() && list != null && !list.isEmpty()) {
            String loaderClassDescriptor = ProjectState.get().getLoaderClassDescriptor();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (DexClassItem dexClassItem : list) {
                if (!loaderClassDescriptor.equals(dexClassItem.descriptor)) {
                    ((Set) linkedHashMap.computeIfAbsent(dexClassItem.dexEntryName, new Function() { // from class: com.dex2c.plus.engine.Dex2CTranslator$$ExternalSyntheticLambda1
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return Dex2CTranslator.lambda$translate$0((String) obj);
                        }
                    })).add(dexClassItem.descriptor);
                }
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
            Collections.sort(arrayList, new Comparator() { // from class: com.dex2c.plus.engine.Dex2CTranslator$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Dex2CTranslator.lambda$translate$1((String) obj, (String) obj2);
                }
            });
            Iterator it = linkedHashMap.values().iterator();
            int size = 0;
            while (it.hasNext()) {
                size += ((Set) it.next()).size();
            }
            int iMax = Math.max(1, size);
            ConsoleLogger.get().updateStep("STEP_CONVERT", "Dex2c Converting...", "0/" + iMax);
            StringBuilder sb3 = new StringBuilder(65536);
            UnitStringPool unitStringPool4 = new UnitStringPool(z4);
            Iterator it2 = arrayList.iterator();
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (it2.hasNext()) {
                Iterator it3 = it2;
                String str4 = (String) it2.next();
                if (NdkCompiler.isCancelRequested()) {
                    break;
                }
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                Set set = (Set) linkedHashMap.get(str4);
                if (set == null || set.isEmpty()) {
                    sb = sb3;
                    unitStringPool = unitStringPool4;
                    z3 = z4;
                } else {
                    StringBuilder sb4 = sb3;
                    unitStringPool = unitStringPool4;
                    File file4 = new File(file2, "stream_" + str4);
                    try {
                        if (ApkDexManager.extractSingleDexToFile(file, str4, file4)) {
                            try {
                                dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file4, (Opcodes) null);
                            } catch (Exception unused) {
                                dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file4, Opcodes.getDefault());
                            }
                            Iterator<? extends ClassDef> it4 = dexBackedDexFileLoadDexFile.getClasses().iterator();
                            unitStringPool4 = unitStringPool;
                            while (it4.hasNext()) {
                                ClassDef next = it4.next();
                                if (NdkCompiler.isCancelRequested()) {
                                    break;
                                }
                                String type = next.getType();
                                if (!set.contains(type) || loaderClassDescriptor.equals(type)) {
                                    sb4 = sb4;
                                    str2 = str2;
                                    str3 = str3;
                                    it4 = it4;
                                    loaderClassDescriptor = loaderClassDescriptor;
                                    set = set;
                                    file4 = file4;
                                } else {
                                    int i8 = i6 + 1;
                                    if (!isClassTranslatable(next)) {
                                        ConsoleLogger.get().updateStep("STEP_CONVERT", "Dex2c Converting...", i8 + "/" + iMax);
                                        i6 = i8;
                                    } else {
                                        Iterator<? extends ClassDef> it5 = it4;
                                        if (type.startsWith("L") && type.endsWith(";")) {
                                            str = loaderClassDescriptor;
                                            if (type.length() > 2) {
                                                strReplace = type.substring(1, type.length() - 1).replace('/', '.');
                                            }
                                            strReplaceAll = strReplace.replace('.', '_').replace(Typography.dollar, '_').replaceAll(str2, str3);
                                            setFindOverloadedMethodNames = findOverloadedMethodNames(next);
                                            classDef = next;
                                            unitStringPool2 = unitStringPool4;
                                            i = i5;
                                            i2 = i7;
                                            i3 = 0;
                                            for (Method method : next.getMethods()) {
                                                file4 = file4;
                                                try {
                                                    if (isTranslatable(method)) {
                                                        classDef2 = classDef;
                                                        implementation = method.getImplementation();
                                                        if (implementation == null) {
                                                            int registerCount = implementation.getRegisterCount();
                                                            int iCountParamRegisters = countParamRegisters(method);
                                                            int i9 = i;
                                                            zContains = setFindOverloadedMethodNames.contains(method.getName());
                                                            if (z) {
                                                                strBuildStandardJniName = "dex2c_" + strReplaceAll + str3 + method.getName().replaceAll(str2, str3) + str3 + i3;
                                                            } else {
                                                                strBuildStandardJniName = buildStandardJniName(type, method, zContains);
                                                            }
                                                            String str5 = strBuildStandardJniName;
                                                            sb2 = sb4;
                                                            emitMethodCpp(sb2, classDef2, method, implementation, str5, registerCount, iCountParamRegisters, unitStringPool2);
                                                            unitStringPool3 = unitStringPool2;
                                                            String str6 = strReplaceAll;
                                                            String str7 = str2;
                                                            String str8 = str3;
                                                            result.registeredMethods.add(new NativeEntry(type, method.getName(), buildJniSignature(method), str5));
                                                            i3++;
                                                            i4 = i9 + 1;
                                                            result.translatedMethods++;
                                                            if (i4 >= MAX_METHODS_PER_BATCH_UNIT) {
                                                                result.cppFiles.add(flushBatchUnit(file3, i2, unitStringPool3, sb2));
                                                                sb2.setLength(0);
                                                                i2++;
                                                                unitStringPool2 = new UnitStringPool(z2);
                                                                i = 0;
                                                            } else {
                                                                unitStringPool2 = unitStringPool3;
                                                                i = i4;
                                                            }
                                                            sb4 = sb2;
                                                            strReplaceAll = str6;
                                                            str2 = str7;
                                                            str3 = str8;
                                                            setFindOverloadedMethodNames = setFindOverloadedMethodNames;
                                                            classDef = classDef2;
                                                        }
                                                    } else {
                                                        classDef2 = classDef;
                                                    }
                                                    classDef = classDef2;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    if (file4.exists()) {
                                                        file4.delete();
                                                    }
                                                    throw th;
                                                }
                                            }
                                            String str9 = str2;
                                            String str10 = str3;
                                            File file5 = file4;
                                            int i10 = i;
                                            StringBuilder sb5 = sb4;
                                            unitStringPool4 = unitStringPool2;
                                            if (i3 > 0) {
                                                result.translatedClassDescriptors.add(type);
                                            }
                                            ConsoleLogger.get().updateStep("STEP_CONVERT", "Dex2c Converting...", i8 + "/" + iMax);
                                            i6 = i8;
                                            sb4 = sb5;
                                            str2 = str9;
                                            str3 = str10;
                                            i5 = i10;
                                            it4 = it5;
                                            loaderClassDescriptor = str;
                                            file4 = file5;
                                            i7 = i2;
                                            set = set;
                                        } else {
                                            str = loaderClassDescriptor;
                                        }
                                        strReplace = type;
                                        strReplaceAll = strReplace.replace('.', '_').replace(Typography.dollar, '_').replaceAll(str2, str3);
                                        setFindOverloadedMethodNames = findOverloadedMethodNames(next);
                                        classDef = next;
                                        unitStringPool2 = unitStringPool4;
                                        i = i5;
                                        i2 = i7;
                                        i3 = 0;
                                        while (r8.hasNext()) {
                                            file4 = file4;
                                            if (isTranslatable(method)) {
                                                classDef2 = classDef;
                                            } else {
                                                classDef2 = classDef;
                                                implementation = method.getImplementation();
                                                if (implementation == null) {
                                                    int registerCount2 = implementation.getRegisterCount();
                                                    int iCountParamRegisters2 = countParamRegisters(method);
                                                    int i11 = i;
                                                    zContains = setFindOverloadedMethodNames.contains(method.getName());
                                                    if (z) {
                                                        strBuildStandardJniName = "dex2c_" + strReplaceAll + str3 + method.getName().replaceAll(str2, str3) + str3 + i3;
                                                    } else {
                                                        strBuildStandardJniName = buildStandardJniName(type, method, zContains);
                                                    }
                                                    String str11 = strBuildStandardJniName;
                                                    sb2 = sb4;
                                                    emitMethodCpp(sb2, classDef2, method, implementation, str11, registerCount2, iCountParamRegisters2, unitStringPool2);
                                                    unitStringPool3 = unitStringPool2;
                                                    String str12 = strReplaceAll;
                                                    String str13 = str2;
                                                    String str14 = str3;
                                                    result.registeredMethods.add(new NativeEntry(type, method.getName(), buildJniSignature(method), str11));
                                                    i3++;
                                                    i4 = i11 + 1;
                                                    result.translatedMethods++;
                                                    if (i4 >= MAX_METHODS_PER_BATCH_UNIT) {
                                                        result.cppFiles.add(flushBatchUnit(file3, i2, unitStringPool3, sb2));
                                                        sb2.setLength(0);
                                                        i2++;
                                                        unitStringPool2 = new UnitStringPool(z2);
                                                        i = 0;
                                                    } else {
                                                        unitStringPool2 = unitStringPool3;
                                                        i = i4;
                                                    }
                                                    sb4 = sb2;
                                                    strReplaceAll = str12;
                                                    str2 = str13;
                                                    str3 = str14;
                                                    setFindOverloadedMethodNames = setFindOverloadedMethodNames;
                                                    classDef = classDef2;
                                                }
                                            }
                                            classDef = classDef2;
                                        }
                                        String str15 = str2;
                                        String str16 = str3;
                                        File file6 = file4;
                                        int i12 = i;
                                        StringBuilder sb6 = sb4;
                                        unitStringPool4 = unitStringPool2;
                                        if (i3 > 0) {
                                            result.translatedClassDescriptors.add(type);
                                        }
                                        ConsoleLogger.get().updateStep("STEP_CONVERT", "Dex2c Converting...", i8 + "/" + iMax);
                                        i6 = i8;
                                        sb4 = sb6;
                                        str2 = str15;
                                        str3 = str16;
                                        i5 = i12;
                                        it4 = it5;
                                        loaderClassDescriptor = str;
                                        file4 = file6;
                                        i7 = i2;
                                        set = set;
                                    }
                                }
                            }
                            str2 = str2;
                            str3 = str3;
                            loaderClassDescriptor = loaderClassDescriptor;
                            File file7 = file4;
                            StringBuilder sb7 = sb4;
                            if (file7.exists()) {
                                file7.delete();
                            }
                            z4 = z2;
                            sb3 = sb7;
                        } else {
                            if (file4.exists()) {
                                file4.delete();
                            }
                            sb = sb4;
                            z3 = z2;
                        }
                        str2 = str2;
                        str3 = str3;
                        it2 = it3;
                        linkedHashMap = linkedHashMap2;
                        loaderClassDescriptor = loaderClassDescriptor;
                    } catch (Throwable th2) {
                        th = th2;
                        file4 = file4;
                        if (file4.exists()) {
                            file4.delete();
                        }
                        throw th;
                    }
                }
                z4 = z3;
                sb3 = sb;
                unitStringPool4 = unitStringPool;
                str2 = str2;
                str3 = str3;
                it2 = it3;
                linkedHashMap = linkedHashMap2;
                loaderClassDescriptor = loaderClassDescriptor;
            }
            boolean z5 = z4;
            StringBuilder sb8 = sb3;
            UnitStringPool unitStringPool5 = unitStringPool4;
            if (i5 > 0 && !NdkCompiler.isCancelRequested()) {
                result.cppFiles.add(flushBatchUnit(file3, i7, unitStringPool5, sb8));
                sb8.setLength(0);
            }
            if (z && !result.registeredMethods.isEmpty() && !NdkCompiler.isCancelRequested()) {
                File file8 = new File(file3, "dex2c_loader.cpp");
                emitJniOnLoad(file8, result.registeredMethods, z5);
                result.cppFiles.add(file8);
            }
            if (!NdkCompiler.isCancelRequested() && result.translatedMethods > 0) {
                ConsoleLogger.get().updateStep("STEP_CONVERT", "Dex2c Converting...", iMax + "/" + iMax);
            }
        }
        return result;
    }

    static /* synthetic */ Set lambda$translate$0(String str) {
        return new HashSet();
    }

    static /* synthetic */ int lambda$translate$1(String str, String str2) {
        if ("classes.dex".equals(str)) {
            return -1;
        }
        if ("classes.dex".equals(str2)) {
            return 1;
        }
        return str.compareTo(str2);
    }

    private static File flushBatchUnit(File file, int i, UnitStringPool unitStringPool, StringBuilder sb) throws Exception {
        File file2 = new File(file, String.format(Locale.US, "dex2c_unit_%03d.cpp", Integer.valueOf(i)));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2), 65536);
        try {
            bufferedWriter.write("#include \"dex2c_runtime.h\"\n\n");
            unitStringPool.writeDefinitions(bufferedWriter);
            bufferedWriter.write(sb.toString());
            bufferedWriter.close();
            return file2;
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static boolean isClassTranslatable(ClassDef classDef) {
        if (classDef == null) {
            return false;
        }
        int accessFlags = classDef.getAccessFlags();
        if (!AccessFlags.INTERFACE.isSet(accessFlags) && !AccessFlags.ANNOTATION.isSet(accessFlags)) {
            Iterator<? extends Method> it = classDef.getMethods().iterator();
            while (it.hasNext()) {
                if (isTranslatable(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isTranslatable(Method method) {
        if (method == null) {
            return false;
        }
        int accessFlags = method.getAccessFlags();
        if (!AccessFlags.ABSTRACT.isSet(accessFlags) && !AccessFlags.NATIVE.isSet(accessFlags) && !AccessFlags.CONSTRUCTOR.isSet(accessFlags)) {
            String name = method.getName();
            if (!"<init>".equals(name) && !"<clinit>".equals(name) && !"Dex2C".equals(name)) {
                ProjectState projectState = ProjectState.get();
                boolean zIsSet = AccessFlags.BRIDGE.isSet(accessFlags);
                boolean zIsSet2 = AccessFlags.SYNTHETIC.isSet(accessFlags);
                boolean z = AccessFlags.SYNCHRONIZED.isSet(accessFlags) || AccessFlags.DECLARED_SYNCHRONIZED.isSet(accessFlags);
                boolean zIsSet3 = AccessFlags.VARARGS.isSet(accessFlags);
                boolean zIsSet4 = AccessFlags.STATIC.isSet(accessFlags);
                boolean zIsSet5 = AccessFlags.PRIVATE.isSet(accessFlags);
                if (zIsSet && !projectState.typeBridge) {
                    return false;
                }
                if (zIsSet2 && !zIsSet && !projectState.typeSynthetic) {
                    return false;
                }
                if (z && !projectState.typeSynchronized) {
                    return false;
                }
                if (zIsSet3 && !projectState.typeVarargs) {
                    return false;
                }
                if (!zIsSet2 && !zIsSet) {
                    if (zIsSet4) {
                        if (!projectState.typeStatic) {
                            return false;
                        }
                    } else if (zIsSet5) {
                        if (!projectState.typePrivate) {
                            return false;
                        }
                    } else if (!projectState.typeVirtual) {
                        return false;
                    }
                }
                MethodImplementation implementation = method.getImplementation();
                if (implementation == null) {
                    return false;
                }
                if (countParamRegisters(method) > implementation.getRegisterCount()) {
                    return false;
                }
                Iterator<? extends Instruction> it = implementation.getInstructions().iterator();
                while (it.hasNext()) {
                    if (!isOpcodeSupported(it.next().getOpcode())) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: com.dex2c.plus.engine.Dex2CTranslator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$smali$dexlib2$Opcode;

        static {
            int[] iArr = new int[Opcode.values().length];
            $SwitchMap$com$android$tools$smali$dexlib2$Opcode = iArr;
            try {
                iArr[Opcode.INVOKE_POLYMORPHIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_POLYMORPHIC_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_CUSTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_CUSTOM_RANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_METHOD_HANDLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_METHOD_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.EXECUTE_INLINE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.EXECUTE_INLINE_RANGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.THROW_VERIFICATION_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NOP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.PACKED_SWITCH_PAYLOAD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPARSE_SWITCH_PAYLOAD.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ARRAY_PAYLOAD.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_FROM16.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_16.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT_FROM16.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_OBJECT_16.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE_FROM16.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_WIDE_16.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT_WIDE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_RESULT_OBJECT.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MOVE_EXCEPTION.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_VOID.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_VOID_NO_BARRIER.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_WIDE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RETURN_OBJECT.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_4.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_16.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_HIGH16.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_16.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_32.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_WIDE_HIGH16.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_STRING.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_STRING_JUMBO.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CONST_CLASS.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MONITOR_ENTER.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MONITOR_EXIT.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CHECK_CAST.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INSTANCE_OF.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ARRAY_LENGTH.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEW_INSTANCE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEW_ARRAY.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILLED_NEW_ARRAY.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILLED_NEW_ARRAY_RANGE.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FILL_ARRAY_DATA.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.THROW.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO_16.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.GOTO_32.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.PACKED_SWITCH.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPARSE_SWITCH.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPL_FLOAT.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPG_FLOAT.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPL_DOUBLE.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMPG_DOUBLE.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.CMP_LONG.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_EQ.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_NE.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LT.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GE.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GT.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LE.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_EQZ.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_NEZ.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LTZ.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GEZ.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_GTZ.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IF_LEZ.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_WIDE.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_OBJECT.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_BOOLEAN.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_BYTE.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_CHAR.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AGET_SHORT.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_WIDE.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_OBJECT.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_BOOLEAN.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_BYTE.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_CHAR.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.APUT_SHORT.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_WIDE.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_OBJECT.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BOOLEAN.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_BYTE.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_CHAR.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IGET_SHORT.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_WIDE.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_OBJECT.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BOOLEAN.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_BYTE.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_CHAR.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.IPUT_SHORT.ordinal()] = 103;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET.ordinal()] = 104;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_WIDE.ordinal()] = 105;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_OBJECT.ordinal()] = 106;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_BOOLEAN.ordinal()] = 107;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_BYTE.ordinal()] = 108;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_CHAR.ordinal()] = 109;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SGET_SHORT.ordinal()] = 110;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT.ordinal()] = 111;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_WIDE.ordinal()] = 112;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_OBJECT.ordinal()] = 113;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_BOOLEAN.ordinal()] = 114;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_BYTE.ordinal()] = 115;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_CHAR.ordinal()] = 116;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SPUT_SHORT.ordinal()] = 117;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL.ordinal()] = 118;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_VIRTUAL_RANGE.ordinal()] = 119;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER.ordinal()] = 120;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_SUPER_RANGE.ordinal()] = 121;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_DIRECT.ordinal()] = 122;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_DIRECT_RANGE.ordinal()] = 123;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_STATIC.ordinal()] = 124;
            } catch (NoSuchFieldError unused124) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_STATIC_RANGE.ordinal()] = 125;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_INTERFACE.ordinal()] = 126;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INVOKE_INTERFACE_RANGE.ordinal()] = 127;
            } catch (NoSuchFieldError unused127) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_INT.ordinal()] = 128;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NOT_INT.ordinal()] = 129;
            } catch (NoSuchFieldError unused129) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_LONG.ordinal()] = 130;
            } catch (NoSuchFieldError unused130) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NOT_LONG.ordinal()] = 131;
            } catch (NoSuchFieldError unused131) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_FLOAT.ordinal()] = 132;
            } catch (NoSuchFieldError unused132) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.NEG_DOUBLE.ordinal()] = 133;
            } catch (NoSuchFieldError unused133) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_LONG.ordinal()] = 134;
            } catch (NoSuchFieldError unused134) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_FLOAT.ordinal()] = 135;
            } catch (NoSuchFieldError unused135) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_DOUBLE.ordinal()] = 136;
            } catch (NoSuchFieldError unused136) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_INT.ordinal()] = 137;
            } catch (NoSuchFieldError unused137) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_FLOAT.ordinal()] = 138;
            } catch (NoSuchFieldError unused138) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.LONG_TO_DOUBLE.ordinal()] = 139;
            } catch (NoSuchFieldError unused139) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_INT.ordinal()] = 140;
            } catch (NoSuchFieldError unused140) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_LONG.ordinal()] = 141;
            } catch (NoSuchFieldError unused141) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.FLOAT_TO_DOUBLE.ordinal()] = 142;
            } catch (NoSuchFieldError unused142) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_INT.ordinal()] = 143;
            } catch (NoSuchFieldError unused143) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_LONG.ordinal()] = 144;
            } catch (NoSuchFieldError unused144) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DOUBLE_TO_FLOAT.ordinal()] = 145;
            } catch (NoSuchFieldError unused145) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_BYTE.ordinal()] = 146;
            } catch (NoSuchFieldError unused146) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_CHAR.ordinal()] = 147;
            } catch (NoSuchFieldError unused147) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.INT_TO_SHORT.ordinal()] = 148;
            } catch (NoSuchFieldError unused148) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT.ordinal()] = 149;
            } catch (NoSuchFieldError unused149) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_2ADDR.ordinal()] = 150;
            } catch (NoSuchFieldError unused150) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_INT.ordinal()] = 151;
            } catch (NoSuchFieldError unused151) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_INT_2ADDR.ordinal()] = 152;
            } catch (NoSuchFieldError unused152) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT.ordinal()] = 153;
            } catch (NoSuchFieldError unused153) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_2ADDR.ordinal()] = 154;
            } catch (NoSuchFieldError unused154) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT.ordinal()] = 155;
            } catch (NoSuchFieldError unused155) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_2ADDR.ordinal()] = 156;
            } catch (NoSuchFieldError unused156) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT.ordinal()] = 157;
            } catch (NoSuchFieldError unused157) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_2ADDR.ordinal()] = 158;
            } catch (NoSuchFieldError unused158) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT.ordinal()] = 159;
            } catch (NoSuchFieldError unused159) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_2ADDR.ordinal()] = 160;
            } catch (NoSuchFieldError unused160) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT.ordinal()] = 161;
            } catch (NoSuchFieldError unused161) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_2ADDR.ordinal()] = 162;
            } catch (NoSuchFieldError unused162) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT.ordinal()] = 163;
            } catch (NoSuchFieldError unused163) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_2ADDR.ordinal()] = 164;
            } catch (NoSuchFieldError unused164) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT.ordinal()] = 165;
            } catch (NoSuchFieldError unused165) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT_2ADDR.ordinal()] = 166;
            } catch (NoSuchFieldError unused166) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT.ordinal()] = 167;
            } catch (NoSuchFieldError unused167) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT_2ADDR.ordinal()] = 168;
            } catch (NoSuchFieldError unused168) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT.ordinal()] = 169;
            } catch (NoSuchFieldError unused169) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT_2ADDR.ordinal()] = 170;
            } catch (NoSuchFieldError unused170) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_LONG.ordinal()] = 171;
            } catch (NoSuchFieldError unused171) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_LONG_2ADDR.ordinal()] = 172;
            } catch (NoSuchFieldError unused172) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_LONG.ordinal()] = 173;
            } catch (NoSuchFieldError unused173) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_LONG_2ADDR.ordinal()] = 174;
            } catch (NoSuchFieldError unused174) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_LONG.ordinal()] = 175;
            } catch (NoSuchFieldError unused175) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_LONG_2ADDR.ordinal()] = 176;
            } catch (NoSuchFieldError unused176) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_LONG.ordinal()] = 177;
            } catch (NoSuchFieldError unused177) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_LONG_2ADDR.ordinal()] = 178;
            } catch (NoSuchFieldError unused178) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_LONG.ordinal()] = 179;
            } catch (NoSuchFieldError unused179) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_LONG_2ADDR.ordinal()] = 180;
            } catch (NoSuchFieldError unused180) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_LONG.ordinal()] = 181;
            } catch (NoSuchFieldError unused181) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_LONG_2ADDR.ordinal()] = 182;
            } catch (NoSuchFieldError unused182) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_LONG.ordinal()] = 183;
            } catch (NoSuchFieldError unused183) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_LONG_2ADDR.ordinal()] = 184;
            } catch (NoSuchFieldError unused184) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_LONG.ordinal()] = 185;
            } catch (NoSuchFieldError unused185) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_LONG_2ADDR.ordinal()] = 186;
            } catch (NoSuchFieldError unused186) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_LONG.ordinal()] = 187;
            } catch (NoSuchFieldError unused187) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_LONG_2ADDR.ordinal()] = 188;
            } catch (NoSuchFieldError unused188) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_LONG.ordinal()] = 189;
            } catch (NoSuchFieldError unused189) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_LONG_2ADDR.ordinal()] = 190;
            } catch (NoSuchFieldError unused190) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_LONG.ordinal()] = 191;
            } catch (NoSuchFieldError unused191) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_LONG_2ADDR.ordinal()] = 192;
            } catch (NoSuchFieldError unused192) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_FLOAT.ordinal()] = 193;
            } catch (NoSuchFieldError unused193) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_FLOAT_2ADDR.ordinal()] = 194;
            } catch (NoSuchFieldError unused194) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_FLOAT.ordinal()] = 195;
            } catch (NoSuchFieldError unused195) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_FLOAT_2ADDR.ordinal()] = 196;
            } catch (NoSuchFieldError unused196) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_FLOAT.ordinal()] = 197;
            } catch (NoSuchFieldError unused197) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_FLOAT_2ADDR.ordinal()] = 198;
            } catch (NoSuchFieldError unused198) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_FLOAT.ordinal()] = 199;
            } catch (NoSuchFieldError unused199) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_FLOAT_2ADDR.ordinal()] = 200;
            } catch (NoSuchFieldError unused200) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_FLOAT.ordinal()] = 201;
            } catch (NoSuchFieldError unused201) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_FLOAT_2ADDR.ordinal()] = 202;
            } catch (NoSuchFieldError unused202) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_DOUBLE.ordinal()] = 203;
            } catch (NoSuchFieldError unused203) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_DOUBLE_2ADDR.ordinal()] = 204;
            } catch (NoSuchFieldError unused204) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_DOUBLE.ordinal()] = 205;
            } catch (NoSuchFieldError unused205) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SUB_DOUBLE_2ADDR.ordinal()] = 206;
            } catch (NoSuchFieldError unused206) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_DOUBLE.ordinal()] = 207;
            } catch (NoSuchFieldError unused207) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_DOUBLE_2ADDR.ordinal()] = 208;
            } catch (NoSuchFieldError unused208) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_DOUBLE.ordinal()] = 209;
            } catch (NoSuchFieldError unused209) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_DOUBLE_2ADDR.ordinal()] = 210;
            } catch (NoSuchFieldError unused210) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_DOUBLE.ordinal()] = 211;
            } catch (NoSuchFieldError unused211) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_DOUBLE_2ADDR.ordinal()] = 212;
            } catch (NoSuchFieldError unused212) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_LIT16.ordinal()] = 213;
            } catch (NoSuchFieldError unused213) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.ADD_INT_LIT8.ordinal()] = 214;
            } catch (NoSuchFieldError unused214) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RSUB_INT.ordinal()] = 215;
            } catch (NoSuchFieldError unused215) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.RSUB_INT_LIT8.ordinal()] = 216;
            } catch (NoSuchFieldError unused216) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_LIT16.ordinal()] = 217;
            } catch (NoSuchFieldError unused217) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.MUL_INT_LIT8.ordinal()] = 218;
            } catch (NoSuchFieldError unused218) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_LIT16.ordinal()] = 219;
            } catch (NoSuchFieldError unused219) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.DIV_INT_LIT8.ordinal()] = 220;
            } catch (NoSuchFieldError unused220) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_LIT16.ordinal()] = 221;
            } catch (NoSuchFieldError unused221) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.REM_INT_LIT8.ordinal()] = 222;
            } catch (NoSuchFieldError unused222) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_LIT16.ordinal()] = 223;
            } catch (NoSuchFieldError unused223) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.AND_INT_LIT8.ordinal()] = 224;
            } catch (NoSuchFieldError unused224) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_LIT16.ordinal()] = 225;
            } catch (NoSuchFieldError unused225) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.OR_INT_LIT8.ordinal()] = 226;
            } catch (NoSuchFieldError unused226) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_LIT16.ordinal()] = 227;
            } catch (NoSuchFieldError unused227) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.XOR_INT_LIT8.ordinal()] = 228;
            } catch (NoSuchFieldError unused228) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHL_INT_LIT8.ordinal()] = 229;
            } catch (NoSuchFieldError unused229) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.SHR_INT_LIT8.ordinal()] = 230;
            } catch (NoSuchFieldError unused230) {
            }
            try {
                $SwitchMap$com$android$tools$smali$dexlib2$Opcode[Opcode.USHR_INT_LIT8.ordinal()] = 231;
            } catch (NoSuchFieldError unused231) {
            }
        }
    }

    private static boolean isOpcodeSupported(Opcode opcode) {
        if (opcode == null) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$com$android$tools$smali$dexlib2$Opcode[opcode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                return !opcode.odexOnly();
        }
    }

    private static Set<String> findOverloadedMethodNames(ClassDef classDef) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (Method method : classDef.getMethods()) {
            if (!hashSet.add(method.getName())) {
                hashSet2.add(method.getName());
            }
        }
        return hashSet2;
    }

    public static int countParamRegisters(Method method) {
        int i = !AccessFlags.STATIC.isSet(method.getAccessFlags()) ? 1 : 0;
        Iterator<? extends MethodParameter> it = method.getParameters().iterator();
        while (it.hasNext()) {
            String type = it.next().getType();
            i += ("J".equals(type) || "D".equals(type)) ? 2 : 1;
        }
        return i;
    }

    private static void emitMethodCpp(StringBuilder sb, ClassDef classDef, Method method, MethodImplementation methodImplementation, String str, int i, int i2, UnitStringPool unitStringPool) {
        int i3;
        String returnType = method.getReturnType();
        String jniType = toJniType(returnType);
        boolean zIsSet = AccessFlags.STATIC.isSet(method.getAccessFlags());
        sb.append("extern \"C\" JNIEXPORT ");
        sb.append(jniType);
        sb.append(" JNICALL ");
        sb.append(str);
        sb.append("(JNIEnv* env, ");
        sb.append(zIsSet ? "jclass clazz" : "jobject thiz");
        int i4 = 0;
        for (MethodParameter methodParameter : method.getParameters()) {
            sb.append(", ");
            sb.append(toJniType(methodParameter.getType()));
            sb.append(" p");
            sb.append(i4);
            i4++;
        }
        sb.append(") {\n");
        sb.append("    if (env->EnsureLocalCapacity(512) < 0) { env->ExceptionClear(); }\n");
        sb.append("    dex2c_init_classloader(env, ");
        sb.append(zIsSet ? "(jobject)clazz" : "thiz");
        sb.append(", ");
        sb.append(zIsSet ? "true" : "false");
        sb.append(");\n");
        sb.append("    DexReg regs[");
        sb.append(Math.max(2, i + 1));
        sb.append("] = {};\n");
        sb.append("    DexReg __res = {};\n");
        sb.append("    jthrowable __pending_exc = nullptr;\n");
        int i5 = i - i2;
        if (!zIsSet) {
            sb.append("    dex2c_set_obj(regs[");
            sb.append(i5);
            sb.append("], thiz);\n");
            i5++;
        }
        Iterator<? extends MethodParameter> it = method.getParameters().iterator();
        int i6 = 0;
        while (it.hasNext()) {
            String type = it.next().getType();
            if ("J".equals(type)) {
                sb.append("    dex2c_set_long(regs[");
                sb.append(i5);
                sb.append("], p");
                i3 = i6 + 1;
                sb.append(i6);
                sb.append(");\n");
            } else {
                if ("D".equals(type)) {
                    sb.append("    dex2c_set_double(regs[");
                    sb.append(i5);
                    sb.append("], p");
                    i3 = i6 + 1;
                    sb.append(i6);
                    sb.append(");\n");
                } else {
                    if ("F".equals(type)) {
                        sb.append("    dex2c_set_float(regs[");
                        sb.append(i5);
                        sb.append("], p");
                        i3 = i6 + 1;
                        sb.append(i6);
                        sb.append(");\n");
                    } else if ("Z".equals(type) || "B".equals(type) || "C".equals(type) || "S".equals(type) || "I".equals(type)) {
                        sb.append("    dex2c_set_int(regs[");
                        sb.append(i5);
                        sb.append("], (jint)p");
                        i3 = i6 + 1;
                        sb.append(i6);
                        sb.append(");\n");
                    } else {
                        sb.append("    dex2c_set_obj(regs[");
                        sb.append(i5);
                        sb.append("], p");
                        i3 = i6 + 1;
                        sb.append(i6);
                        sb.append(");\n");
                    }
                    i5++;
                }
                i6 = i3;
            }
            i5 += 2;
            i6 = i3;
        }
        HashMap map = new HashMap();
        int codeUnits = 0;
        for (Instruction instruction : methodImplementation.getInstructions()) {
            map.put(Integer.valueOf(codeUnits), instruction);
            codeUnits += instruction.getCodeUnits();
        }
        int codeUnits2 = 0;
        for (Instruction instruction2 : methodImplementation.getInstructions()) {
            Opcode opcode = instruction2.getOpcode();
            sb.append("L_pc_");
            sb.append(codeUnits2);
            sb.append(": {\n");
            translateInstruction(sb, classDef, method, methodImplementation, instruction2, opcode, returnType, i, codeUnits2, map, unitStringPool);
            sb.append("}\n");
            codeUnits2 += instruction2.getCodeUnits();
        }
        if (!"V".equals(returnType)) {
            sb.append("    return (");
            sb.append(jniType);
            sb.append(")0;\n");
        }
        sb.append("}\n\n");
    }

    /* JADX WARN: Code duplicated, block: B:241:0x0b0e  */
    /* JADX WARN: Code duplicated, block: B:242:0x0b11  */
    /* JADX WARN: Code duplicated, block: B:244:0x0b14  */
    /* JADX WARN: Code duplicated, block: B:245:0x0b17  */
    /* JADX WARN: Code duplicated, block: B:247:0x0b1a  */
    /* JADX WARN: Code duplicated, block: B:248:0x0b1d  */
    /* JADX WARN: Code duplicated, block: B:251:0x0b3f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:252:0x0b41  */
    /* JADX WARN: Code duplicated, block: B:255:0x0b53  */
    /* JADX WARN: Code duplicated, block: B:256:0x0b6e  */
    /* JADX WARN: Code duplicated, block: B:258:0x0b71  */
    /* JADX WARN: Code duplicated, block: B:259:0x0b8d  */
    /* JADX WARN: Code duplicated, block: B:261:0x0b93  */
    /* JADX WARN: Code duplicated, block: B:262:0x0ba8  */
    private static void translateInstruction(StringBuilder sb, ClassDef classDef, Method method, MethodImplementation methodImplementation, Instruction instruction, Opcode opcode, String str, int i, int i2, Map<Integer, Instruction> map, UnitStringPool unitStringPool) {
        String str2;
        int i3;
        long jLongValue;
        String str3;
        String str4;
        switch (AnonymousClass1.$SwitchMap$com$android$tools$smali$dexlib2$Opcode[opcode.ordinal()]) {
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
                sb.append("    regs[");
                sb.append(twoRegisterInstruction.getRegisterA());
                sb.append("] = regs[");
                sb.append(twoRegisterInstruction.getRegisterB());
                sb.append("];\n");
                break;
            case 23:
                int registerA = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_set_int(regs[");
                sb.append(registerA);
                sb.append("], __res.i);\n");
                break;
            case 24:
                int registerA2 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_set_long(regs[");
                sb.append(registerA2);
                sb.append("], __res.j);\n");
                break;
            case 25:
                int registerA3 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(registerA3);
                sb.append("], __res.l);\n");
                break;
            case 26:
                int registerA4 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(registerA4);
                sb.append("], __pending_exc);\n");
                sb.append("    __pending_exc = nullptr;\n");
                break;
            case 27:
            case 28:
                sb.append("    return;\n");
                break;
            case 29:
                int registerA5 = ((OneRegisterInstruction) instruction).getRegisterA();
                if ("F".equals(str)) {
                    sb.append("    return regs[");
                    sb.append(registerA5);
                    sb.append("].f;\n");
                } else if ("Z".equals(str)) {
                    sb.append("    return (jboolean)(regs[");
                    sb.append(registerA5);
                    sb.append("].i != 0 ? JNI_TRUE : JNI_FALSE);\n");
                } else {
                    sb.append("    return (");
                    sb.append(toJniType(str));
                    sb.append(")regs[");
                    sb.append(registerA5);
                    sb.append("].i;\n");
                }
                break;
            case 30:
                int registerA6 = ((OneRegisterInstruction) instruction).getRegisterA();
                if ("D".equals(str)) {
                    sb.append("    return regs[");
                    sb.append(registerA6);
                    sb.append("].d;\n");
                } else {
                    sb.append("    return regs[");
                    sb.append(registerA6);
                    sb.append("].j;\n");
                }
                break;
            case 31:
                int registerA7 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    return (");
                sb.append(toJniType(str));
                sb.append(")regs[");
                sb.append(registerA7);
                sb.append("].l;\n");
                break;
            case 32:
            case 33:
            case 34:
            case 35:
                int registerA8 = ((OneRegisterInstruction) instruction).getRegisterA();
                int narrowLiteral = ((NarrowLiteralInstruction) instruction).getNarrowLiteral();
                sb.append("    dex2c_set_int(regs[");
                sb.append(registerA8);
                sb.append("], ");
                sb.append(narrowLiteral);
                sb.append(");\n");
                break;
            case 36:
            case 37:
            case 38:
            case 39:
                int registerA9 = ((OneRegisterInstruction) instruction).getRegisterA();
                long wideLiteral = ((WideLiteralInstruction) instruction).getWideLiteral();
                if (wideLiteral == Long.MIN_VALUE) {
                    sb.append("    dex2c_set_long(regs[");
                    sb.append(registerA9);
                    sb.append("], (-9223372036854775807LL - 1LL));\n");
                } else {
                    sb.append("    dex2c_set_long(regs[");
                    sb.append(registerA9);
                    sb.append("], ");
                    sb.append(wideLiteral);
                    sb.append("LL);\n");
                }
                break;
            case 40:
            case 41:
                int registerA10 = ((OneRegisterInstruction) instruction).getRegisterA();
                String string = ((StringReference) ((ReferenceInstruction) instruction).getReference()).getString();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(registerA10);
                sb.append("], env->NewStringUTF(");
                sb.append(unitStringPool.ref(string));
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 42:
                int registerA11 = ((OneRegisterInstruction) instruction).getRegisterA();
                String type = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(registerA11);
                sb.append("], dex2c_find_class(env, ");
                sb.append(unitStringPool.ref(toFindClassName(type)));
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 43:
                int registerA12 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_monitor_enter(env, regs[");
                sb.append(registerA12);
                sb.append("].l);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 44:
                int registerA13 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_monitor_exit(env, regs[");
                sb.append(registerA13);
                sb.append("].l);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 45:
                int registerA14 = ((OneRegisterInstruction) instruction).getRegisterA();
                String type2 = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                sb.append("    dex2c_check_cast(env, regs[");
                sb.append(registerA14);
                sb.append("].l, ");
                sb.append(unitStringPool.ref(toFindClassName(type2)));
                sb.append(");\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 46:
                TwoRegisterInstruction twoRegisterInstruction2 = (TwoRegisterInstruction) instruction;
                String type3 = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction2.getRegisterA());
                sb.append("], dex2c_instance_of(env, regs[");
                sb.append(twoRegisterInstruction2.getRegisterB());
                sb.append("].l, ");
                sb.append(unitStringPool.ref(toFindClassName(type3)));
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 47:
                TwoRegisterInstruction twoRegisterInstruction3 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction3.getRegisterA());
                sb.append("], dex2c_array_length(env, regs[");
                sb.append(twoRegisterInstruction3.getRegisterB());
                sb.append("].l));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                int registerA15 = ((OneRegisterInstruction) instruction).getRegisterA();
                String type4 = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(registerA15);
                sb.append("], dex2c_alloc_object(env, ");
                sb.append(unitStringPool.ref(toFindClassName(type4)));
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 49:
                TwoRegisterInstruction twoRegisterInstruction4 = (TwoRegisterInstruction) instruction;
                String type5 = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                sb.append("    dex2c_set_obj(regs[");
                sb.append(twoRegisterInstruction4.getRegisterA());
                sb.append("], dex2c_new_array(env, regs[");
                sb.append(twoRegisterInstruction4.getRegisterB());
                sb.append("].i, ");
                sb.append(unitStringPool.ref(type5));
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 50:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                String type6 = ((TypeReference) ((ReferenceInstruction) instruction).getReference()).getType();
                int[] iArrExtractInvokeRegisters = extractInvokeRegisters(instruction);
                sb.append("    jobject _farr = dex2c_new_array(env, ");
                sb.append(iArrExtractInvokeRegisters.length);
                sb.append(", ");
                sb.append(unitStringPool.ref(type6));
                sb.append(");\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                String strSubstring = type6.startsWith("[") ? type6.substring(1) : "I";
                for (int i4 = 0; i4 < iArrExtractInvokeRegisters.length; i4++) {
                    if (strSubstring.startsWith("L") || strSubstring.startsWith("[")) {
                        sb.append("    dex2c_aput_object(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].l);\n");
                    } else if ("Z".equals(strSubstring)) {
                        sb.append("    dex2c_aput_boolean(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].i);\n");
                    } else if ("B".equals(strSubstring)) {
                        sb.append("    dex2c_aput_byte(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].i);\n");
                    } else if ("C".equals(strSubstring)) {
                        sb.append("    dex2c_aput_char(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].i);\n");
                    } else if ("S".equals(strSubstring)) {
                        sb.append("    dex2c_aput_short(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].i);\n");
                    } else {
                        sb.append("    dex2c_aput_32(env, _farr, ");
                        sb.append(i4);
                        sb.append(", regs[");
                        sb.append(iArrExtractInvokeRegisters[i4]);
                        sb.append("].i);\n");
                    }
                }
                sb.append("    dex2c_set_obj(__res, _farr);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 52:
                int registerA16 = ((OneRegisterInstruction) instruction).getRegisterA();
                Instruction instruction2 = map.get(Integer.valueOf(((OffsetInstruction) instruction).getCodeOffset() + i2));
                if (instruction2 instanceof ArrayPayload) {
                    ArrayPayload arrayPayload = (ArrayPayload) instruction2;
                    int elementWidth = arrayPayload.getElementWidth();
                    List<Number> arrayElements = arrayPayload.getArrayElements();
                    int size = arrayElements.size();
                    if (size == 0) {
                        sb.append("    if (regs[");
                        sb.append(registerA16);
                        sb.append("].l == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array\");\n");
                    } else {
                        int i5 = 1;
                        if (elementWidth == 1) {
                            if (elementWidth == i5) {
                                str2 = "uint8_t";
                            } else if (elementWidth == 2) {
                                str2 = "uint16_t";
                            } else if (elementWidth == 4) {
                                str2 = "uint32_t";
                            } else {
                                str2 = "uint64_t";
                            }
                            sb.append("    static const ");
                            sb.append(str2);
                            sb.append(" _fad_");
                            sb.append(i2);
                            sb.append("[");
                            sb.append(size);
                            sb.append("] = {");
                            for (i3 = 0; i3 < size; i3++) {
                                if (i3 > 0) {
                                    sb.append(",");
                                }
                                jLongValue = arrayElements.get(i3).longValue();
                                if (elementWidth == 1) {
                                    sb.append(String.format(Locale.US, "0x%02XU", Integer.valueOf(((int) jLongValue) & 255)));
                                } else if (elementWidth == 2) {
                                    sb.append(String.format(Locale.US, "0x%04XU", Integer.valueOf(65535 & ((int) jLongValue))));
                                } else if (elementWidth == 4) {
                                    sb.append(String.format(Locale.US, "0x%08XU", Integer.valueOf((int) jLongValue)));
                                } else {
                                    sb.append(String.format(Locale.US, "0x%016XULL", Long.valueOf(jLongValue)));
                                }
                            }
                            sb.append("};\n");
                            sb.append("    dex2c_fill_array_data(env, regs[");
                            sb.append(registerA16);
                            sb.append("].l, _fad_");
                            sb.append(i2);
                            sb.append(", ");
                            sb.append(size);
                            sb.append(", ");
                            sb.append(elementWidth);
                            sb.append(");\n");
                        } else if (elementWidth == 2 || elementWidth == 4 || elementWidth == 8) {
                            i5 = 1;
                            if (elementWidth == i5) {
                                str2 = "uint8_t";
                            } else if (elementWidth == 2) {
                                str2 = "uint16_t";
                            } else if (elementWidth == 4) {
                                str2 = "uint32_t";
                            } else {
                                str2 = "uint64_t";
                            }
                            sb.append("    static const ");
                            sb.append(str2);
                            sb.append(" _fad_");
                            sb.append(i2);
                            sb.append("[");
                            sb.append(size);
                            sb.append("] = {");
                            while (i3 < size) {
                                if (i3 > 0) {
                                    sb.append(",");
                                }
                                jLongValue = arrayElements.get(i3).longValue();
                                if (elementWidth == 1) {
                                    sb.append(String.format(Locale.US, "0x%02XU", Integer.valueOf(((int) jLongValue) & 255)));
                                } else if (elementWidth == 2) {
                                    sb.append(String.format(Locale.US, "0x%04XU", Integer.valueOf(65535 & ((int) jLongValue))));
                                } else if (elementWidth == 4) {
                                    sb.append(String.format(Locale.US, "0x%08XU", Integer.valueOf((int) jLongValue)));
                                } else {
                                    sb.append(String.format(Locale.US, "0x%016XULL", Long.valueOf(jLongValue)));
                                }
                            }
                            sb.append("};\n");
                            sb.append("    dex2c_fill_array_data(env, regs[");
                            sb.append(registerA16);
                            sb.append("].l, _fad_");
                            sb.append(i2);
                            sb.append(", ");
                            sb.append(size);
                            sb.append(", ");
                            sb.append(elementWidth);
                            sb.append(");\n");
                        }
                    }
                    emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                }
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                int registerA17 = ((OneRegisterInstruction) instruction).getRegisterA();
                sb.append("    dex2c_throw(env, (jthrowable)regs[");
                sb.append(registerA17);
                sb.append("].l);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
            case HeaderItem.STRING_COUNT_OFFSET /* 56 */:
                int codeOffset = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                sb.append("    goto L_pc_");
                sb.append(codeOffset);
                sb.append(";\n");
                break;
            case 57:
            case 58:
                int registerA18 = ((OneRegisterInstruction) instruction).getRegisterA();
                Instruction instruction3 = map.get(Integer.valueOf(((OffsetInstruction) instruction).getCodeOffset() + i2));
                if (instruction3 instanceof SwitchPayload) {
                    sb.append("    switch (regs[");
                    sb.append(registerA18);
                    sb.append("].i) {\n");
                    for (SwitchElement switchElement : ((SwitchPayload) instruction3).getSwitchElements()) {
                        int offset = switchElement.getOffset() + i2;
                        sb.append("        case ");
                        sb.append(switchElement.getKey());
                        sb.append(": goto L_pc_");
                        sb.append(offset);
                        sb.append(";\n");
                    }
                    sb.append("        default: break;\n");
                    sb.append("    }\n");
                }
                break;
            case 59:
                ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction.getRegisterA());
                sb.append("], dex2c_cmp_float(regs[");
                sb.append(threeRegisterInstruction.getRegisterB());
                sb.append("].f, regs[");
                sb.append(threeRegisterInstruction.getRegisterC());
                sb.append("].f, -1));\n");
                break;
            case 60:
                ThreeRegisterInstruction threeRegisterInstruction2 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction2.getRegisterA());
                sb.append("], dex2c_cmp_float(regs[");
                sb.append(threeRegisterInstruction2.getRegisterB());
                sb.append("].f, regs[");
                sb.append(threeRegisterInstruction2.getRegisterC());
                sb.append("].f, 1));\n");
                break;
            case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                ThreeRegisterInstruction threeRegisterInstruction3 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction3.getRegisterA());
                sb.append("], dex2c_cmp_double(regs[");
                sb.append(threeRegisterInstruction3.getRegisterB());
                sb.append("].d, regs[");
                sb.append(threeRegisterInstruction3.getRegisterC());
                sb.append("].d, -1));\n");
                break;
            case 62:
                ThreeRegisterInstruction threeRegisterInstruction4 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction4.getRegisterA());
                sb.append("], dex2c_cmp_double(regs[");
                sb.append(threeRegisterInstruction4.getRegisterB());
                sb.append("].d, regs[");
                sb.append(threeRegisterInstruction4.getRegisterC());
                sb.append("].d, 1));\n");
                break;
            case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                ThreeRegisterInstruction threeRegisterInstruction5 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction5.getRegisterA());
                sb.append("], dex2c_cmp_long(regs[");
                sb.append(threeRegisterInstruction5.getRegisterB());
                sb.append("].j, regs[");
                sb.append(threeRegisterInstruction5.getRegisterC());
                sb.append("].j));\n");
                break;
            case 64:
                TwoRegisterInstruction twoRegisterInstruction5 = (TwoRegisterInstruction) instruction;
                int codeOffset2 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                sb.append("    if (dex2c_is_eq(env, regs[");
                sb.append(twoRegisterInstruction5.getRegisterA());
                sb.append("], regs[");
                sb.append(twoRegisterInstruction5.getRegisterB());
                sb.append("])) goto L_pc_");
                sb.append(codeOffset2);
                sb.append(";\n");
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                TwoRegisterInstruction twoRegisterInstruction6 = (TwoRegisterInstruction) instruction;
                int codeOffset3 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                sb.append("    if (!dex2c_is_eq(env, regs[");
                sb.append(twoRegisterInstruction6.getRegisterA());
                sb.append("], regs[");
                sb.append(twoRegisterInstruction6.getRegisterB());
                sb.append("])) goto L_pc_");
                sb.append(codeOffset3);
                sb.append(";\n");
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
            case HeaderItem.TYPE_START_OFFSET /* 68 */:
            case 69:
                TwoRegisterInstruction twoRegisterInstruction7 = (TwoRegisterInstruction) instruction;
                int codeOffset4 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                if (opcode == Opcode.IF_LT) {
                    str3 = "<";
                } else if (opcode == Opcode.IF_GE) {
                    str3 = ">=";
                } else {
                    str3 = opcode == Opcode.IF_GT ? ">" : "<=";
                }
                sb.append("    if (regs[");
                sb.append(twoRegisterInstruction7.getRegisterA());
                sb.append("].i ");
                sb.append(str3);
                sb.append(" regs[");
                sb.append(twoRegisterInstruction7.getRegisterB());
                sb.append("].i) goto L_pc_");
                sb.append(codeOffset4);
                sb.append(";\n");
                break;
            case 70:
                int registerA19 = ((OneRegisterInstruction) instruction).getRegisterA();
                int codeOffset5 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                sb.append("    if (dex2c_is_zero(regs[");
                sb.append(registerA19);
                sb.append("])) goto L_pc_");
                sb.append(codeOffset5);
                sb.append(";\n");
                break;
            case 71:
                int registerA20 = ((OneRegisterInstruction) instruction).getRegisterA();
                int codeOffset6 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                sb.append("    if (!dex2c_is_zero(regs[");
                sb.append(registerA20);
                sb.append("])) goto L_pc_");
                sb.append(codeOffset6);
                sb.append(";\n");
                break;
            case HeaderItem.PROTO_COUNT_OFFSET /* 72 */:
            case 73:
            case 74:
            case 75:
                int registerA21 = ((OneRegisterInstruction) instruction).getRegisterA();
                int codeOffset7 = ((OffsetInstruction) instruction).getCodeOffset() + i2;
                if (opcode == Opcode.IF_LTZ) {
                    str4 = "<";
                } else if (opcode == Opcode.IF_GEZ) {
                    str4 = ">=";
                } else {
                    str4 = opcode == Opcode.IF_GTZ ? ">" : "<=";
                }
                sb.append("    if (regs[");
                sb.append(registerA21);
                sb.append("].i ");
                sb.append(str4);
                sb.append(" 0) goto L_pc_");
                sb.append(codeOffset7);
                sb.append(";\n");
                break;
            case 76:
                ThreeRegisterInstruction threeRegisterInstruction6 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction6.getRegisterA());
                sb.append("], dex2c_aget_32(env, regs[");
                sb.append(threeRegisterInstruction6.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction6.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 77:
                ThreeRegisterInstruction threeRegisterInstruction7 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(threeRegisterInstruction7.getRegisterA());
                sb.append("], dex2c_aget_64(env, regs[");
                sb.append(threeRegisterInstruction7.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction7.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 78:
                ThreeRegisterInstruction threeRegisterInstruction8 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_obj(regs[");
                sb.append(threeRegisterInstruction8.getRegisterA());
                sb.append("], dex2c_aget_object(env, regs[");
                sb.append(threeRegisterInstruction8.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction8.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 79:
                ThreeRegisterInstruction threeRegisterInstruction9 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction9.getRegisterA());
                sb.append("], dex2c_aget_boolean(env, regs[");
                sb.append(threeRegisterInstruction9.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction9.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case HeaderItem.FIELD_COUNT_OFFSET /* 80 */:
                ThreeRegisterInstruction threeRegisterInstruction10 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction10.getRegisterA());
                sb.append("], dex2c_aget_byte(env, regs[");
                sb.append(threeRegisterInstruction10.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction10.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 81:
                ThreeRegisterInstruction threeRegisterInstruction11 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction11.getRegisterA());
                sb.append("], dex2c_aget_char(env, regs[");
                sb.append(threeRegisterInstruction11.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction11.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 82:
                ThreeRegisterInstruction threeRegisterInstruction12 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(threeRegisterInstruction12.getRegisterA());
                sb.append("], dex2c_aget_short(env, regs[");
                sb.append(threeRegisterInstruction12.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction12.getRegisterC());
                sb.append("].i));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 83:
                ThreeRegisterInstruction threeRegisterInstruction13 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_32(env, regs[");
                sb.append(threeRegisterInstruction13.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction13.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction13.getRegisterA());
                sb.append("].i);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case HeaderItem.FIELD_START_OFFSET /* 84 */:
                ThreeRegisterInstruction threeRegisterInstruction14 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_64(env, regs[");
                sb.append(threeRegisterInstruction14.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction14.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction14.getRegisterA());
                sb.append("].j);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 85:
                ThreeRegisterInstruction threeRegisterInstruction15 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_object(env, regs[");
                sb.append(threeRegisterInstruction15.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction15.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction15.getRegisterA());
                sb.append("].l);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 86:
                ThreeRegisterInstruction threeRegisterInstruction16 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_boolean(env, regs[");
                sb.append(threeRegisterInstruction16.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction16.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction16.getRegisterA());
                sb.append("].i);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 87:
                ThreeRegisterInstruction threeRegisterInstruction17 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_byte(env, regs[");
                sb.append(threeRegisterInstruction17.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction17.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction17.getRegisterA());
                sb.append("].i);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case HeaderItem.METHOD_COUNT_OFFSET /* 88 */:
                ThreeRegisterInstruction threeRegisterInstruction18 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_char(env, regs[");
                sb.append(threeRegisterInstruction18.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction18.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction18.getRegisterA());
                sb.append("].i);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 89:
                ThreeRegisterInstruction threeRegisterInstruction19 = (ThreeRegisterInstruction) instruction;
                sb.append("    dex2c_aput_short(env, regs[");
                sb.append(threeRegisterInstruction19.getRegisterB());
                sb.append("].l, regs[");
                sb.append(threeRegisterInstruction19.getRegisterC());
                sb.append("].i, regs[");
                sb.append(threeRegisterInstruction19.getRegisterA());
                sb.append("].i);\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 90:
            case 91:
            case HeaderItem.METHOD_START_OFFSET /* 92 */:
            case 93:
            case 94:
            case 95:
            case HeaderItem.CLASS_COUNT_OFFSET /* 96 */:
                TwoRegisterInstruction twoRegisterInstruction8 = (TwoRegisterInstruction) instruction;
                emitInstanceFieldGet(sb, twoRegisterInstruction8.getRegisterA(), twoRegisterInstruction8.getRegisterB(), (FieldReference) ((ReferenceInstruction) instruction).getReference(), unitStringPool);
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 97:
            case 98:
            case 99:
            case 100:
            case TypedValues.TYPE_TARGET /* 101 */:
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
            case 103:
                TwoRegisterInstruction twoRegisterInstruction9 = (TwoRegisterInstruction) instruction;
                emitInstanceFieldPut(sb, twoRegisterInstruction9.getRegisterA(), twoRegisterInstruction9.getRegisterB(), (FieldReference) ((ReferenceInstruction) instruction).getReference(), unitStringPool);
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
            case 110:
                emitStaticFieldGet(sb, ((OneRegisterInstruction) instruction).getRegisterA(), (FieldReference) ((ReferenceInstruction) instruction).getReference(), unitStringPool);
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
                emitStaticFieldPut(sb, ((OneRegisterInstruction) instruction).getRegisterA(), (FieldReference) ((ReferenceInstruction) instruction).getReference(), unitStringPool);
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 118:
            case 119:
            case CdexHeaderItem.DEBUG_INFO_OFFSETS_TABLE_OFFSET /* 120 */:
            case 121:
            case 122:
            case 123:
            case CdexHeaderItem.DEBUG_INFO_BASE /* 124 */:
            case 125:
            case 126:
            case WorkQueueKt.MASK /* 127 */:
                emitInvokeInstruction(sb, classDef, instruction, opcode, unitStringPool);
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 128:
                TwoRegisterInstruction twoRegisterInstruction10 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction10.getRegisterA());
                sb.append("], (jint)(-(uint32_t)regs[");
                sb.append(twoRegisterInstruction10.getRegisterB());
                sb.append("].i));\n");
                break;
            case 129:
                TwoRegisterInstruction twoRegisterInstruction11 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction11.getRegisterA());
                sb.append("], ~regs[");
                sb.append(twoRegisterInstruction11.getRegisterB());
                sb.append("].i);\n");
                break;
            case 130:
                TwoRegisterInstruction twoRegisterInstruction12 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(twoRegisterInstruction12.getRegisterA());
                sb.append("], (jlong)(-(uint64_t)regs[");
                sb.append(twoRegisterInstruction12.getRegisterB());
                sb.append("].j));\n");
                break;
            case 131:
                TwoRegisterInstruction twoRegisterInstruction13 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(twoRegisterInstruction13.getRegisterA());
                sb.append("], ~regs[");
                sb.append(twoRegisterInstruction13.getRegisterB());
                sb.append("].j);\n");
                break;
            case 132:
                TwoRegisterInstruction twoRegisterInstruction14 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_float(regs[");
                sb.append(twoRegisterInstruction14.getRegisterA());
                sb.append("], -regs[");
                sb.append(twoRegisterInstruction14.getRegisterB());
                sb.append("].f);\n");
                break;
            case 133:
                TwoRegisterInstruction twoRegisterInstruction15 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_double(regs[");
                sb.append(twoRegisterInstruction15.getRegisterA());
                sb.append("], -regs[");
                sb.append(twoRegisterInstruction15.getRegisterB());
                sb.append("].d);\n");
                break;
            case 134:
                TwoRegisterInstruction twoRegisterInstruction16 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(twoRegisterInstruction16.getRegisterA());
                sb.append("], (jlong)regs[");
                sb.append(twoRegisterInstruction16.getRegisterB());
                sb.append("].i);\n");
                break;
            case 135:
                TwoRegisterInstruction twoRegisterInstruction17 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_float(regs[");
                sb.append(twoRegisterInstruction17.getRegisterA());
                sb.append("], (jfloat)regs[");
                sb.append(twoRegisterInstruction17.getRegisterB());
                sb.append("].i);\n");
                break;
            case 136:
                TwoRegisterInstruction twoRegisterInstruction18 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_double(regs[");
                sb.append(twoRegisterInstruction18.getRegisterA());
                sb.append("], (jdouble)regs[");
                sb.append(twoRegisterInstruction18.getRegisterB());
                sb.append("].i);\n");
                break;
            case 137:
                TwoRegisterInstruction twoRegisterInstruction19 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction19.getRegisterA());
                sb.append("], (jint)regs[");
                sb.append(twoRegisterInstruction19.getRegisterB());
                sb.append("].j);\n");
                break;
            case 138:
                TwoRegisterInstruction twoRegisterInstruction20 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_float(regs[");
                sb.append(twoRegisterInstruction20.getRegisterA());
                sb.append("], (jfloat)regs[");
                sb.append(twoRegisterInstruction20.getRegisterB());
                sb.append("].j);\n");
                break;
            case 139:
                TwoRegisterInstruction twoRegisterInstruction21 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_double(regs[");
                sb.append(twoRegisterInstruction21.getRegisterA());
                sb.append("], (jdouble)regs[");
                sb.append(twoRegisterInstruction21.getRegisterB());
                sb.append("].j);\n");
                break;
            case 140:
                TwoRegisterInstruction twoRegisterInstruction22 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction22.getRegisterA());
                sb.append("], dex2c_float_to_int(regs[");
                sb.append(twoRegisterInstruction22.getRegisterB());
                sb.append("].f));\n");
                break;
            case 141:
                TwoRegisterInstruction twoRegisterInstruction23 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(twoRegisterInstruction23.getRegisterA());
                sb.append("], dex2c_float_to_long(regs[");
                sb.append(twoRegisterInstruction23.getRegisterB());
                sb.append("].f));\n");
                break;
            case 142:
                TwoRegisterInstruction twoRegisterInstruction24 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_double(regs[");
                sb.append(twoRegisterInstruction24.getRegisterA());
                sb.append("], (jdouble)regs[");
                sb.append(twoRegisterInstruction24.getRegisterB());
                sb.append("].f);\n");
                break;
            case 143:
                TwoRegisterInstruction twoRegisterInstruction25 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction25.getRegisterA());
                sb.append("], dex2c_double_to_int(regs[");
                sb.append(twoRegisterInstruction25.getRegisterB());
                sb.append("].d));\n");
                break;
            case 144:
                TwoRegisterInstruction twoRegisterInstruction26 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_long(regs[");
                sb.append(twoRegisterInstruction26.getRegisterA());
                sb.append("], dex2c_double_to_long(regs[");
                sb.append(twoRegisterInstruction26.getRegisterB());
                sb.append("].d));\n");
                break;
            case 145:
                TwoRegisterInstruction twoRegisterInstruction27 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_float(regs[");
                sb.append(twoRegisterInstruction27.getRegisterA());
                sb.append("], (jfloat)regs[");
                sb.append(twoRegisterInstruction27.getRegisterB());
                sb.append("].d);\n");
                break;
            case 146:
                TwoRegisterInstruction twoRegisterInstruction28 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction28.getRegisterA());
                sb.append("], (jint)(jbyte)regs[");
                sb.append(twoRegisterInstruction28.getRegisterB());
                sb.append("].i);\n");
                break;
            case 147:
                TwoRegisterInstruction twoRegisterInstruction29 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction29.getRegisterA());
                sb.append("], (jint)(jchar)regs[");
                sb.append(twoRegisterInstruction29.getRegisterB());
                sb.append("].i);\n");
                break;
            case 148:
                TwoRegisterInstruction twoRegisterInstruction30 = (TwoRegisterInstruction) instruction;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction30.getRegisterA());
                sb.append("], (jint)(jshort)regs[");
                sb.append(twoRegisterInstruction30.getRegisterB());
                sb.append("].i);\n");
                break;
            case 149:
            case 150:
                emitBinInt(sb, instruction, "+");
                break;
            case 151:
            case 152:
                emitBinInt(sb, instruction, "-");
                break;
            case 153:
            case 154:
                emitBinInt(sb, instruction, "*");
                break;
            case 155:
            case 156:
                emitDivRemInt(sb, methodImplementation, str, i2, instruction, true, unitStringPool);
                break;
            case 157:
            case 158:
                emitDivRemInt(sb, methodImplementation, str, i2, instruction, false, unitStringPool);
                break;
            case 159:
            case 160:
                emitBinInt(sb, instruction, "&");
                break;
            case 161:
            case 162:
                emitBinInt(sb, instruction, "|");
                break;
            case 163:
            case 164:
                emitBinInt(sb, instruction, "^");
                break;
            case 165:
            case 166:
                emitShiftInt(sb, instruction, "<<", false);
                break;
            case 167:
            case 168:
                emitShiftInt(sb, instruction, ">>", false);
                break;
            case 169:
            case 170:
                emitShiftInt(sb, instruction, ">>", true);
                break;
            case 171:
            case 172:
                emitBinLong(sb, instruction, "+");
                break;
            case 173:
            case 174:
                emitBinLong(sb, instruction, "-");
                break;
            case 175:
            case 176:
                emitBinLong(sb, instruction, "*");
                break;
            case 177:
            case 178:
                emitDivRemLong(sb, methodImplementation, str, i2, instruction, true, unitStringPool);
                break;
            case 179:
            case 180:
                emitDivRemLong(sb, methodImplementation, str, i2, instruction, false, unitStringPool);
                break;
            case 181:
            case 182:
                emitBinLong(sb, instruction, "&");
                break;
            case 183:
            case 184:
                emitBinLong(sb, instruction, "|");
                break;
            case 185:
            case 186:
                emitBinLong(sb, instruction, "^");
                break;
            case 187:
            case 188:
                emitShiftLong(sb, instruction, "<<", false);
                break;
            case 189:
            case 190:
                emitShiftLong(sb, instruction, ">>", false);
                break;
            case 191:
            case 192:
                emitShiftLong(sb, instruction, ">>", true);
                break;
            case 193:
            case 194:
                emitBinFloat(sb, instruction, "+", false);
                break;
            case 195:
            case 196:
                emitBinFloat(sb, instruction, "-", false);
                break;
            case 197:
            case 198:
                emitBinFloat(sb, instruction, "*", false);
                break;
            case 199:
            case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                emitBinFloat(sb, instruction, "/", false);
                break;
            case 201:
            case 202:
                emitBinFloat(sb, instruction, "%", true);
                break;
            case 203:
            case 204:
                emitBinDouble(sb, instruction, "+", false);
                break;
            case 205:
            case 206:
                emitBinDouble(sb, instruction, "-", false);
                break;
            case 207:
            case 208:
                emitBinDouble(sb, instruction, "*", false);
                break;
            case 209:
            case 210:
                emitBinDouble(sb, instruction, "/", false);
                break;
            case 211:
            case 212:
                emitBinDouble(sb, instruction, "%", true);
                break;
            case 213:
            case 214:
                emitLitInt(sb, instruction, "+", false);
                break;
            case 215:
            case 216:
                emitLitInt(sb, instruction, "-", true);
                break;
            case 217:
            case 218:
                emitLitInt(sb, instruction, "*", false);
                break;
            case 219:
            case 220:
                TwoRegisterInstruction twoRegisterInstruction31 = (TwoRegisterInstruction) instruction;
                int narrowLiteral2 = ((NarrowLiteralInstruction) instruction).getNarrowLiteral();
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction31.getRegisterA());
                sb.append("], dex2c_div_int(env, regs[");
                sb.append(twoRegisterInstruction31.getRegisterB());
                sb.append("].i, ");
                sb.append(narrowLiteral2);
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 221:
            case 222:
                TwoRegisterInstruction twoRegisterInstruction32 = (TwoRegisterInstruction) instruction;
                int narrowLiteral3 = ((NarrowLiteralInstruction) instruction).getNarrowLiteral();
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction32.getRegisterA());
                sb.append("], dex2c_rem_int(env, regs[");
                sb.append(twoRegisterInstruction32.getRegisterB());
                sb.append("].i, ");
                sb.append(narrowLiteral3);
                sb.append("));\n");
                emitExceptionCheck(sb, methodImplementation, str, i2, unitStringPool);
                break;
            case 223:
            case 224:
                emitLitInt(sb, instruction, "&", false);
                break;
            case 225:
            case 226:
                emitLitInt(sb, instruction, "|", false);
                break;
            case 227:
            case 228:
                emitLitInt(sb, instruction, "^", false);
                break;
            case 229:
                TwoRegisterInstruction twoRegisterInstruction33 = (TwoRegisterInstruction) instruction;
                int narrowLiteral4 = ((NarrowLiteralInstruction) instruction).getNarrowLiteral() & 31;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction33.getRegisterA());
                sb.append("], (jint)((uint32_t)regs[");
                sb.append(twoRegisterInstruction33.getRegisterB());
                sb.append("].i << ");
                sb.append(narrowLiteral4);
                sb.append("));\n");
                break;
            case 230:
                TwoRegisterInstruction twoRegisterInstruction34 = (TwoRegisterInstruction) instruction;
                int narrowLiteral5 = ((NarrowLiteralInstruction) instruction).getNarrowLiteral() & 31;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction34.getRegisterA());
                sb.append("], regs[");
                sb.append(twoRegisterInstruction34.getRegisterB());
                sb.append("].i >> ");
                sb.append(narrowLiteral5);
                sb.append(");\n");
                break;
            case 231:
                TwoRegisterInstruction twoRegisterInstruction35 = (TwoRegisterInstruction) instruction;
                int narrowLiteral6 = ((NarrowLiteralInstruction) instruction).getNarrowLiteral() & 31;
                sb.append("    dex2c_set_int(regs[");
                sb.append(twoRegisterInstruction35.getRegisterA());
                sb.append("], (jint)(((uint32_t)regs[");
                sb.append(twoRegisterInstruction35.getRegisterB());
                sb.append("].i) >> ");
                sb.append(narrowLiteral6);
                sb.append("));\n");
                break;
            default:
                sb.append("    // Unhandled Dalvik op: ");
                sb.append(opcode.name);
                sb.append("\n");
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:43:0x00af  */
    /* JADX WARN: Failed to find 'out' block for switch in B:77:0x010b. Please report as an issue. */
    private static void emitInvokeInstruction(StringBuilder sb, ClassDef classDef, Instruction instruction, Opcode opcode, UnitStringPool unitStringPool) {
        int i;
        int i2;
        MethodReference methodReference = (MethodReference) ((ReferenceInstruction) instruction).getReference();
        int[] iArrExtractInvokeRegisters = extractInvokeRegisters(instruction);
        boolean z = opcode == Opcode.INVOKE_STATIC || opcode == Opcode.INVOKE_STATIC_RANGE;
        boolean z2 = opcode == Opcode.INVOKE_SUPER || opcode == Opcode.INVOKE_SUPER_RANGE;
        boolean z3 = opcode == Opcode.INVOKE_DIRECT || opcode == Opcode.INVOKE_DIRECT_RANGE;
        String findClassName = toFindClassName(methodReference.getDefiningClass());
        String findClassName2 = toFindClassName(classDef.getType());
        String findClassName3 = classDef.getSuperclass() != null ? toFindClassName(classDef.getSuperclass()) : findClassName;
        String name = methodReference.getName();
        String strBuildJniSignature = buildJniSignature(methodReference);
        String returnType = methodReference.getReturnType();
        if (z) {
            i = -1;
            i2 = 0;
        } else {
            if (iArrExtractInvokeRegisters.length == 0) {
                return;
            }
            i = iArrExtractInvokeRegisters[0];
            i2 = 1;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<? extends CharSequence> it = methodReference.getParameterTypes().iterator();
        int i3 = i2;
        while (true) {
            boolean z4 = z3;
            if (it.hasNext()) {
                Iterator<? extends CharSequence> it2 = it;
                String string = it.next().toString();
                boolean z5 = z;
                int i4 = i3 < iArrExtractInvokeRegisters.length ? iArrExtractInvokeRegisters[i3] : 0;
                sb2.append(", ");
                string.hashCode();
                switch (string) {
                    case "B":
                        sb2.append("(jbyte)regs[");
                        sb2.append(i4);
                        sb2.append("].i");
                        i3++;
                        break;
                    case "C":
                        sb2.append("(jchar)regs[");
                        sb2.append(i4);
                        sb2.append("].i");
                        i3++;
                        break;
                    case "D":
                        sb2.append("(jdouble)regs[");
                        sb2.append(i4);
                        sb2.append("].d");
                        i3 += 2;
                        break;
                    case "F":
                        sb2.append("(jfloat)regs[");
                        sb2.append(i4);
                        sb2.append("].f");
                        i3++;
                        break;
                    case "I":
                        sb2.append("(jint)regs[");
                        sb2.append(i4);
                        sb2.append("].i");
                        i3++;
                        break;
                    case "J":
                        sb2.append("(jlong)regs[");
                        sb2.append(i4);
                        sb2.append("].j");
                        i3 += 2;
                        break;
                    case "S":
                        sb2.append("(jshort)regs[");
                        sb2.append(i4);
                        sb2.append("].i");
                        i3++;
                        break;
                    case "Z":
                        sb2.append("(jboolean)(regs[");
                        sb2.append(i4);
                        sb2.append("].i != 0 ? JNI_TRUE : JNI_FALSE)");
                        i3++;
                        break;
                    default:
                        sb2.append("(jobject)regs[");
                        sb2.append(i4);
                        sb2.append("].l");
                        i3++;
                        break;
                }
                z3 = z4;
                z = z5;
                it = it2;
            } else {
                boolean z6 = z;
                String strJniCallSuffix = jniCallSuffix(returnType);
                if (z6) {
                    sb.append("    jclass _cls = nullptr;\n");
                    sb.append("    jmethodID _mid = dex2c_resolve_static_method(env, ");
                    sb.append(unitStringPool.ref(findClassName));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(name));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(strBuildJniSignature));
                    sb.append(", &_cls);\n");
                    sb.append("    if (_mid != nullptr && _cls != nullptr) {\n");
                    emitStoreCallResult(sb, returnType, "env->CallStatic" + strJniCallSuffix + "Method(_cls, _mid" + ((Object) sb2) + ")");
                    sb.append("        env->DeleteLocalRef(_cls);\n");
                    sb.append("    }\n");
                    return;
                }
                if (z2) {
                    sb.append("    jobject _obj = regs[");
                    sb.append(i);
                    sb.append("].l;\n");
                    sb.append("    if (_obj == nullptr) { dex2c_throw_ex(env, ");
                    sb.append(unitStringPool.ref("java/lang/NullPointerException"));
                    sb.append(", ");
                    sb.append(unitStringPool.ref("null super receiver"));
                    sb.append("); } else {\n");
                    sb.append("        jclass _scls = nullptr;\n");
                    sb.append("        jmethodID _mid = dex2c_resolve_super_method(env, _obj, ");
                    sb.append(unitStringPool.ref(findClassName3));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(findClassName));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(findClassName2));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(name));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(strBuildJniSignature));
                    sb.append(", &_scls);\n");
                    sb.append("        if (_mid != nullptr && _scls != nullptr) {\n");
                    emitStoreCallResult(sb, returnType, "env->CallNonvirtual" + strJniCallSuffix + "Method(_obj, _scls, _mid" + ((Object) sb2) + ")");
                    sb.append("            env->DeleteLocalRef(_scls);\n");
                    sb.append("        }\n");
                    sb.append("    }\n");
                    return;
                }
                if (z4) {
                    sb.append("    jobject _obj = regs[");
                    sb.append(i);
                    sb.append("].l;\n");
                    sb.append("    if (_obj == nullptr) { dex2c_throw_ex(env, ");
                    sb.append(unitStringPool.ref("java/lang/NullPointerException"));
                    sb.append(", ");
                    sb.append(unitStringPool.ref("null direct receiver"));
                    sb.append("); } else {\n");
                    sb.append("        jclass _dcls = nullptr;\n");
                    sb.append("        jmethodID _mid = dex2c_resolve_direct_method(env, _obj, ");
                    sb.append(unitStringPool.ref(findClassName));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(name));
                    sb.append(", ");
                    sb.append(unitStringPool.ref(strBuildJniSignature));
                    sb.append(", &_dcls);\n");
                    sb.append("        if (_mid != nullptr && _dcls != nullptr) {\n");
                    emitStoreCallResult(sb, returnType, "env->CallNonvirtual" + strJniCallSuffix + "Method(_obj, _dcls, _mid" + ((Object) sb2) + ")");
                    sb.append("            env->DeleteLocalRef(_dcls);\n");
                    sb.append("        }\n");
                    sb.append("    }\n");
                    return;
                }
                sb.append("    jobject _obj = regs[");
                sb.append(i);
                sb.append("].l;\n");
                sb.append("    if (_obj == nullptr) { dex2c_throw_ex(env, ");
                sb.append(unitStringPool.ref("java/lang/NullPointerException"));
                sb.append(", ");
                sb.append(unitStringPool.ref("null virtual receiver"));
                sb.append("); } else {\n");
                sb.append("        jmethodID _mid = dex2c_resolve_virtual_method(env, _obj, ");
                sb.append(unitStringPool.ref(findClassName));
                sb.append(", ");
                sb.append(unitStringPool.ref(name));
                sb.append(", ");
                sb.append(unitStringPool.ref(strBuildJniSignature));
                sb.append(");\n");
                sb.append("        if (_mid != nullptr) {\n");
                emitStoreCallResult(sb, returnType, "env->Call" + strJniCallSuffix + "Method(_obj, _mid" + ((Object) sb2) + ")");
                sb.append("        }\n");
                sb.append("    }\n");
                return;
            }
        }
    }

    private static void emitStoreCallResult(StringBuilder sb, String str, String str2) {
        str.hashCode();
        switch (str) {
            case "B":
            case "C":
            case "I":
            case "S":
                sb.append("                dex2c_set_int(__res, (jint)");
                sb.append(str2);
                sb.append(");\n");
                break;
            case "D":
                sb.append("                dex2c_set_double(__res, ");
                sb.append(str2);
                sb.append(");\n");
                break;
            case "F":
                sb.append("                dex2c_set_float(__res, ");
                sb.append(str2);
                sb.append(");\n");
                break;
            case "J":
                sb.append("                dex2c_set_long(__res, ");
                sb.append(str2);
                sb.append(");\n");
                break;
            case "V":
                sb.append("                ");
                sb.append(str2);
                sb.append(";\n");
                break;
            case "Z":
                sb.append("                dex2c_set_int(__res, (");
                sb.append(str2);
                sb.append(" == JNI_TRUE) ? 1 : 0);\n");
                break;
            default:
                sb.append("                dex2c_set_obj(__res, ");
                sb.append(str2);
                sb.append(");\n");
                break;
        }
    }

    private static void emitInstanceFieldGet(StringBuilder sb, int i, int i2, FieldReference fieldReference, UnitStringPool unitStringPool) {
        String strRef = unitStringPool.ref(toFindClassName(fieldReference.getDefiningClass()));
        String strRef2 = unitStringPool.ref(fieldReference.getName());
        String strRef3 = unitStringPool.ref(fieldReference.getType());
        String type = fieldReference.getType();
        if ("F".equals(type)) {
            sb.append("    dex2c_set_float(regs[");
            sb.append(i);
            sb.append("], dex2c_iget_float(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if ("D".equals(type)) {
            sb.append("    dex2c_set_double(regs[");
            sb.append(i);
            sb.append("], dex2c_iget_double(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if ("J".equals(type)) {
            sb.append("    dex2c_set_long(regs[");
            sb.append(i);
            sb.append("], dex2c_iget_long(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if (type.startsWith("L") || type.startsWith("[")) {
            sb.append("    dex2c_set_obj(regs[");
            sb.append(i);
            sb.append("], dex2c_iget_object(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        sb.append("    dex2c_set_int(regs[");
        sb.append(i);
        sb.append("], dex2c_iget_int_like(env, regs[");
        sb.append(i2);
        sb.append("].l, ");
        sb.append(strRef);
        sb.append(", ");
        sb.append(strRef2);
        sb.append(", ");
        sb.append(strRef3);
        sb.append("));\n");
    }

    private static void emitInstanceFieldPut(StringBuilder sb, int i, int i2, FieldReference fieldReference, UnitStringPool unitStringPool) {
        String strRef = unitStringPool.ref(toFindClassName(fieldReference.getDefiningClass()));
        String strRef2 = unitStringPool.ref(fieldReference.getName());
        String strRef3 = unitStringPool.ref(fieldReference.getType());
        String type = fieldReference.getType();
        if ("F".equals(type)) {
            sb.append("    dex2c_iput_float(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].f);\n");
            return;
        }
        if ("D".equals(type)) {
            sb.append("    dex2c_iput_double(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].d);\n");
            return;
        }
        if ("J".equals(type)) {
            sb.append("    dex2c_iput_long(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].j);\n");
            return;
        }
        if (type.startsWith("L") || type.startsWith("[")) {
            sb.append("    dex2c_iput_object(env, regs[");
            sb.append(i2);
            sb.append("].l, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].l);\n");
            return;
        }
        sb.append("    dex2c_iput_int_like(env, regs[");
        sb.append(i2);
        sb.append("].l, ");
        sb.append(strRef);
        sb.append(", ");
        sb.append(strRef2);
        sb.append(", ");
        sb.append(strRef3);
        sb.append(", regs[");
        sb.append(i);
        sb.append("].i);\n");
    }

    private static void emitStaticFieldGet(StringBuilder sb, int i, FieldReference fieldReference, UnitStringPool unitStringPool) {
        String strRef = unitStringPool.ref(toFindClassName(fieldReference.getDefiningClass()));
        String strRef2 = unitStringPool.ref(fieldReference.getName());
        String strRef3 = unitStringPool.ref(fieldReference.getType());
        String type = fieldReference.getType();
        if ("F".equals(type)) {
            sb.append("    dex2c_set_float(regs[");
            sb.append(i);
            sb.append("], dex2c_sget_float(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if ("D".equals(type)) {
            sb.append("    dex2c_set_double(regs[");
            sb.append(i);
            sb.append("], dex2c_sget_double(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if ("J".equals(type)) {
            sb.append("    dex2c_set_long(regs[");
            sb.append(i);
            sb.append("], dex2c_sget_long(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        if (type.startsWith("L") || type.startsWith("[")) {
            sb.append("    dex2c_set_obj(regs[");
            sb.append(i);
            sb.append("], dex2c_sget_object(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append("));\n");
            return;
        }
        sb.append("    dex2c_set_int(regs[");
        sb.append(i);
        sb.append("], dex2c_sget_int_like(env, ");
        sb.append(strRef);
        sb.append(", ");
        sb.append(strRef2);
        sb.append(", ");
        sb.append(strRef3);
        sb.append("));\n");
    }

    private static void emitStaticFieldPut(StringBuilder sb, int i, FieldReference fieldReference, UnitStringPool unitStringPool) {
        String strRef = unitStringPool.ref(toFindClassName(fieldReference.getDefiningClass()));
        String strRef2 = unitStringPool.ref(fieldReference.getName());
        String strRef3 = unitStringPool.ref(fieldReference.getType());
        String type = fieldReference.getType();
        if ("F".equals(type)) {
            sb.append("    dex2c_sput_float(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].f);\n");
            return;
        }
        if ("D".equals(type)) {
            sb.append("    dex2c_sput_double(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].d);\n");
            return;
        }
        if ("J".equals(type)) {
            sb.append("    dex2c_sput_long(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].j);\n");
            return;
        }
        if (type.startsWith("L") || type.startsWith("[")) {
            sb.append("    dex2c_sput_object(env, ");
            sb.append(strRef);
            sb.append(", ");
            sb.append(strRef2);
            sb.append(", ");
            sb.append(strRef3);
            sb.append(", regs[");
            sb.append(i);
            sb.append("].l);\n");
            return;
        }
        sb.append("    dex2c_sput_int_like(env, ");
        sb.append(strRef);
        sb.append(", ");
        sb.append(strRef2);
        sb.append(", ");
        sb.append(strRef3);
        sb.append(", regs[");
        sb.append(i);
        sb.append("].i);\n");
    }

    private static void emitExceptionCheck(StringBuilder sb, MethodImplementation methodImplementation, String str, int i, UnitStringPool unitStringPool) {
        ArrayList<ExceptionHandler> arrayList = new ArrayList();
        for (TryBlock<? extends ExceptionHandler> tryBlock : methodImplementation.getTryBlocks()) {
            int startCodeAddress = tryBlock.getStartCodeAddress();
            int codeUnitCount = tryBlock.getCodeUnitCount() + startCodeAddress;
            if (i >= startCodeAddress && i < codeUnitCount) {
                arrayList.addAll(tryBlock.getExceptionHandlers());
            }
        }
        String str2 = "V".equals(str) ? "return;" : "return (" + toJniType(str) + ")0;";
        if (arrayList.isEmpty()) {
            sb.append("    if (env->ExceptionCheck()) ");
            sb.append(str2);
            sb.append("\n");
            return;
        }
        sb.append("    if (env->ExceptionCheck()) {\n");
        sb.append("        __pending_exc = env->ExceptionOccurred();\n");
        sb.append("        env->ExceptionClear();\n");
        for (ExceptionHandler exceptionHandler : arrayList) {
            String exceptionType = exceptionHandler.getExceptionType();
            int handlerCodeAddress = exceptionHandler.getHandlerCodeAddress();
            if (exceptionType == null) {
                sb.append("        goto L_pc_");
                sb.append(handlerCodeAddress);
                sb.append(";\n");
                sb.append("    }\n");
            }
            sb.append("        if (dex2c_instance_of(env, __pending_exc, ");
            sb.append(unitStringPool.ref(toFindClassName(exceptionType)));
            sb.append(") != 0) goto L_pc_");
            sb.append(handlerCodeAddress);
            sb.append(";\n");
        }
        sb.append("        env->Throw(__pending_exc);\n");
        sb.append("        ");
        sb.append(str2);
        sb.append("\n");
        sb.append("    }\n");
    }

    private static int[] extractInvokeRegisters(Instruction instruction) {
        if (instruction instanceof FiveRegisterInstruction) {
            FiveRegisterInstruction fiveRegisterInstruction = (FiveRegisterInstruction) instruction;
            int registerCount = fiveRegisterInstruction.getRegisterCount();
            int[] iArr = new int[registerCount];
            System.arraycopy(new int[]{fiveRegisterInstruction.getRegisterC(), fiveRegisterInstruction.getRegisterD(), fiveRegisterInstruction.getRegisterE(), fiveRegisterInstruction.getRegisterF(), fiveRegisterInstruction.getRegisterG()}, 0, iArr, 0, registerCount);
            return iArr;
        }
        if (instruction instanceof RegisterRangeInstruction) {
            RegisterRangeInstruction registerRangeInstruction = (RegisterRangeInstruction) instruction;
            int registerCount2 = registerRangeInstruction.getRegisterCount();
            int startRegister = registerRangeInstruction.getStartRegister();
            int[] iArr2 = new int[registerCount2];
            for (int i = 0; i < registerCount2; i++) {
                iArr2[i] = startRegister + i;
            }
            return iArr2;
        }
        return new int[0];
    }

    private static void emitBinInt(StringBuilder sb, Instruction instruction, String str) {
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], (jint)((uint32_t)regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].i ");
            sb.append(str);
            sb.append(" (uint32_t)regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].i));\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], (jint)((uint32_t)regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].i ");
            sb.append(str);
            sb.append(" (uint32_t)regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].i));\n");
        }
    }

    private static void emitDivRemInt(StringBuilder sb, MethodImplementation methodImplementation, String str, int i, Instruction instruction, boolean z, UnitStringPool unitStringPool) {
        String str2 = z ? "dex2c_div_int" : "dex2c_rem_int";
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], ");
            sb.append(str2);
            sb.append("(env, regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].i, regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].i));\n");
        } else if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], ");
            sb.append(str2);
            sb.append("(env, regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].i, regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].i));\n");
        }
        emitExceptionCheck(sb, methodImplementation, str, i, unitStringPool);
    }

    private static void emitShiftInt(StringBuilder sb, Instruction instruction, String str, boolean z) {
        String str2 = z ? "(uint32_t)" : "(jint)";
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], (jint)(");
            sb.append(str2);
            sb.append("regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].i ");
            sb.append(str);
            sb.append(" (regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].i & 0x1f)));\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_int(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], (jint)(");
            sb.append(str2);
            sb.append("regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].i ");
            sb.append(str);
            sb.append(" (regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].i & 0x1f)));\n");
        }
    }

    private static void emitBinLong(StringBuilder sb, Instruction instruction, String str) {
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], (jlong)((uint64_t)regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].j ");
            sb.append(str);
            sb.append(" (uint64_t)regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].j));\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], (jlong)((uint64_t)regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].j ");
            sb.append(str);
            sb.append(" (uint64_t)regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].j));\n");
        }
    }

    private static void emitDivRemLong(StringBuilder sb, MethodImplementation methodImplementation, String str, int i, Instruction instruction, boolean z, UnitStringPool unitStringPool) {
        String str2 = z ? "dex2c_div_long" : "dex2c_rem_long";
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], ");
            sb.append(str2);
            sb.append("(env, regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].j, regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].j));\n");
        } else if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], ");
            sb.append(str2);
            sb.append("(env, regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].j, regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].j));\n");
        }
        emitExceptionCheck(sb, methodImplementation, str, i, unitStringPool);
    }

    private static void emitShiftLong(StringBuilder sb, Instruction instruction, String str, boolean z) {
        String str2 = z ? "(uint64_t)" : "(jlong)";
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], (jlong)(");
            sb.append(str2);
            sb.append("regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].j ");
            sb.append(str);
            sb.append(" (regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].i & 0x3f)));\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            sb.append("    dex2c_set_long(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], (jlong)(");
            sb.append(str2);
            sb.append("regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].j ");
            sb.append(str);
            sb.append(" (regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].i & 0x3f)));\n");
        }
    }

    private static void emitBinFloat(StringBuilder sb, Instruction instruction, String str, boolean z) {
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            if (z) {
                sb.append("    dex2c_set_float(regs[");
                sb.append(threeRegisterInstruction.getRegisterA());
                sb.append("], __builtin_fmodf(regs[");
                sb.append(threeRegisterInstruction.getRegisterB());
                sb.append("].f, regs[");
                sb.append(threeRegisterInstruction.getRegisterC());
                sb.append("].f));\n");
                return;
            }
            sb.append("    dex2c_set_float(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].f ");
            sb.append(str);
            sb.append(" regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].f);\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            if (z) {
                sb.append("    dex2c_set_float(regs[");
                sb.append(twoRegisterInstruction.getRegisterA());
                sb.append("], __builtin_fmodf(regs[");
                sb.append(twoRegisterInstruction.getRegisterA());
                sb.append("].f, regs[");
                sb.append(twoRegisterInstruction.getRegisterB());
                sb.append("].f));\n");
                return;
            }
            sb.append("    dex2c_set_float(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].f ");
            sb.append(str);
            sb.append(" regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].f);\n");
        }
    }

    private static void emitBinDouble(StringBuilder sb, Instruction instruction, String str, boolean z) {
        if (instruction instanceof ThreeRegisterInstruction) {
            ThreeRegisterInstruction threeRegisterInstruction = (ThreeRegisterInstruction) instruction;
            if (z) {
                sb.append("    dex2c_set_double(regs[");
                sb.append(threeRegisterInstruction.getRegisterA());
                sb.append("], __builtin_fmod(regs[");
                sb.append(threeRegisterInstruction.getRegisterB());
                sb.append("].d, regs[");
                sb.append(threeRegisterInstruction.getRegisterC());
                sb.append("].d));\n");
                return;
            }
            sb.append("    dex2c_set_double(regs[");
            sb.append(threeRegisterInstruction.getRegisterA());
            sb.append("], regs[");
            sb.append(threeRegisterInstruction.getRegisterB());
            sb.append("].d ");
            sb.append(str);
            sb.append(" regs[");
            sb.append(threeRegisterInstruction.getRegisterC());
            sb.append("].d);\n");
            return;
        }
        if (instruction instanceof TwoRegisterInstruction) {
            TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
            if (z) {
                sb.append("    dex2c_set_double(regs[");
                sb.append(twoRegisterInstruction.getRegisterA());
                sb.append("], __builtin_fmod(regs[");
                sb.append(twoRegisterInstruction.getRegisterA());
                sb.append("].d, regs[");
                sb.append(twoRegisterInstruction.getRegisterB());
                sb.append("].d));\n");
                return;
            }
            sb.append("    dex2c_set_double(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("].d ");
            sb.append(str);
            sb.append(" regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].d);\n");
        }
    }

    private static void emitLitInt(StringBuilder sb, Instruction instruction, String str, boolean z) {
        TwoRegisterInstruction twoRegisterInstruction = (TwoRegisterInstruction) instruction;
        int narrowLiteral = ((NarrowLiteralInstruction) instruction).getNarrowLiteral();
        if (z) {
            sb.append("    dex2c_set_int(regs[");
            sb.append(twoRegisterInstruction.getRegisterA());
            sb.append("], (jint)((uint32_t)");
            sb.append(narrowLiteral);
            sb.append(" - (uint32_t)regs[");
            sb.append(twoRegisterInstruction.getRegisterB());
            sb.append("].i));\n");
            return;
        }
        sb.append("    dex2c_set_int(regs[");
        sb.append(twoRegisterInstruction.getRegisterA());
        sb.append("], (jint)((uint32_t)regs[");
        sb.append(twoRegisterInstruction.getRegisterB());
        sb.append("].i ");
        sb.append(str);
        sb.append(" (uint32_t)");
        sb.append(narrowLiteral);
        sb.append("));\n");
    }

    private static void emitJniOnLoad(File file, List<NativeEntry> list, boolean z) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (NativeEntry nativeEntry : list) {
            ((List) linkedHashMap.computeIfAbsent(nativeEntry.classDesc, new Function() { // from class: com.dex2c.plus.engine.Dex2CTranslator$$ExternalSyntheticLambda3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Dex2CTranslator.lambda$emitJniOnLoad$2((String) obj);
                }
            })).add(nativeEntry);
        }
        UnitStringPool unitStringPool = new UnitStringPool(z);
        StringBuilder sb = new StringBuilder(32768);
        for (NativeEntry nativeEntry2 : list) {
            sb.append("extern \"C\" JNIEXPORT void JNICALL ");
            sb.append(nativeEntry2.cFuncName);
            sb.append("();\n");
        }
        sb.append("\nJNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {\n    JNIEnv* env = nullptr;\n    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return JNI_ERR;\n");
        int i = 0;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String findClassName = toFindClassName((String) entry.getKey());
            sb.append("    {\n        jclass c = env->FindClass(");
            sb.append(unitStringPool.ref(findClassName));
            sb.append(");\n        if (env->ExceptionCheck()) {\n            env->ExceptionClear();\n        } else if (c != nullptr) {\n            JNINativeMethod methods_");
            sb.append(i);
            sb.append("[] = {\n");
            for (NativeEntry nativeEntry3 : (List) entry.getValue()) {
                sb.append("                {const_cast<char*>(");
                sb.append(unitStringPool.ref(nativeEntry3.methodName));
                sb.append("), const_cast<char*>(");
                sb.append(unitStringPool.ref(nativeEntry3.jniSig));
                sb.append("), (void*)&");
                sb.append(nativeEntry3.cFuncName);
                sb.append("},\n");
            }
            sb.append("            };\n            env->RegisterNatives(c, methods_");
            sb.append(i);
            sb.append(", ");
            sb.append(((List) entry.getValue()).size());
            sb.append(");\n            if (env->ExceptionCheck()) env->ExceptionClear();\n            env->DeleteLocalRef(c);\n        }\n    }\n");
            i++;
        }
        sb.append("    return JNI_VERSION_1_6;\n}\n");
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file), 65536);
        try {
            bufferedWriter.write("#include \"dex2c_runtime.h\"\n\n");
            unitStringPool.writeDefinitions(bufferedWriter);
            bufferedWriter.write(sb.toString());
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static /* synthetic */ List lambda$emitJniOnLoad$2(String str) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] toModifiedUtf8Bytes(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() + 16);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                byteArrayOutputStream.write(192);
                byteArrayOutputStream.write(128);
            } else if (cCharAt <= 127) {
                byteArrayOutputStream.write(cCharAt);
            } else if (cCharAt <= 2047) {
                byteArrayOutputStream.write(192 | ((cCharAt >> 6) & 31));
                byteArrayOutputStream.write((cCharAt & '?') | 128);
            } else {
                byteArrayOutputStream.write(((cCharAt >> '\f') & 15) | 224);
                byteArrayOutputStream.write(((cCharAt >> 6) & 63) | 128);
                byteArrayOutputStream.write((cCharAt & '?') | 128);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static void writeRuntimeHeader(File file) throws Exception {
        FileWriter fileWriter = new FileWriter(file);
        try {
            fileWriter.write("#pragma once\n#include <jni.h>\n#include <string.h>\n#include <stdint.h>\n\nstruct DexReg {\n    union {\n        jint i;\n        uint32_t u;\n        jfloat f;\n        jlong j;\n        uint64_t uj;\n        jdouble d;\n    };\n    jobject l;\n    bool isObj;\n};\n\nstatic inline void dex2c_set_int(DexReg& r, jint v) {\n    r.j = 0;\n    r.i = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_float(DexReg& r, jfloat v) {\n    r.j = 0;\n    r.f = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_long(DexReg& r, jlong v) {\n    r.j = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_double(DexReg& r, jdouble v) {\n    r.d = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_obj(DexReg& r, jobject obj) {\n    r.j = 0;\n    r.l = obj;\n    r.isObj = (obj != nullptr);\n}\n\nstatic inline bool dex2c_is_zero(const DexReg& r) {\n    return r.isObj ? (r.l == nullptr) : (r.i == 0);\n}\n\nstatic inline bool dex2c_is_eq(JNIEnv* env, const DexReg& a, const DexReg& b) {\n    if (a.isObj || b.isObj) {\n        return env->IsSameObject(a.l, b.l) == JNI_TRUE;\n    }\n    return a.i == b.i;\n}\n\nstatic jobject g_dex2c_class_loader = nullptr;\nstatic jmethodID g_dex2c_for_name_mid = nullptr;\nstatic jclass g_dex2c_class_cls = nullptr;\n\nstatic inline void dex2c_init_classloader(JNIEnv* env, jobject refObj, bool isClassObj) {\n    if (g_dex2c_class_loader != nullptr || refObj == nullptr) return;\n    jclass targetCls = isClassObj ? static_cast<jclass>(env->NewLocalRef(refObj)) : env->GetObjectClass(refObj);\n    if (targetCls == nullptr) { env->ExceptionClear(); return; }\n    jclass classCls = env->FindClass(\"java/lang/Class\");\n    if (classCls != nullptr) {\n        jmethodID getClMid = env->GetMethodID(classCls, \"getClassLoader\", \"()Ljava/lang/ClassLoader;\");\n        jmethodID forNameMid = env->GetStaticMethodID(classCls, \"forName\", \"(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;\");\n        if (!env->ExceptionCheck() && getClMid != nullptr && forNameMid != nullptr) {\n            jobject cl = env->CallObjectMethod(targetCls, getClMid);\n            if (!env->ExceptionCheck() && cl != nullptr) {\n                g_dex2c_class_loader = env->NewGlobalRef(cl);\n                g_dex2c_class_cls = static_cast<jclass>(env->NewGlobalRef(classCls));\n                g_dex2c_for_name_mid = forNameMid;\n                env->DeleteLocalRef(cl);\n            }\n        }\n        env->ExceptionClear();\n        env->DeleteLocalRef(classCls);\n    }\n    env->ExceptionClear();\n    env->DeleteLocalRef(targetCls);\n}\n\nstatic inline jclass dex2c_find_class(JNIEnv* env, const char* clsName) {\n    if (clsName == nullptr || clsName[0] == '\\0') return nullptr;\n    jclass c = env->FindClass(clsName);\n    if (!env->ExceptionCheck() && c != nullptr) return c;\n    env->ExceptionClear();\n    if (g_dex2c_class_loader != nullptr && g_dex2c_class_cls != nullptr && g_dex2c_for_name_mid != nullptr) {\n        char dotted[512];\n        size_t len = strlen(clsName);\n        if (len >= sizeof(dotted)) len = sizeof(dotted) - 1;\n        for (size_t i = 0; i < len; ++i) {\n            dotted[i] = (clsName[i] == '/') ? '.' : clsName[i];\n        }\n        dotted[len] = '\\0';\n        jstring jName = env->NewStringUTF(dotted);\n        if (jName != nullptr) {\n            jclass loaded = static_cast<jclass>(env->CallStaticObjectMethod(g_dex2c_class_cls, g_dex2c_for_name_mid, jName, JNI_FALSE, g_dex2c_class_loader));\n            env->DeleteLocalRef(jName);\n            if (!env->ExceptionCheck() && loaded != nullptr) return loaded;\n            env->ExceptionClear();\n        }\n    }\n    return nullptr;\n}\n\nstatic inline void dex2c_throw_ex(JNIEnv* env, const char* clsName, const char* msg) {\n    jclass c = dex2c_find_class(env, clsName);\n    if (c != nullptr) {\n        env->ThrowNew(c, msg ? msg : \"\");\n        env->DeleteLocalRef(c);\n    }\n}\n\nstatic inline void dex2c_throw(JNIEnv* env, jthrowable t) {\n    if (t == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"throw null\");\n    } else {\n        env->Throw(t);\n    }\n}\n\nstatic inline void dex2c_monitor_enter(JNIEnv* env, jobject obj) {\n    if (obj == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"monitor-enter null\");\n    else env->MonitorEnter(obj);\n}\n\nstatic inline void dex2c_monitor_exit(JNIEnv* env, jobject obj) {\n    if (obj == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"monitor-exit null\");\n    else env->MonitorExit(obj);\n}\n\nstatic inline jint dex2c_instance_of(JNIEnv* env, jobject obj, const char* clsName) {\n    if (obj == nullptr) return 0;\n    jclass c = dex2c_find_class(env, clsName);\n    if (env->ExceptionCheck() || c == nullptr) { env->ExceptionClear(); return 0; }\n    jboolean res = env->IsInstanceOf(obj, c);\n    env->DeleteLocalRef(c);\n    return res == JNI_TRUE ? 1 : 0;\n}\n\nstatic inline void dex2c_check_cast(JNIEnv* env, jobject obj, const char* clsName) {\n    if (obj == nullptr) return;\n    jclass c = dex2c_find_class(env, clsName);\n    if (c == nullptr) return;\n    jboolean ok = env->IsInstanceOf(obj, c);\n    env->DeleteLocalRef(c);\n    if (ok != JNI_TRUE) {\n        dex2c_throw_ex(env, \"java/lang/ClassCastException\", clsName);\n    }\n}\n\nstatic inline jobject dex2c_alloc_object(JNIEnv* env, const char* clsName) {\n    jclass c = dex2c_find_class(env, clsName);\n    if (c == nullptr) return nullptr;\n    jobject obj = env->AllocObject(c);\n    env->DeleteLocalRef(c);\n    return obj;\n}\n\nstatic inline jint dex2c_array_length(JNIEnv* env, jobject arr) {\n    if (arr == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"array-length on null\");\n        return 0;\n    }\n    return env->GetArrayLength(static_cast<jarray>(arr));\n}\n\nstatic inline jobject dex2c_new_array(JNIEnv* env, jint len, const char* arrDesc) {\n    if (len < 0) {\n        dex2c_throw_ex(env, \"java/lang/NegativeArraySizeException\", \"negative size\");\n        return nullptr;\n    }\n    if (arrDesc == nullptr || arrDesc[0] != '[') return nullptr;\n    const char* elem = arrDesc + 1;\n    switch (elem[0]) {\n        case 'Z': return env->NewBooleanArray(len);\n        case 'B': return env->NewByteArray(len);\n        case 'C': return env->NewCharArray(len);\n        case 'S': return env->NewShortArray(len);\n        case 'I': return env->NewIntArray(len);\n        case 'J': return env->NewLongArray(len);\n        case 'F': return env->NewFloatArray(len);\n        case 'D': return env->NewDoubleArray(len);\n        case 'L': {\n            size_t n = strlen(elem);\n            char buf[512];\n            size_t copyLen = (n >= 2 && elem[n - 1] == ';') ? (n - 2) : (n - 1);\n            if (copyLen >= sizeof(buf)) copyLen = sizeof(buf) - 1;\n            memcpy(buf, elem + 1, copyLen);\n            buf[copyLen] = '\\0';\n            jclass ec = dex2c_find_class(env, buf);\n            if (ec == nullptr) return nullptr;\n            jobjectArray oa = env->NewObjectArray(len, ec, nullptr);\n            env->DeleteLocalRef(ec);\n            return oa;\n        }\n        case '[': {\n            jclass ec = dex2c_find_class(env, elem);\n            if (ec == nullptr) return nullptr;\n            jobjectArray oa = env->NewObjectArray(len, ec, nullptr);\n            env->DeleteLocalRef(ec);\n            return oa;\n        }\n        default: return nullptr;\n    }\n}\n\nstatic inline jmethodID dex2c_resolve_super_method(JNIEnv* env, jobject obj, const char* superClsName, const char* refClsName, const char* selfClsName, const char* name, const char* sig, jclass* outTargetCls) {\n    *outTargetCls = nullptr;\n    // 1. Always check direct superClsName FIRST so inherited concrete methods (e.g. AppCompatActivity -> ContextWrapper.getApplicationContext) are resolved instead of abstract base class methods (e.g. Context.getApplicationContext)\n    if (superClsName != nullptr && superClsName[0] != '\\0') {\n        jclass sc = dex2c_find_class(env, superClsName);\n        if (!env->ExceptionCheck() && sc != nullptr) {\n            jmethodID m = env->GetMethodID(sc, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = sc;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(sc);\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    // 2. If superClsName does not have the method (e.g. superClsName is java/lang/Object and invoke-super targets a Java 8+ default interface method like DefaultLifecycleObserver.super.onStart), check refClsName\n    if (refClsName != nullptr && refClsName[0] != '\\0' && (selfClsName == nullptr || strcmp(refClsName, selfClsName) != 0) && (superClsName == nullptr || strcmp(refClsName, superClsName) != 0)) {\n        jclass rc = dex2c_find_class(env, refClsName);\n        if (!env->ExceptionCheck() && rc != nullptr) {\n            jmethodID m = env->GetMethodID(rc, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = rc;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(rc);\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    // 3. Walk runtime superclass chain above selfCls\n    jclass startCls = nullptr;\n    if (selfClsName != nullptr && selfClsName[0] != '\\0') {\n        startCls = dex2c_find_class(env, selfClsName);\n        if (env->ExceptionCheck()) { env->ExceptionClear(); startCls = nullptr; }\n    }\n    if (startCls == nullptr && obj != nullptr) {\n        startCls = env->GetObjectClass(obj);\n    }\n    if (startCls != nullptr) {\n        jclass cur = env->GetSuperclass(startCls);\n        env->DeleteLocalRef(startCls);\n        while (cur != nullptr) {\n            jmethodID m = env->GetMethodID(cur, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = cur;\n                return m;\n            }\n            env->ExceptionClear();\n            jclass next = env->GetSuperclass(cur);\n            env->DeleteLocalRef(cur);\n            cur = next;\n        }\n    }\n    env->ExceptionClear();\n    return nullptr;\n}\n\nstatic inline jclass dex2c_resolve_instance_class(JNIEnv* env, jobject obj, const char* clsName) {\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (!env->ExceptionCheck() && c != nullptr) return c;\n        env->ExceptionClear();\n    }\n    return obj != nullptr ? env->GetObjectClass(obj) : nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_static_method(JNIEnv* env, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    jclass cur = dex2c_find_class(env, clsName);\n    while (cur != nullptr) {\n        jmethodID m = env->GetStaticMethodID(cur, name, sig);\n        if (!env->ExceptionCheck() && m != nullptr) {\n            *outCls = cur;\n            return m;\n        }\n        env->ExceptionClear();\n        jclass next = env->GetSuperclass(cur);\n        env->DeleteLocalRef(cur);\n        cur = next;\n    }\n    return nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_direct_method(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (c != nullptr) {\n            jmethodID m = env->GetMethodID(c, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outCls = c;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(c);\n        }\n    }\n    if (obj != nullptr) {\n        jclass cur = env->GetObjectClass(obj);\n        while (cur != nullptr) {\n            jmethodID m = env->GetMethodID(cur, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outCls = cur;\n                return m;\n            }\n            env->ExceptionClear();\n            jclass next = env->GetSuperclass(cur);\n            env->DeleteLocalRef(cur);\n            cur = next;\n        }\n    }\n    return nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_virtual_method(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig) {\n    if (obj != nullptr) {\n        jclass dc = env->GetObjectClass(obj);\n        if (dc != nullptr) {\n            jmethodID m = env->GetMethodID(dc, name, sig);\n            env->DeleteLocalRef(dc);\n            if (!env->ExceptionCheck() && m != nullptr) return m;\n            env->ExceptionClear();\n        }\n    }\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (!env->ExceptionCheck() && c != nullptr) {\n            jmethodID m = env->GetMethodID(c, name, sig);\n            env->DeleteLocalRef(c);\n            if (!env->ExceptionCheck() && m != nullptr) return m;\n            env->ExceptionClear();\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    return nullptr;\n}\n\nstatic inline jfieldID dex2c_resolve_field(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    if (obj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null field target\");\n        return nullptr;\n    }\n    jclass c = dex2c_resolve_instance_class(env, obj, clsName);\n    if (c == nullptr) return nullptr;\n    jfieldID fid = env->GetFieldID(c, name, sig);\n    if (env->ExceptionCheck() || fid == nullptr) {\n        env->ExceptionClear();\n        env->DeleteLocalRef(c);\n        c = env->GetObjectClass(obj);\n        if (c == nullptr) return nullptr;\n        fid = env->GetFieldID(c, name, sig);\n        if (env->ExceptionCheck() || fid == nullptr) {\n            env->ExceptionClear();\n            env->DeleteLocalRef(c);\n            return nullptr;\n        }\n    }\n    *outCls = c;\n    return fid;\n}\n\nstatic inline jint dex2c_iget_int_like(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0;\n    jint v = 0;\n    switch (sig[0]) {\n        case 'Z': v = (env->GetBooleanField(obj, fid) == JNI_TRUE) ? 1 : 0; break;\n        case 'B': v = (jint)env->GetByteField(obj, fid); break;\n        case 'C': v = (jint)env->GetCharField(obj, fid); break;\n        case 'S': v = (jint)env->GetShortField(obj, fid); break;\n        default:  v = env->GetIntField(obj, fid); break;\n    }\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jfloat dex2c_iget_float(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0f;\n    jfloat v = env->GetFloatField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jlong dex2c_iget_long(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0LL;\n    jlong v = env->GetLongField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jdouble dex2c_iget_double(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0;\n    jdouble v = env->GetDoubleField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jobject dex2c_iget_object(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return nullptr;\n    jobject v = env->GetObjectField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline void dex2c_iput_int_like(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jint val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    switch (sig[0]) {\n        case 'Z': env->SetBooleanField(obj, fid, val != 0 ? JNI_TRUE : JNI_FALSE); break;\n        case 'B': env->SetByteField(obj, fid, (jbyte)val); break;\n        case 'C': env->SetCharField(obj, fid, (jchar)val); break;\n        case 'S': env->SetShortField(obj, fid, (jshort)val); break;\n        default:  env->SetIntField(obj, fid, val); break;\n    }\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_float(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jfloat val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetFloatField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_long(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jlong val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetLongField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_double(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jdouble val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetDoubleField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_object(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jobject val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetObjectField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline jfieldID dex2c_resolve_static_field(JNIEnv* env, const char* cls, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    jclass cur = dex2c_find_class(env, cls);\n    while (cur != nullptr) {\n        jfieldID fid = env->GetStaticFieldID(cur, name, sig);\n        if (!env->ExceptionCheck() && fid != nullptr) {\n            *outCls = cur;\n            return fid;\n        }\n        env->ExceptionClear();\n        jclass next = env->GetSuperclass(cur);\n        env->DeleteLocalRef(cur);\n        cur = next;\n    }\n    return nullptr;\n}\n\nstatic inline jint dex2c_sget_int_like(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0;\n    jint v = 0;\n    switch (sig[0]) {\n        case 'Z': v = (env->GetStaticBooleanField(c, fid) == JNI_TRUE) ? 1 : 0; break;\n        case 'B': v = (jint)env->GetStaticByteField(c, fid); break;\n        case 'C': v = (jint)env->GetStaticCharField(c, fid); break;\n        case 'S': v = (jint)env->GetStaticShortField(c, fid); break;\n        default:  v = env->GetStaticIntField(c, fid); break;\n    }\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jfloat dex2c_sget_float(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0f;\n    jfloat v = env->GetStaticFloatField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jlong dex2c_sget_long(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0LL;\n    jlong v = env->GetStaticLongField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jdouble dex2c_sget_double(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0;\n    jdouble v = env->GetStaticDoubleField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jobject dex2c_sget_object(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return nullptr;\n    jobject v = env->GetStaticObjectField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline void dex2c_sput_int_like(JNIEnv* env, const char* cls, const char* name, const char* sig, jint val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    switch (sig[0]) {\n        case 'Z': env->SetStaticBooleanField(c, fid, val != 0 ? JNI_TRUE : JNI_FALSE); break;\n        case 'B': env->SetStaticByteField(c, fid, (jbyte)val); break;\n        case 'C': env->SetStaticCharField(c, fid, (jchar)val); break;\n        case 'S': env->SetStaticShortField(c, fid, (jshort)val); break;\n        default:  env->SetStaticIntField(c, fid, val); break;\n    }\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_float(JNIEnv* env, const char* cls, const char* name, const char* sig, jfloat val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticFloatField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_long(JNIEnv* env, const char* cls, const char* name, const char* sig, jlong val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticLongField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_double(JNIEnv* env, const char* cls, const char* name, const char* sig, jdouble val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticDoubleField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_object(JNIEnv* env, const char* cls, const char* name, const char* sig, jobject val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticObjectField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline bool dex2c_check_array_bounds(JNIEnv* env, jobject arrObj, jint idx) {\n    if (arrObj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array\");\n        return false;\n    }\n    jsize len = env->GetArrayLength(static_cast<jarray>(arrObj));\n    if (idx < 0 || idx >= len) {\n        dex2c_throw_ex(env, \"java/lang/ArrayIndexOutOfBoundsException\", \"index out of bounds\");\n        return false;\n    }\n    return true;\n}\n\nstatic inline jint dex2c_aget_32(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jint val = static_cast<jint*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return val;\n}\n\nstatic inline jlong dex2c_aget_64(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0LL;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0LL;\n    jlong val = static_cast<jlong*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return val;\n}\n\nstatic inline jint dex2c_aget_boolean(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    uint8_t v = static_cast<uint8_t*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return v != 0 ? 1 : 0;\n}\n\nstatic inline jint dex2c_aget_byte(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jbyte v = static_cast<jbyte*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jint dex2c_aget_char(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jchar v = static_cast<jchar*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jint dex2c_aget_short(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jshort v = static_cast<jshort*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jobject dex2c_aget_object(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return nullptr;\n    return env->GetObjectArrayElement(static_cast<jobjectArray>(arrObj), idx);\n}\n\nstatic inline void dex2c_aput_32(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jint*>(raw)[idx] = val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_64(JNIEnv* env, jobject arrObj, jint idx, jlong val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jlong*>(raw)[idx] = val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_boolean(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<uint8_t*>(raw)[idx] = (val != 0 ? 1 : 0);\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_byte(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jbyte*>(raw)[idx] = (jbyte)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_char(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jchar*>(raw)[idx] = (jchar)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_short(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jshort*>(raw)[idx] = (jshort)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_fill_array_data(JNIEnv* env, jobject arrObj, const void* data, jsize elemCount, jsize elemWidth) {\n    if (arrObj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array in fill-array-data\");\n        return;\n    }\n    jarray arr = static_cast<jarray>(arrObj);\n    jsize len = env->GetArrayLength(arr);\n    if (elemCount > len) {\n        dex2c_throw_ex(env, \"java/lang/ArrayIndexOutOfBoundsException\", \"fill-array-data overflow\");\n        return;\n    }\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    memcpy(raw, data, (size_t)elemCount * (size_t)elemWidth);\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_object(JNIEnv* env, jobject arrObj, jint idx, jobject val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    env->SetObjectArrayElement(static_cast<jobjectArray>(arrObj), idx, val);\n}\n\nstatic inline jint dex2c_div_int(JNIEnv* env, jint a, jint b) {\n    if (b == 0) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0; }\n    if (a == INT32_MIN && b == -1) return INT32_MIN;\n    return a / b;\n}\n\nstatic inline jint dex2c_rem_int(JNIEnv* env, jint a, jint b) {\n    if (b == 0) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0; }\n    if (a == INT32_MIN && b == -1) return 0;\n    return a % b;\n}\n\nstatic inline jlong dex2c_div_long(JNIEnv* env, jlong a, jlong b) {\n    if (b == 0LL) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0LL; }\n    if (a == INT64_MIN && b == -1LL) return INT64_MIN;\n    return a / b;\n}\n\nstatic inline jlong dex2c_rem_long(JNIEnv* env, jlong a, jlong b) {\n    if (b == 0LL) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0LL; }\n    if (a == INT64_MIN && b == -1LL) return 0LL;\n    return a % b;\n}\n\nstatic inline jint dex2c_cmp_float(jfloat a, jfloat b, jint nanBias) {\n    if ((a != a) || (b != b)) return nanBias;\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_cmp_double(jdouble a, jdouble b, jint nanBias) {\n    if ((a != a) || (b != b)) return nanBias;\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_cmp_long(jlong a, jlong b) {\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_float_to_int(jfloat v) {\n    if ((v != v)) return 0;\n    if (v >= (jfloat)INT32_MAX) return INT32_MAX;\n    if (v <= (jfloat)INT32_MIN) return INT32_MIN;\n    return (jint)v;\n}\n\nstatic inline jlong dex2c_float_to_long(jfloat v) {\n    if ((v != v)) return 0LL;\n    if (v >= (jfloat)INT64_MAX) return INT64_MAX;\n    if (v <= (jfloat)INT64_MIN) return INT64_MIN;\n    return (jlong)v;\n}\n\nstatic inline jint dex2c_double_to_int(jdouble v) {\n    if ((v != v)) return 0;\n    if (v >= (jdouble)INT32_MAX) return INT32_MAX;\n    if (v <= (jdouble)INT32_MIN) return INT32_MIN;\n    return (jint)v;\n}\n\nstatic inline jlong dex2c_double_to_long(jdouble v) {\n    if ((v != v)) return 0LL;\n    if (v >= (jdouble)INT64_MAX) return INT64_MAX;\n    if (v <= (jdouble)INT64_MIN) return INT64_MIN;\n    return (jlong)v;\n}\n");
            fileWriter.close();
        } catch (Throwable th) {
            try {
                fileWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String jniCallSuffix(String str) {
        str.hashCode();
        switch (str) {
            case "B":
                return "Byte";
            case "C":
                return "Char";
            case "D":
                return "Double";
            case "F":
                return "Float";
            case "I":
                return "Int";
            case "J":
                return "Long";
            case "S":
                return "Short";
            case "V":
                return "Void";
            case "Z":
                return "Boolean";
            default:
                return "Object";
        }
    }

    private static String toFindClassName(String str) {
        if (str == null) {
            return "";
        }
        return (str.startsWith("L") && str.endsWith(";") && str.length() > 2) ? str.substring(1, str.length() - 1) : str;
    }

    private static String toJniType(String str) {
        str.hashCode();
        switch (str) {
            case "B":
                return "jbyte";
            case "C":
                return "jchar";
            case "D":
                return "jdouble";
            case "F":
                return "jfloat";
            case "I":
                return "jint";
            case "J":
                return "jlong";
            case "S":
                return "jshort";
            case "V":
                return "void";
            case "Z":
                return "jboolean";
            case "Ljava/lang/String;":
                return "jstring";
            case "Ljava/lang/Class;":
                return "jclass";
            default:
                return "jobject";
        }
    }

    private static String mangleJniIdentifier(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '/') {
                sb.append('_');
            } else if (cCharAt == '_') {
                sb.append("_1");
            } else if (cCharAt == ';') {
                sb.append("_2");
            } else if (cCharAt == '[') {
                sb.append("_3");
            } else if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < '0' || cCharAt > '9'))) {
                sb.append(String.format(Locale.US, "_0%04x", Integer.valueOf(cCharAt)));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static String buildStandardJniName(String str, Method method, boolean z) {
        String findClassName = toFindClassName(str);
        StringBuilder sb = new StringBuilder("Java_");
        sb.append(mangleJniIdentifier(findClassName));
        sb.append('_');
        sb.append(mangleJniIdentifier(method.getName()));
        if (z) {
            sb.append("__");
            Iterator<? extends MethodParameter> it = method.getParameters().iterator();
            while (it.hasNext()) {
                sb.append(mangleJniIdentifier(it.next().getType()));
            }
        }
        return sb.toString();
    }

    private static String buildJniSignature(Method method) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<? extends MethodParameter> it = method.getParameters().iterator();
        while (it.hasNext()) {
            sb.append(it.next().getType());
        }
        sb.append(")");
        sb.append(method.getReturnType());
        return sb.toString();
    }

    private static String buildJniSignature(MethodReference methodReference) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<? extends CharSequence> it = methodReference.getParameterTypes().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        sb.append(")");
        sb.append(methodReference.getReturnType());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String escapeCpp(String str) {
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(str.length() + 16);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                sb.append("\\300\\200");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt == '\\') {
                sb.append("\\\\");
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt >= ' ' && cCharAt <= '~') {
                sb.append(cCharAt);
            } else if (cCharAt <= 127) {
                sb.append(String.format(Locale.US, "\\%03o", Integer.valueOf(cCharAt)));
            } else if (cCharAt <= 2047) {
                sb.append(String.format(Locale.US, "\\%03o\\%03o", Integer.valueOf(((cCharAt >> 6) & 31) | 192), Integer.valueOf((cCharAt & '?') | 128)));
            } else {
                sb.append(String.format(Locale.US, "\\%03o\\%03o\\%03o", Integer.valueOf(((cCharAt >> '\f') & 15) | 224), Integer.valueOf(((cCharAt >> 6) & 63) | 128), Integer.valueOf((cCharAt & '?') | 128)));
            }
        }
        return sb.toString();
    }
}
