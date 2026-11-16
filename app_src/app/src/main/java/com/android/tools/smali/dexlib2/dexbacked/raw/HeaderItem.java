package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.VersionMap;
import com.android.tools.smali.dexlib2.dexbacked.CDexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import com.android.tools.smali.util.StringUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class HeaderItem {
    public static final int BIG_ENDIAN_TAG = 2018915346;
    public static final int CHECKSUM_DATA_START_OFFSET = 12;
    public static final int CHECKSUM_OFFSET = 8;
    public static final int CLASS_COUNT_OFFSET = 96;
    public static final int CLASS_START_OFFSET = 100;
    public static final int CONTAINER_OFF_OFFSET = 116;
    public static final int CONTAINER_SIZE_OFFSET = 112;
    public static final int DATA_SIZE_OFFSET = 104;
    public static final int DATA_START_OFFSET = 108;
    public static final int ENDIAN_TAG_OFFSET = 40;
    public static final int FIELD_COUNT_OFFSET = 80;
    public static final int FIELD_START_OFFSET = 84;
    public static final int FILE_SIZE_OFFSET = 32;
    public static final int HEADER_SIZE_OFFSET = 36;
    public static final int ITEM_SIZE = 112;
    public static final int LITTLE_ENDIAN_TAG = 305419896;
    private static final byte[] MAGIC_VALUE = {100, 101, 120, 10, 0, 0, 0, 0};
    public static final int MAP_OFFSET = 52;
    public static final int METHOD_COUNT_OFFSET = 88;
    public static final int METHOD_START_OFFSET = 92;
    public static final int PROTO_COUNT_OFFSET = 72;
    public static final int PROTO_START_OFFSET = 76;
    public static final int SIGNATURE_DATA_START_OFFSET = 32;
    public static final int SIGNATURE_OFFSET = 12;
    public static final int SIGNATURE_SIZE = 20;
    public static final int STRING_COUNT_OFFSET = 56;
    public static final int STRING_START_OFFSET = 60;
    public static final int TYPE_COUNT_OFFSET = 64;
    public static final int TYPE_START_OFFSET = 68;

    @Nonnull
    private DexBackedDexFile dexFile;

    public HeaderItem(@Nonnull DexBackedDexFile dexBackedDexFile) {
        this.dexFile = dexBackedDexFile;
    }

    public int getChecksum() {
        return this.dexFile.getBuffer().readSmallUint(8);
    }

    @Nonnull
    public byte[] getSignature() {
        return this.dexFile.getBuffer().readByteRange(12, 20);
    }

    public int getMapOffset() {
        return this.dexFile.getBuffer().readSmallUint(52);
    }

    public int getHeaderSize() {
        return this.dexFile.getBuffer().readSmallUint(36);
    }

    public int getStringCount() {
        return this.dexFile.getBuffer().readSmallUint(56);
    }

    public int getStringOffset() {
        return this.dexFile.getBuffer().readSmallUint(60);
    }

    public int getTypeCount() {
        return this.dexFile.getBuffer().readSmallUint(64);
    }

    public int getTypeOffset() {
        return this.dexFile.getBuffer().readSmallUint(68);
    }

    public int getProtoCount() {
        return this.dexFile.getBuffer().readSmallUint(72);
    }

    public int getProtoOffset() {
        return this.dexFile.getBuffer().readSmallUint(76);
    }

    public int getFieldCount() {
        return this.dexFile.getBuffer().readSmallUint(80);
    }

    public int getFieldOffset() {
        return this.dexFile.getBuffer().readSmallUint(84);
    }

    public int getMethodCount() {
        return this.dexFile.getBuffer().readSmallUint(88);
    }

    public int getMethodOffset() {
        return this.dexFile.getBuffer().readSmallUint(92);
    }

    public int getClassCount() {
        return this.dexFile.getBuffer().readSmallUint(96);
    }

    public int getClassOffset() {
        return this.dexFile.getBuffer().readSmallUint(100);
    }

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "header_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int cursor = annotatedBytes.getCursor();
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < 8; i2++) {
                    sb.append((char) this.dexFile.getBuffer().readUbyte(cursor + i2));
                }
                annotatedBytes.annotate(8, "magic: %s", StringUtils.escapeString(sb.toString()));
                annotatedBytes.annotate(4, "checksum", new Object[0]);
                annotatedBytes.annotate(20, "signature", new Object[0]);
                annotatedBytes.annotate(4, "file_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                int i3 = this.dexFile.getBuffer().readInt(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "header_size: %d", Integer.valueOf(i3));
                int i4 = this.dexFile.getBuffer().readInt(annotatedBytes.getCursor());
                annotatedBytes.annotate(4, "endian_tag: 0x%x (%s)", Integer.valueOf(i4), HeaderItem.getEndianText(i4));
                annotatedBytes.annotate(4, "link_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "link_offset: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "map_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "string_ids_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "string_ids_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "type_ids_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "type_ids_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "proto_ids_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "proto_ids_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "field_ids_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "field_ids_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "method_ids_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "method_ids_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "class_defs_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "class_defs_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "data_size: %d", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                annotatedBytes.annotate(4, "data_off: 0x%x", Integer.valueOf(this.dexFile.getBuffer().readInt(annotatedBytes.getCursor())));
                if (this.annotator.dexFile instanceof CDexBackedDexFile) {
                    CdexHeaderItem.annotateCdexHeaderFields(annotatedBytes, this.dexFile.getBuffer());
                }
                if (i3 > 112) {
                    annotatedBytes.annotateTo(i3, "header padding", new Object[0]);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getEndianText(int i) {
        if (i == 305419896) {
            return "Little Endian";
        }
        if (i == 2018915346) {
            return "Big Endian";
        }
        return "Invalid";
    }

    public static byte[] getMagicForApi(int i) {
        return getMagicForDexVersion(VersionMap.mapApiToDexVersion(i));
    }

    public static byte[] getMagicForDexVersion(int i) {
        byte[] bArr = (byte[]) MAGIC_VALUE.clone();
        if (i < 0 || i > 999) {
            throw new IllegalArgumentException("dexVersion must be within [0, 999]");
        }
        for (int i2 = 6; i2 >= 4; i2--) {
            bArr[i2] = (byte) ((i % 10) + 48);
            i /= 10;
        }
        return bArr;
    }

    public static boolean verifyMagic(byte[] bArr, int i) {
        if (bArr.length - i < 8) {
            return false;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= 4) {
                for (int i3 = 4; i3 < 7; i3++) {
                    byte b = bArr[i + i3];
                    if (b < 48 || b > 57) {
                        return false;
                    }
                }
                return bArr[i + 7] == MAGIC_VALUE[7];
            }
            if (bArr[i + i2] != MAGIC_VALUE[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static int getVersion(byte[] bArr, int i) {
        if (verifyMagic(bArr, i)) {
            return getVersionUnchecked(bArr, i);
        }
        return -1;
    }

    private static int getVersionUnchecked(byte[] bArr, int i) {
        return ((bArr[i + 4] - 48) * 100) + ((bArr[i + 5] - 48) * 10) + (bArr[i + 6] - 48);
    }

    public static boolean isSupportedDexVersion(int i) {
        return VersionMap.mapDexVersionToApi(i) != -1;
    }

    public static int getEndian(byte[] bArr, int i) {
        return new DexBuffer(bArr).readInt(i + 40);
    }
}
