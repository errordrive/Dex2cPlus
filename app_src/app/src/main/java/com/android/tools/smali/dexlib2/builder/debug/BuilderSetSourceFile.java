package com.android.tools.smali.dexlib2.builder.debug;

import com.android.tools.smali.dexlib2.builder.BuilderDebugItem;
import com.android.tools.smali.dexlib2.iface.debug.SetSourceFile;
import com.android.tools.smali.dexlib2.iface.reference.StringReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BuilderSetSourceFile extends BuilderDebugItem implements SetSourceFile {

    @Nullable
    private final StringReference sourceFile;

    @Override // com.android.tools.smali.dexlib2.iface.debug.DebugItem
    public int getDebugItemType() {
        return 9;
    }

    public BuilderSetSourceFile(@Nullable StringReference stringReference) {
        this.sourceFile = stringReference;
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.SetSourceFile
    @Nullable
    public String getSourceFile() {
        StringReference stringReference = this.sourceFile;
        if (stringReference == null) {
            return null;
        }
        return stringReference.getString();
    }

    @Override // com.android.tools.smali.dexlib2.iface.debug.SetSourceFile
    @Nullable
    public StringReference getSourceFileReference() {
        return this.sourceFile;
    }
}
