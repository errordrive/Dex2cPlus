package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.ValueType;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.value.DexBackedEncodedValue;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class EncodedValue {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static void annotateEncodedValue(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        int ubyte = dexReader.readUbyte();
        int i = ubyte >>> 5;
        int i2 = ubyte & 31;
        if (i2 != 0 && i2 != 6 && i2 != 2 && i2 != 3 && i2 != 4 && i2 != 16 && i2 != 17) {
            switch (i2) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                case 28:
                    annotatedBytes.annotate(1, "valueArg = %d, valueType = 0x%x: array", Integer.valueOf(i), Integer.valueOf(i2));
                    annotateEncodedArray(dexBackedDexFile, annotatedBytes, dexReader);
                    return;
                case 29:
                    annotatedBytes.annotate(1, "valueArg = %d, valueType = 0x%x: annotation", Integer.valueOf(i), Integer.valueOf(i2));
                    annotateEncodedAnnotation(dexBackedDexFile, annotatedBytes, dexReader);
                    return;
                case 30:
                    annotatedBytes.annotate(1, "valueArg = %d, valueType = 0x%x: null", Integer.valueOf(i), Integer.valueOf(i2));
                    return;
                case 31:
                    annotatedBytes.annotate(1, "valueArg = %d, valueType = 0x%x: boolean, value=%s", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(i == 1));
                    return;
                default:
                    throw new IllegalArgumentException(String.format("Invalid encoded value type 0x%x at offset 0x%x", Integer.valueOf(i2), Integer.valueOf(dexReader.getOffset())));
            }
        }
        annotatedBytes.annotate(1, "valueArg = %d, valueType = 0x%x: %s", Integer.valueOf(i), Integer.valueOf(i2), ValueType.getValueTypeName(i2));
        dexReader.setOffset(dexReader.getOffset() - 1);
        annotatedBytes.annotate(i + 1, "value = %s", asString(dexBackedDexFile, dexReader));
    }

    public static void annotateEncodedAnnotation(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        annotatedBytes.annotateTo(dexReader.getOffset(), TypeIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSmallUleb128()), new Object[0]);
        int smallUleb128 = dexReader.readSmallUleb128();
        annotatedBytes.annotateTo(dexReader.getOffset(), "size: %d", Integer.valueOf(smallUleb128));
        for (int i = 0; i < smallUleb128; i++) {
            annotatedBytes.annotate(0, "element[%d]", Integer.valueOf(i));
            annotatedBytes.indent();
            annotatedBytes.annotateTo(dexReader.getOffset(), "name = %s", StringIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSmallUleb128()));
            annotateEncodedValue(dexBackedDexFile, annotatedBytes, dexReader);
            annotatedBytes.deindent();
        }
    }

    public static void annotateEncodedArray(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull AnnotatedBytes annotatedBytes, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        int smallUleb128 = dexReader.readSmallUleb128();
        annotatedBytes.annotateTo(dexReader.getOffset(), "size: %d", Integer.valueOf(smallUleb128));
        for (int i = 0; i < smallUleb128; i++) {
            annotatedBytes.annotate(0, "element[%d]", Integer.valueOf(i));
            annotatedBytes.indent();
            annotateEncodedValue(dexBackedDexFile, annotatedBytes, dexReader);
            annotatedBytes.deindent();
        }
    }

    public static String asString(@Nonnull DexBackedDexFile dexBackedDexFile, @Nonnull DexReader<? extends DexBuffer> dexReader) {
        int ubyte = dexReader.readUbyte();
        int i = ubyte >>> 5;
        int i2 = ubyte & 31;
        if (i2 == 0) {
            return String.format("0x%x", Integer.valueOf(dexReader.readByte()));
        }
        if (i2 == 6) {
            return String.format("0x%x", Long.valueOf(dexReader.readSizedLong(i + 1)));
        }
        if (i2 == 2) {
            return String.format("0x%x", Integer.valueOf(dexReader.readSizedInt(i + 1)));
        }
        if (i2 == 3) {
            return String.format("0x%x", Integer.valueOf(dexReader.readSizedSmallUint(i + 1)));
        }
        if (i2 == 4) {
            return String.format("0x%x", Integer.valueOf(dexReader.readSizedInt(i + 1)));
        }
        if (i2 == 16) {
            return String.format("%f", Float.valueOf(Float.intBitsToFloat(dexReader.readSizedRightExtendedInt(i + 1))));
        }
        if (i2 == 17) {
            return String.format("%f", Double.valueOf(Double.longBitsToDouble(dexReader.readSizedRightExtendedLong(i + 1))));
        }
        switch (i2) {
            case 21:
                return ProtoIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1));
            case 22:
            case 28:
            case 29:
                dexReader.setOffset(dexReader.getOffset() - 1);
                return DexBackedEncodedValue.readFrom(dexBackedDexFile, dexReader).toString();
            case 23:
                return StringIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1), true);
            case 24:
                return TypeIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1));
            case 25:
                return FieldIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1));
            case 26:
                return MethodIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1));
            case 27:
                return FieldIdItem.getReferenceAnnotation(dexBackedDexFile, dexReader.readSizedSmallUint(i + 1));
            case 30:
                return "null";
            case 31:
                return Boolean.toString(i == 1);
            default:
                throw new IllegalArgumentException(String.format("Invalid encoded value type 0x%x at offset 0x%x", Integer.valueOf(i2), Integer.valueOf(dexReader.getOffset())));
        }
    }
}
