package com.dex2c.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.dex2c.plus.engine.FastZipModifier;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class StorageHelper {
    public static final int REQ_STORAGE = 1001;

    public static boolean hasStoragePermission(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static void requestStoragePermission(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + activity.getPackageName()));
                activity.startActivity(intent);
                return;
            } catch (Exception unused) {
                activity.startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
                return;
            }
        }
        ActivityCompat.requestPermissions(activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1001);
    }

    public static File getDex2cPlusOutputDir(Context context) {
        if (hasStoragePermission(context)) {
            File file = new File(Environment.getExternalStorageDirectory(), "Dex2cPlus");
            if (file.exists() || file.mkdirs()) {
                return file;
            }
        }
        File file2 = new File(context.getExternalFilesDir(null), "Dex2cPlus");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }

    public static void cleanBuildWorkDir(Context context) {
        File[] fileArrListFiles;
        if (context == null) {
            return;
        }
        deleteRecursive(new File(context.getFilesDir(), "dex2c_work"));
        File cacheDir = context.getCacheDir();
        if (cacheDir == null || !cacheDir.exists() || (fileArrListFiles = cacheDir.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            String name = file.getName();
            if (!"target_input.apk".equals(name) && !name.matches("classes\\d*\\.dex")) {
                deleteRecursive(file);
            }
        }
    }

    public static void cleanAllBuildAndOldCacheData(Context context) {
        if (context == null) {
            return;
        }
        deleteRecursive(new File(context.getFilesDir(), "dex2c_work"));
        cleanStaleDexCache(context);
    }

    public static void cleanStaleDexCache(Context context) {
        File cacheDir;
        File[] fileArrListFiles;
        if (context == null || (cacheDir = context.getCacheDir()) == null || !cacheDir.exists() || (fileArrListFiles = cacheDir.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            deleteRecursive(file);
        }
    }

    public static void deleteRecursive(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        try {
            FastZipModifier.deleteDirNative(file.getAbsolutePath());
            if (!file.exists()) {
                return;
            }
        } catch (Throwable unused) {
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                deleteRecursive(file2);
            }
        }
        file.delete();
    }
}
