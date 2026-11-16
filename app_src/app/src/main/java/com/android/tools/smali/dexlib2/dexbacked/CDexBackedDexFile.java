package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.raw.CdexHeaderItem;
import com.android.tools.smali.dexlib2.util.DexUtil;
import java.io.UnsupportedEncodingException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class CDexBackedDexFile extends DexBackedDexFile {
    public CDexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr, int i, boolean z) {
        super(opcodes, bArr, i, z);
    }

    public CDexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull DexBuffer dexBuffer) {
        super(opcodes, dexBuffer);
    }

    public CDexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr, int i) {
        super(opcodes, bArr, i);
    }

    public CDexBackedDexFile(@Nullable Opcodes opcodes, @Nonnull byte[] bArr) {
        super(opcodes, bArr);
    }

    public static boolean isCdex(byte[] bArr, int i) {
        if (i + 4 > bArr.length) {
            return false;
        }
        try {
            byte[] bytes = "cdex".getBytes("US-ASCII");
            return bArr[i] == bytes[0] && bArr[i + 1] == bytes[1] && bArr[i + 2] == bytes[2] && bArr[i + 3] == bytes[3];
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
    protected int getVersion(byte[] bArr, int i, boolean z) {
        if (z) {
            return DexUtil.verifyCdexHeader(bArr, i);
        }
        return CdexHeaderItem.getVersion(bArr, i);
    }

    @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
    protected Opcodes getDefaultOpcodes(int i) {
        return Opcodes.forApi(28);
    }

    @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
    public int getBaseDataOffset() {
        return getBuffer().readSmallUint(108);
    }

    public int getDebugInfoOffsetsPos() {
        return getBuffer().readSmallUint(116);
    }

    public int getDebugInfoOffsetsTableOffset() {
        return getBuffer().readSmallUint(CdexHeaderItem.DEBUG_INFO_OFFSETS_TABLE_OFFSET);
    }

    public int getDebugInfoBase() {
        return getBuffer().readSmallUint(CdexHeaderItem.DEBUG_INFO_BASE);
    }

    @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
    protected DexBackedMethodImplementation createMethodImplementation(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexBackedMethod dexBackedMethod, int i) {
        return new CDexBackedMethodImplementation(dexBackedDexFile, dexBackedMethod, i);
    }
}
