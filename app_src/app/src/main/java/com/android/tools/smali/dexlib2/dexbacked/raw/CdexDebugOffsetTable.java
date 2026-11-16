package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.CDexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class CdexDebugOffsetTable {
    @Nonnull
    public static void annotate(@Nonnull DexAnnotator dexAnnotator, DexBuffer dexBuffer) {
        DexReader<? extends DexBuffer> dexReader = dexBuffer.readerAt(dexAnnotator.getCursor());
        SectionAnnotator annotator = dexAnnotator.getAnnotator(ItemType.DEBUG_INFO_ITEM);
        int size = dexAnnotator.dexFile.getMethodSection().size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Integer numValueOf = Integer.valueOf(i2);
            int i3 = i2 + 16;
            Integer numValueOf2 = Integer.valueOf(Math.min(i3, size));
            Object[] objArr = new Object[2];
            objArr[i] = numValueOf;
            objArr[1] = numValueOf2;
            dexAnnotator.annotate(i, "Offset chuck for methods %d-%d", objArr);
            dexAnnotator.indent();
            int ubyte = (dexReader.readUbyte() << 8) | dexReader.readUbyte();
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < 16; i4++) {
                sb.append((ubyte >> i4) & 1);
            }
            Object[] objArr2 = new Object[1];
            objArr2[i] = sb.reverse();
            dexAnnotator.annotate(2, "bitmask: 0b%s", objArr2);
            int debugInfoBase = ((CDexBackedDexFile) dexAnnotator.dexFile).getDebugInfoBase();
            for (int i5 = 0; i5 < 16; i5++) {
                if ((ubyte & 1) != 0) {
                    int bigUleb128 = dexReader.readBigUleb128();
                    debugInfoBase += bigUleb128;
                    int i6 = i2 + i5;
                    dexAnnotator.annotateTo(dexReader.getOffset(), "[method_id: %d]: offset_delta: %d  (offset=0x%x)", Integer.valueOf(i6), Integer.valueOf(bigUleb128), Integer.valueOf(debugInfoBase));
                    annotator.setItemIdentity(debugInfoBase, dexAnnotator.dexFile.getMethodSection().get(i6).toString());
                }
                ubyte >>= 1;
            }
            dexAnnotator.deindent();
            i2 = i3;
            i = 0;
        }
    }
}
