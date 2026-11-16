package com.android.tools.smali.dexlib2;

import com.android.tools.smali.util.ExceptionWithContext;

/* JADX INFO: loaded from: classes.dex */
public final class AnnotationVisibility {
    public static final int BUILD = 0;
    private static String[] NAMES = {"build", "runtime", "system"};
    public static final int RUNTIME = 1;
    public static final int SYSTEM = 2;

    public static String getVisibility(int i) {
        if (i >= 0) {
            String[] strArr = NAMES;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        throw new ExceptionWithContext("Invalid annotation visibility %d", Integer.valueOf(i));
    }

    public static int getVisibility(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals("build")) {
            return 0;
        }
        if (lowerCase.equals("runtime")) {
            return 1;
        }
        if (lowerCase.equals("system")) {
            return 2;
        }
        throw new ExceptionWithContext("Invalid annotation visibility: %s", lowerCase);
    }

    private AnnotationVisibility() {
    }
}
