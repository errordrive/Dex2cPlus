package com.dex2c.plus.engine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.Method;
import com.dex2c.plus.StorageHelper;
import com.dex2c.plus.model.DexClassItem;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class ApkDexManager {
    private static final int STREAM_BUF_SIZE = 65536;

    public static class ApkLoadResult {
        public String appLabel;
        public File cachedApk;
        public final List<DexClassItem> classes = new ArrayList();
        public int dexCount;
        public String displayName;
        public long versionCode;
        public String versionName;
    }

    public static ApkLoadResult loadApk(Context context, File file) throws Exception {
        StorageHelper.cleanStaleDexCache(context);
        try {
            FastZipModifier.sanitizeZipFakeEncryptionNative(file.getAbsolutePath());
        } catch (Throwable unused) {
        }
        ApkLoadResult apkLoadResult = new ApkLoadResult();
        apkLoadResult.displayName = file.getName();
        apkLoadResult.cachedApk = file;
        extractPackageMeta(context, file, apkLoadResult);
        parseDexClassesStreaming(context, file, apkLoadResult);
        return apkLoadResult;
    }

    public static ApkLoadResult loadApk(Context context, Uri uri) throws Exception {
        StorageHelper.cleanStaleDexCache(context);
        ApkLoadResult apkLoadResult = new ApkLoadResult();
        apkLoadResult.displayName = resolveName(context, uri);
        File file = new File(context.getCacheDir(), "target_input.apk");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getContentResolver().openInputStream(uri), 65536);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 65536);
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, i);
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
                bufferedOutputStream.close();
                bufferedInputStream.close();
                try {
                    FastZipModifier.sanitizeZipFakeEncryptionNative(file.getAbsolutePath());
                } catch (Throwable unused) {
                }
                apkLoadResult.cachedApk = file;
                extractPackageMeta(context, file, apkLoadResult);
                parseDexClassesStreaming(context, file, apkLoadResult);
                return apkLoadResult;
            } catch (Throwable th2) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            bufferedInputStream.close();
            throw th4;
        }
    }

    private static void extractPackageMeta(Context context, File file, ApkLoadResult apkLoadResult) {
        apkLoadResult.appLabel = apkLoadResult.displayName;
        apkLoadResult.versionName = "1.0";
        apkLoadResult.versionCode = 1L;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 0);
            if (packageArchiveInfo != null) {
                if (packageArchiveInfo.versionName != null && !packageArchiveInfo.versionName.isEmpty()) {
                    apkLoadResult.versionName = packageArchiveInfo.versionName;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    apkLoadResult.versionCode = packageArchiveInfo.getLongVersionCode();
                } else {
                    apkLoadResult.versionCode = packageArchiveInfo.versionCode;
                }
                ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                if (applicationInfo != null) {
                    applicationInfo.sourceDir = file.getAbsolutePath();
                    applicationInfo.publicSourceDir = file.getAbsolutePath();
                    CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                    if (applicationLabel == null || applicationLabel.length() <= 0) {
                        return;
                    }
                    apkLoadResult.appLabel = applicationLabel.toString();
                }
            }
        } catch (Exception unused) {
        }
    }

    public static Drawable loadApkIcon(Context context, File file) {
        if (context != null && file != null && file.exists()) {
            try {
                PackageManager packageManager = context.getPackageManager();
                PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 0);
                if (packageArchiveInfo != null && packageArchiveInfo.applicationInfo != null) {
                    ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                    applicationInfo.sourceDir = file.getAbsolutePath();
                    applicationInfo.publicSourceDir = file.getAbsolutePath();
                    return packageManager.getApplicationIcon(applicationInfo);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static void parseDexClassesStreaming(Context context, File file, ApkLoadResult apkLoadResult) throws Exception {
        DexBackedDexFile dexBackedDexFileLoadDexFile;
        ZipFile zipFile = new ZipFile(file);
        try {
            ArrayList<String> arrayList = new ArrayList();
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                String name = enumerationEntries.nextElement().getName();
                if (name.matches("classes\\d*\\.dex")) {
                    arrayList.add(name);
                }
            }
            Collections.sort(arrayList, new Comparator() { // from class: com.dex2c.plus.engine.ApkDexManager$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ApkDexManager.lambda$parseDexClassesStreaming$0((String) obj, (String) obj2);
                }
            });
            byte[] bArr = new byte[65536];
            for (String str : arrayList) {
                ZipEntry entry = zipFile.getEntry(str);
                if (entry != null) {
                    apkLoadResult.dexCount++;
                    File file2 = new File(context.getCacheDir(), "scan_" + str);
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry), 65536);
                        try {
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), 65536);
                            while (true) {
                                try {
                                    int i = bufferedInputStream.read(bArr);
                                    if (i <= 0) {
                                        break;
                                    } else {
                                        bufferedOutputStream.write(bArr, 0, i);
                                    }
                                } catch (Throwable th) {
                                    try {
                                        bufferedOutputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                                try {
                                    bufferedInputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th;
                            }
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            try {
                                dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file2, (Opcodes) null);
                            } catch (Exception unused) {
                                dexBackedDexFileLoadDexFile = DexFileFactory.loadDexFile(file2, Opcodes.getDefault());
                            }
                            for (ClassDef classDef : dexBackedDexFileLoadDexFile.getClasses()) {
                                Iterator<? extends Method> it = classDef.getMethods().iterator();
                                int i2 = 0;
                                while (it.hasNext()) {
                                    it.next();
                                    i2++;
                                }
                                apkLoadResult.classes.add(new DexClassItem(str, classDef.getType(), i2));
                            }
                            if (file2.exists()) {
                                file2.delete();
                            }
                        } catch (Throwable th4) {
                            bufferedInputStream.close();
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        if (file2.exists()) {
                            file2.delete();
                        }
                        throw th5;
                    }
                }
            }
            zipFile.close();
        } catch (Throwable th6) {
            try {
                zipFile.close();
            } catch (Throwable th7) {
                th6.addSuppressed(th7);
            }
            throw th6;
        }
    }

    static /* synthetic */ int lambda$parseDexClassesStreaming$0(String str, String str2) {
        if ("classes.dex".equals(str)) {
            return -1;
        }
        if ("classes.dex".equals(str2)) {
            return 1;
        }
        return str.compareTo(str2);
    }

    public static boolean extractSingleDexToFile(File file, String str, File file2) {
        if (file != null && file.exists()) {
            byte[] bArrExtractFileFromZipNative = FastZipModifier.extractFileFromZipNative(file.getAbsolutePath(), str);
            if (bArrExtractFileFromZipNative != null && bArrExtractFileFromZipNative.length > 0 && FastZipModifier.writeBytesNative(file2.getAbsolutePath(), bArrExtractFileFromZipNative)) {
                return file2.exists() && file2.length() > 0;
            }
            try {
                ZipFile zipFile = new ZipFile(file);
                try {
                    ZipEntry entry = zipFile.getEntry(str);
                    if (entry != null) {
                        byte[] bArr = new byte[65536];
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry), 65536);
                        try {
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), 65536);
                            while (true) {
                                try {
                                    int i = bufferedInputStream.read(bArr);
                                    if (i <= 0) {
                                        break;
                                    }
                                    bufferedOutputStream.write(bArr, 0, i);
                                } catch (Throwable th) {
                                    try {
                                        bufferedOutputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                                try {
                                    bufferedInputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th;
                            }
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            boolean z = file2.exists() && file2.length() > 0;
                            zipFile.close();
                            return z;
                        } catch (Throwable th4) {
                            bufferedInputStream.close();
                            throw th4;
                        }
                    }
                    zipFile.close();
                    return false;
                } catch (Throwable th5) {
                    try {
                        zipFile.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static String resolveName(Context context, Uri uri) {
        int columnIndex;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) >= 0) {
                        String string = cursorQuery.getString(columnIndex);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    if (cursorQuery == null) {
                        throw th;
                    }
                    try {
                        cursorQuery.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
                return "selected.apk";
            }
            return "selected.apk";
        } catch (Exception unused) {
            return "selected.apk";
        }
    }
}
