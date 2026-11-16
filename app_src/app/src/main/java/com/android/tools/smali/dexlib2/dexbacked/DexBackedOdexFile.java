package com.android.tools.smali.dexlib2.dexbacked;

import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.raw.OdexHeaderItem;
import com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList;
import com.android.tools.smali.dexlib2.util.DexUtil;
import com.android.tools.smali.util.InputStreamUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class DexBackedOdexFile extends DexBackedDexFile {
    private static final int DEPENDENCY_COUNT_OFFSET = 12;
    private static final int DEPENDENCY_START_OFFSET = 16;
    private final byte[] odexBuf;

    @Override // com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile
    public boolean supportsOptimizedOpcodes() {
        return true;
    }

    public DexBackedOdexFile(@Nonnull Opcodes opcodes, @Nonnull byte[] bArr, byte[] bArr2) {
        super(opcodes, bArr2);
        this.odexBuf = bArr;
    }

    @Nonnull
    public List<String> getDependencies() {
        int dependenciesOffset = OdexHeaderItem.getDependenciesOffset(this.odexBuf) - OdexHeaderItem.getDexOffset(this.odexBuf);
        final DexBuffer dexBuffer = new DexBuffer(getBuffer().buf, 0);
        return new VariableSizeList<String>(getDataBuffer(), dependenciesOffset + 16, dexBuffer.readInt(dependenciesOffset + 12)) { // from class: com.android.tools.smali.dexlib2.dexbacked.DexBackedOdexFile.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            protected /* bridge */ /* synthetic */ String readNextItem(@Nonnull DexReader dexReader, int i) {
                return readNextItem2((DexReader<? extends DexBuffer>) dexReader, i);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.util.VariableSizeList
            /* JADX INFO: renamed from: readNextItem, reason: avoid collision after fix types in other method */
            protected String readNextItem2(@Nonnull DexReader<? extends DexBuffer> dexReader, int i) {
                int i2 = dexReader.readInt();
                int offset = dexReader.getOffset();
                dexReader.moveRelative(i2 + 20);
                try {
                    return new String(dexBuffer.buf, offset, i2 - 1, "US-ASCII");
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        };
    }

    @Nonnull
    public static DexBackedOdexFile fromInputStream(@Nonnull Opcodes opcodes, @Nonnull InputStream inputStream) throws IOException {
        DexUtil.verifyOdexHeader(inputStream);
        inputStream.reset();
        byte[] bArr = new byte[40];
        InputStreamUtil.readFully(inputStream, bArr);
        int dexOffset = OdexHeaderItem.getDexOffset(bArr);
        if (dexOffset > 40) {
            InputStreamUtil.skipFully(inputStream, dexOffset - 40);
        }
        return new DexBackedOdexFile(opcodes, bArr, InputStreamUtil.toByteArray(inputStream));
    }

    public int getOdexVersion() {
        return OdexHeaderItem.getVersion(this.odexBuf, 0);
    }

    public static class NotAnOdexFile extends RuntimeException {
        public NotAnOdexFile() {
        }

        public NotAnOdexFile(Throwable th) {
            super(th);
        }

        public NotAnOdexFile(String str) {
            super(str);
        }

        public NotAnOdexFile(String str, Throwable th) {
            super(str, th);
        }
    }
}
