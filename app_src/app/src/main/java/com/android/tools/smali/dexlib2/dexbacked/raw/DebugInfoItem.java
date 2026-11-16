package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class DebugInfoItem {
    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.DebugInfoItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "debug_info_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            public void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                DexReader<? extends DexBuffer> dexReader = this.dexFile.getBuffer().readerAt(annotatedBytes.getCursor());
                int bigUleb128 = dexReader.readBigUleb128();
                annotatedBytes.annotateTo(dexReader.getOffset(), "line_start = %d", Long.valueOf(((long) bigUleb128) & 4294967295L));
                int smallUleb128 = dexReader.readSmallUleb128();
                annotatedBytes.annotateTo(dexReader.getOffset(), "parameters_size = %d", Integer.valueOf(smallUleb128));
                if (smallUleb128 > 0) {
                    annotatedBytes.annotate(0, "parameters:", new Object[0]);
                    annotatedBytes.indent();
                    for (int i2 = 0; i2 < smallUleb128; i2++) {
                        annotatedBytes.annotateTo(dexReader.getOffset(), "%s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1, true));
                    }
                    annotatedBytes.deindent();
                }
                annotatedBytes.annotate(0, "debug opcodes:", new Object[0]);
                annotatedBytes.indent();
                int i3 = 0;
                while (true) {
                    int ubyte = dexReader.readUbyte();
                    switch (ubyte) {
                        case 0:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_END_SEQUENCE", new Object[0]);
                            annotatedBytes.deindent();
                            return;
                        case 1:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_ADVANCE_PC", new Object[0]);
                            annotatedBytes.indent();
                            int smallUleb129 = dexReader.readSmallUleb128();
                            i3 += smallUleb129;
                            annotatedBytes.annotateTo(dexReader.getOffset(), "addr_diff = +0x%x: 0x%x", Integer.valueOf(smallUleb129), Integer.valueOf(i3));
                            annotatedBytes.deindent();
                            break;
                        case 2:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_ADVANCE_LINE", new Object[0]);
                            annotatedBytes.indent();
                            int sleb128 = dexReader.readSleb128();
                            bigUleb128 += sleb128;
                            annotatedBytes.annotateTo(dexReader.getOffset(), "line_diff = +%d: %d", Integer.valueOf(Math.abs(sleb128)), Integer.valueOf(bigUleb128));
                            annotatedBytes.deindent();
                            break;
                        case 3:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_START_LOCAL", new Object[0]);
                            annotatedBytes.indent();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "register_num = v%d", Integer.valueOf(dexReader.readSmallUleb128()));
                            annotatedBytes.annotateTo(dexReader.getOffset(), "name_idx = %s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1, true));
                            annotatedBytes.annotateTo(dexReader.getOffset(), "type_idx = %s", TypeIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1));
                            annotatedBytes.deindent();
                            break;
                        case 4:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_START_LOCAL_EXTENDED", new Object[0]);
                            annotatedBytes.indent();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "register_num = v%d", Integer.valueOf(dexReader.readSmallUleb128()));
                            annotatedBytes.annotateTo(dexReader.getOffset(), "name_idx = %s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1, true));
                            annotatedBytes.annotateTo(dexReader.getOffset(), "type_idx = %s", TypeIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1));
                            annotatedBytes.annotateTo(dexReader.getOffset(), "sig_idx = %s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1, true));
                            annotatedBytes.deindent();
                            break;
                        case 5:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_END_LOCAL", new Object[0]);
                            annotatedBytes.indent();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "register_num = v%d", Integer.valueOf(dexReader.readSmallUleb128()));
                            annotatedBytes.deindent();
                            break;
                        case 6:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_RESTART_LOCAL", new Object[0]);
                            annotatedBytes.indent();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "register_num = v%d", Integer.valueOf(dexReader.readSmallUleb128()));
                            annotatedBytes.deindent();
                            break;
                        case 7:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_SET_PROLOGUE_END", new Object[0]);
                            break;
                        case 8:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_SET_EPILOGUE_BEGIN", new Object[0]);
                            break;
                        case 9:
                            annotatedBytes.annotateTo(dexReader.getOffset(), "DBG_SET_FILE", new Object[0]);
                            annotatedBytes.indent();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "name_idx = %s", StringIdItem.getOptionalReferenceAnnotation(this.dexFile, dexReader.readSmallUleb128() - 1));
                            annotatedBytes.deindent();
                            break;
                        default:
                            int i4 = ubyte - 10;
                            int i5 = i4 / 15;
                            int i6 = (i4 % 15) - 4;
                            i3 += i5;
                            bigUleb128 += i6;
                            annotatedBytes.annotateTo(dexReader.getOffset(), "address_diff = +0x%x:0x%x, line_diff = +%d:%d, ", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i6), Integer.valueOf(bigUleb128));
                            break;
                    }
                }
            }
        };
    }
}
