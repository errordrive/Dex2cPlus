package com.dex2c.plus.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProjectState {
    public static final String DEFAULT_LIB_NAME = "native-lib";
    public static final String DEFAULT_LOADER_CLASS = "Loader";
    private static final ProjectState INSTANCE = new ProjectState();
    private static final String KEY_ARM32 = "opt_arm32";
    private static final String KEY_ARM64 = "opt_arm64";
    private static final String KEY_CUSTOM_LIB_NAME = "opt_custom_lib_name";
    private static final String KEY_CUSTOM_LOADER_CLASS = "opt_custom_loader_class";
    private static final String KEY_ENV_ENCRYPTION = "opt_env_encryption";
    private static final String KEY_NDK_LOCAL_PATH = "opt_ndk_local_path";
    private static final String KEY_OUTPUT_LOCATION = "opt_output_location";
    private static final String KEY_PARALLEL = "opt_parallel_build";
    private static final String KEY_REG_NATIVES = "opt_reg_natives";
    private static final String KEY_REWRITE_DEX = "opt_rewrite_dex";
    private static final String KEY_THEME_MODE = "ui_theme_mode";
    private static final String KEY_TYPE_BRIDGE = "opt_type_bridge";
    private static final String KEY_TYPE_PRIVATE = "opt_type_private";
    private static final String KEY_TYPE_STATIC = "opt_type_static";
    private static final String KEY_TYPE_SYNCHRONIZED = "opt_type_synchronized";
    private static final String KEY_TYPE_SYNTHETIC = "opt_type_synthetic";
    private static final String KEY_TYPE_VARARGS = "opt_type_varargs";
    private static final String KEY_TYPE_VIRTUAL = "opt_type_virtual";
    private static final String KEY_X86 = "opt_x86";
    private static final String KEY_X86_64 = "opt_x86_64";
    public static final int OUTPUT_DIR_APK_FOLDER = 1;
    public static final int OUTPUT_DIR_DEFAULT = 0;
    private static final String PREFS_NAME = "dex2c_prefs";
    public static final int THEME_DARK = 1;
    public static final int THEME_LIGHT = 0;
    public static final int THEME_SYSTEM = 2;
    public File cachedApkFile;
    public File lastOutputBundleZip;
    public File selectedApkSourceFile;
    public Uri selectedApkUri;
    public String selectedApkName = TypedValues.AttributesType.S_TARGET;
    public String apkDisplayLabel = "";
    public String apkVersionName = "";
    public long apkVersionCode = 0;
    public int dexCount = 0;
    public final List<DexClassItem> allClasses = new ArrayList();
    public int outputLocationMode = 0;
    public boolean parallelBuild = true;
    public boolean arm32 = true;
    public boolean arm64 = true;
    public boolean x86 = true;
    public boolean x86_64 = true;
    public String customLibName = DEFAULT_LIB_NAME;
    public String customLoaderClass = DEFAULT_LOADER_CLASS;
    public String ndkLocalPath = "";
    public boolean registerNatives = true;
    public boolean envEncryption = true;
    public boolean rewriteDex = true;
    public boolean typeSynthetic = true;
    public boolean typeBridge = true;
    public boolean typeStatic = true;
    public boolean typeVirtual = true;
    public boolean typePrivate = true;
    public boolean typeSynchronized = true;
    public boolean typeVarargs = true;
    public boolean promptedNdkStartup = false;

    public static ProjectState get() {
        return INSTANCE;
    }

    public void clearLoadedApkCacheState() {
        this.selectedApkUri = null;
        this.cachedApkFile = null;
        this.selectedApkName = TypedValues.AttributesType.S_TARGET;
        this.apkDisplayLabel = "";
        this.apkVersionName = "";
        this.apkVersionCode = 0L;
        this.dexCount = 0;
        this.allClasses.clear();
    }

    public void loadPrefs(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0);
        this.outputLocationMode = sharedPreferences.getInt(KEY_OUTPUT_LOCATION, 0);
        this.parallelBuild = sharedPreferences.getBoolean(KEY_PARALLEL, true);
        this.arm32 = sharedPreferences.getBoolean(KEY_ARM32, true);
        this.arm64 = sharedPreferences.getBoolean(KEY_ARM64, true);
        this.x86 = sharedPreferences.getBoolean(KEY_X86, true);
        boolean z = sharedPreferences.getBoolean(KEY_X86_64, true);
        this.x86_64 = z;
        if (!this.arm32 && !this.arm64 && !this.x86 && !z) {
            this.arm64 = true;
        }
        this.customLibName = sanitizeLibraryName(sharedPreferences.getString(KEY_CUSTOM_LIB_NAME, DEFAULT_LIB_NAME));
        this.customLoaderClass = sanitizeLoaderClassName(sharedPreferences.getString(KEY_CUSTOM_LOADER_CLASS, DEFAULT_LOADER_CLASS));
        this.ndkLocalPath = sharedPreferences.getString(KEY_NDK_LOCAL_PATH, "");
        this.registerNatives = sharedPreferences.getBoolean(KEY_REG_NATIVES, true);
        this.envEncryption = sharedPreferences.getBoolean(KEY_ENV_ENCRYPTION, true);
        this.rewriteDex = sharedPreferences.getBoolean(KEY_REWRITE_DEX, true);
        this.typeSynthetic = sharedPreferences.getBoolean(KEY_TYPE_SYNTHETIC, true);
        this.typeBridge = sharedPreferences.getBoolean(KEY_TYPE_BRIDGE, true);
        this.typeStatic = sharedPreferences.getBoolean(KEY_TYPE_STATIC, true);
        this.typeVirtual = sharedPreferences.getBoolean(KEY_TYPE_VIRTUAL, true);
        this.typePrivate = sharedPreferences.getBoolean(KEY_TYPE_PRIVATE, true);
        this.typeSynchronized = sharedPreferences.getBoolean(KEY_TYPE_SYNCHRONIZED, true);
        this.typeVarargs = sharedPreferences.getBoolean(KEY_TYPE_VARARGS, true);
    }

    public void savePrefs(Context context) {
        this.customLibName = sanitizeLibraryName(this.customLibName);
        this.customLoaderClass = sanitizeLoaderClassName(this.customLoaderClass);
        if (!this.arm32 && !this.arm64 && !this.x86 && !this.x86_64) {
            this.arm64 = true;
        }
        SharedPreferences.Editor editorPutString = context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0).edit().putInt(KEY_OUTPUT_LOCATION, this.outputLocationMode).putBoolean(KEY_PARALLEL, this.parallelBuild).putBoolean(KEY_ARM32, this.arm32).putBoolean(KEY_ARM64, this.arm64).putBoolean(KEY_X86, this.x86).putBoolean(KEY_X86_64, this.x86_64).putString(KEY_CUSTOM_LIB_NAME, this.customLibName).putString(KEY_CUSTOM_LOADER_CLASS, this.customLoaderClass);
        String str = this.ndkLocalPath;
        editorPutString.putString(KEY_NDK_LOCAL_PATH, str != null ? str.trim() : "").putBoolean(KEY_REG_NATIVES, this.registerNatives).putBoolean(KEY_ENV_ENCRYPTION, this.envEncryption).putBoolean(KEY_REWRITE_DEX, this.rewriteDex).putBoolean(KEY_TYPE_SYNTHETIC, this.typeSynthetic).putBoolean(KEY_TYPE_BRIDGE, this.typeBridge).putBoolean(KEY_TYPE_STATIC, this.typeStatic).putBoolean(KEY_TYPE_VIRTUAL, this.typeVirtual).putBoolean(KEY_TYPE_PRIVATE, this.typePrivate).putBoolean(KEY_TYPE_SYNCHRONIZED, this.typeSynchronized).putBoolean(KEY_TYPE_VARARGS, this.typeVarargs).apply();
    }

    public String getOutputSelectionSummary() {
        if (this.outputLocationMode == 1) {
            return "Selected APK Folder";
        }
        return "Default (Dex2cPlus Folder)";
    }

    public static String sanitizeLibraryName(String str) {
        if (str == null) {
            return DEFAULT_LIB_NAME;
        }
        String strTrim = str.trim();
        if (strTrim.endsWith(".so") && strTrim.length() > 3) {
            strTrim = strTrim.substring(0, strTrim.length() - 3).trim();
        }
        if (strTrim.startsWith("lib") && strTrim.length() > 3 && !strTrim.equalsIgnoreCase("lib")) {
            strTrim = strTrim.substring(3).trim();
        }
        String strReplaceAll = strTrim.replaceAll("[^a-zA-Z0-9_\\-]", "_");
        return strReplaceAll.isEmpty() ? DEFAULT_LIB_NAME : strReplaceAll;
    }

    public static String sanitizeLoaderClassName(String str) {
        if (str == null) {
            return DEFAULT_LOADER_CLASS;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("L") && strTrim.endsWith(";") && strTrim.length() > 2) {
            strTrim = strTrim.substring(1, strTrim.length() - 1);
        }
        if (strTrim.endsWith(".class") && strTrim.length() > 6) {
            strTrim = strTrim.substring(0, strTrim.length() - 6);
        }
        if (strTrim.endsWith(".java") && strTrim.length() > 5) {
            strTrim = strTrim.substring(0, strTrim.length() - 5);
        }
        String strTrim2 = strTrim.replace('/', '.').trim();
        while (strTrim2.startsWith(".")) {
            strTrim2 = strTrim2.substring(1);
        }
        while (strTrim2.endsWith(".")) {
            strTrim2 = strTrim2.substring(0, strTrim2.length() - 1);
        }
        if (strTrim2.isEmpty()) {
            return DEFAULT_LOADER_CLASS;
        }
        String[] strArrSplit = strTrim2.split("\\.");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            String strReplaceAll = str2.replaceAll("[^a-zA-Z0-9_$]", "");
            if (!strReplaceAll.isEmpty()) {
                if (Character.isDigit(strReplaceAll.charAt(0))) {
                    strReplaceAll = "_" + strReplaceAll;
                }
                if (sb.length() > 0) {
                    sb.append('.');
                }
                sb.append(strReplaceAll);
            }
        }
        return sb.length() == 0 ? DEFAULT_LOADER_CLASS : sb.toString();
    }

    public String getLoaderClassDescriptor() {
        return "L" + sanitizeLoaderClassName(this.customLoaderClass).replace('.', '/') + ";";
    }

    public String getSoFileName() {
        return "lib" + sanitizeLibraryName(this.customLibName) + ".so";
    }

    public String getAbisSummary() {
        if (this.arm32 && this.arm64 && this.x86 && this.x86_64) {
            return "all";
        }
        ArrayList arrayList = new ArrayList();
        if (this.arm32) {
            arrayList.add("armeabi-v7a");
        }
        if (this.arm64) {
            arrayList.add("arm64-v8a");
        }
        if (this.x86) {
            arrayList.add("x86");
        }
        if (this.x86_64) {
            arrayList.add("x86_64");
        }
        if (arrayList.isEmpty()) {
            return "arm64-v8a";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append((String) arrayList.get(i));
        }
        return sb.toString();
    }

    public String getMethodTypesSummary() {
        if (this.typeSynthetic && this.typeBridge && this.typeStatic && this.typeVirtual && this.typePrivate && this.typeSynchronized && this.typeVarargs) {
            return "all (synthetic, bridge, static, virtual, private, synchronized, varargs)";
        }
        ArrayList arrayList = new ArrayList();
        if (this.typeSynthetic) {
            arrayList.add("synthetic");
        }
        if (this.typeBridge) {
            arrayList.add("bridge");
        }
        if (this.typeStatic) {
            arrayList.add("static");
        }
        if (this.typeVirtual) {
            arrayList.add("virtual");
        }
        if (this.typePrivate) {
            arrayList.add("private");
        }
        if (this.typeSynchronized) {
            arrayList.add("synchronized");
        }
        if (this.typeVarargs) {
            arrayList.add("varargs");
        }
        if (arrayList.isEmpty()) {
            return "none";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append((String) arrayList.get(i));
        }
        return sb.toString();
    }

    public static int getThemeMode(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0).getInt(KEY_THEME_MODE, 2);
    }

    public static void setThemeMode(Context context, int i) {
        context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0).edit().putInt(KEY_THEME_MODE, i).apply();
        applyThemeMode(i);
    }

    public static void applyThemeMode(int i) {
        if (i == 0) {
            AppCompatDelegate.setDefaultNightMode(1);
        } else if (i == 1) {
            AppCompatDelegate.setDefaultNightMode(2);
        } else {
            AppCompatDelegate.setDefaultNightMode(-1);
        }
    }

    public static boolean isDarkMode(Context context) {
        int themeMode = getThemeMode(context);
        if (themeMode == 1) {
            return true;
        }
        return themeMode != 0 && (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public int getSelectedClassCount() {
        int size = this.allClasses.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.allClasses.get(i2).selected) {
                i++;
            }
        }
        return i;
    }

    public List<DexClassItem> getSelectedClasses() {
        ArrayList arrayList = new ArrayList();
        int size = this.allClasses.size();
        for (int i = 0; i < size; i++) {
            DexClassItem dexClassItem = this.allClasses.get(i);
            if (dexClassItem.selected) {
                arrayList.add(dexClassItem);
            }
        }
        return arrayList;
    }
}
