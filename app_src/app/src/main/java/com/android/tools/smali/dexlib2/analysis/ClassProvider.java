package com.android.tools.smali.dexlib2.analysis;

import com.android.tools.smali.dexlib2.iface.ClassDef;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface ClassProvider {
    @Nullable
    ClassDef getClassDef(String str);
}
