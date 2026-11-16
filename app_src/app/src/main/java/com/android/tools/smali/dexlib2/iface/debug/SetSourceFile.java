package com.android.tools.smali.dexlib2.iface.debug;

import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface SetSourceFile extends DebugItem {
    @Nullable
    String getSourceFile();

    @Nullable
    StringReference getSourceFileReference();
}
