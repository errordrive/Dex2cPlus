package com.android.tools.smali.dexlib2.dexbacked.raw;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedClassDef;
import com.android.tools.smali.dexlib2.dexbacked.DexBuffer;
import com.android.tools.smali.dexlib2.dexbacked.DexReader;
import com.android.tools.smali.dexlib2.dexbacked.raw.util.DexAnnotator;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.util.AnnotatedBytes;
import java.util.Iterator;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class HiddenApiClassDataItem {
    public static final int OFFSETS_LIST_OFFSET = 4;
    public static final int OFFSET_ITEM_SIZE = 4;
    public static final int SIZE_OFFSET = 0;

    @Nonnull
    public static SectionAnnotator makeAnnotator(@Nonnull DexAnnotator dexAnnotator, @Nonnull MapItem mapItem) {
        return new SectionAnnotator(dexAnnotator, mapItem) { // from class: com.android.tools.smali.dexlib2.dexbacked.raw.HiddenApiClassDataItem.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            @Nonnull
            public String getItemName() {
                return "hiddenapi_class_data_item";
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.raw.SectionAnnotator
            protected void annotateItem(@Nonnull AnnotatedBytes annotatedBytes, int i, @Nullable String str) {
                int cursor = annotatedBytes.getCursor();
                int i2 = 1;
                int i3 = 0;
                int i4 = 4;
                annotatedBytes.annotate(4, "size = 0x%x", Integer.valueOf(this.dexFile.getDataBuffer().readSmallUint(annotatedBytes.getCursor())));
                int i5 = 0;
                for (DexBackedClassDef dexBackedClassDef : this.dexFile.getClasses()) {
                    Object[] objArr = new Object[2];
                    objArr[i3] = Integer.valueOf(i5);
                    objArr[i2] = dexBackedClassDef;
                    annotatedBytes.annotate(i3, "[%d] %s", objArr);
                    annotatedBytes.indent();
                    int smallUint = this.dexFile.getDataBuffer().readSmallUint(annotatedBytes.getCursor());
                    if (smallUint == 0) {
                        Object[] objArr2 = new Object[i2];
                        objArr2[i3] = Integer.valueOf(smallUint);
                        annotatedBytes.annotate(i4, "offset = 0x%x", objArr2);
                    } else {
                        Object objValueOf = Integer.valueOf(smallUint);
                        Object objValueOf2 = Integer.valueOf(cursor + smallUint);
                        Object[] objArr3 = new Object[2];
                        objArr3[i3] = objValueOf;
                        objArr3[i2] = objValueOf2;
                        annotatedBytes.annotate(i4, "offset = 0x%x (absolute offset: 0x%x)", objArr3);
                    }
                    int cursor2 = annotatedBytes.getCursor();
                    if (smallUint > 0) {
                        annotatedBytes.deindent();
                        annotatedBytes.moveTo(smallUint + cursor);
                        DexReader<? extends DexBuffer> dexReader = this.dexFile.getBuffer().readerAt(annotatedBytes.getCursor());
                        Iterator<? extends Field> it = dexBackedClassDef.getStaticFields().iterator();
                        while (it.hasNext()) {
                            Object[] objArr4 = new Object[i2];
                            objArr4[i3] = (Field) it.next();
                            annotatedBytes.annotate(i3, "%s:", objArr4);
                            annotatedBytes.indent();
                            int smallUleb128 = dexReader.readSmallUleb128();
                            int offset = dexReader.getOffset();
                            Object objValueOf3 = Integer.valueOf(smallUleb128);
                            Object hiddenRestrictions = HiddenApiRestriction.formatHiddenRestrictions(smallUleb128);
                            Object[] objArr5 = new Object[2];
                            objArr5[0] = objValueOf3;
                            objArr5[i2] = hiddenRestrictions;
                            annotatedBytes.annotateTo(offset, "restriction = 0x%x: %s", objArr5);
                            annotatedBytes.deindent();
                            i3 = 0;
                        }
                        char c = 0;
                        Iterator<? extends Field> it2 = dexBackedClassDef.getInstanceFields().iterator();
                        while (it2.hasNext()) {
                            Object[] objArr6 = new Object[i2];
                            objArr6[c] = (Field) it2.next();
                            annotatedBytes.annotate(0, "%s:", objArr6);
                            annotatedBytes.indent();
                            int smallUleb129 = dexReader.readSmallUleb128();
                            int offset2 = dexReader.getOffset();
                            Object objValueOf4 = Integer.valueOf(smallUleb129);
                            Object hiddenRestrictions2 = HiddenApiRestriction.formatHiddenRestrictions(smallUleb129);
                            Object[] objArr7 = new Object[2];
                            objArr7[0] = objValueOf4;
                            objArr7[i2] = hiddenRestrictions2;
                            annotatedBytes.annotateTo(offset2, "restriction = 0x%x: %s", objArr7);
                            annotatedBytes.deindent();
                            c = 0;
                        }
                        Iterator<? extends Method> it3 = dexBackedClassDef.getDirectMethods().iterator();
                        while (it3.hasNext()) {
                            Object[] objArr8 = new Object[i2];
                            objArr8[0] = (Method) it3.next();
                            annotatedBytes.annotate(0, "%s:", objArr8);
                            annotatedBytes.indent();
                            int smallUleb1210 = dexReader.readSmallUleb128();
                            int offset3 = dexReader.getOffset();
                            Object objValueOf5 = Integer.valueOf(smallUleb1210);
                            Object hiddenRestrictions3 = HiddenApiRestriction.formatHiddenRestrictions(smallUleb1210);
                            Object[] objArr9 = new Object[2];
                            objArr9[0] = objValueOf5;
                            objArr9[i2] = hiddenRestrictions3;
                            annotatedBytes.annotateTo(offset3, "restriction = 0x%x: %s", objArr9);
                            annotatedBytes.deindent();
                        }
                        Iterator<? extends Method> it4 = dexBackedClassDef.getVirtualMethods().iterator();
                        while (it4.hasNext()) {
                            Object[] objArr10 = new Object[i2];
                            objArr10[0] = (Method) it4.next();
                            annotatedBytes.annotate(0, "%s:", objArr10);
                            annotatedBytes.indent();
                            int smallUleb1211 = dexReader.readSmallUleb128();
                            annotatedBytes.annotateTo(dexReader.getOffset(), "restriction = 0x%x: %s", Integer.valueOf(smallUleb1211), HiddenApiRestriction.formatHiddenRestrictions(smallUleb1211));
                            annotatedBytes.deindent();
                            i2 = 1;
                        }
                        annotatedBytes.indent();
                    }
                    annotatedBytes.moveTo(cursor2);
                    annotatedBytes.deindent();
                    i5++;
                    i4 = 4;
                    i2 = 1;
                    i3 = 0;
                }
            }
        };
    }
}
