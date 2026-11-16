package com.android.tools.smali.dexlib2.util;

import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.Hex;
import com.android.tools.smali.util.StringUtils;
import com.android.tools.smali.util.TwoColumnOutput;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnnotatedBytes {
    private int cursor;
    private int indentLevel;
    private int outputWidth;

    @Nonnull
    private TreeMap<Integer, AnnotationEndpoint> annotatations = new TreeMap<>();
    private int hexCols = 8;
    private int startLimit = -1;
    private int endLimit = -1;

    public AnnotatedBytes(int i) {
        this.outputWidth = i;
    }

    public void moveTo(int i) {
        this.cursor = i;
    }

    public void moveBy(int i) {
        this.cursor += i;
    }

    public void annotateTo(int i, @Nonnull String str, Object... objArr) {
        annotate(i - this.cursor, str, objArr);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0133  */
    public void annotate(int i, @Nonnull String str, Object... objArr) {
        AnnotationItem annotationItem;
        AnnotationEndpoint value;
        Map.Entry<Integer, AnnotationEndpoint> entryHigherEntry;
        AnnotationItem annotationItem2;
        int i2;
        int i3;
        int i4 = this.startLimit;
        if (i4 != -1 && (i2 = this.endLimit) != -1 && ((i3 = this.cursor) < i4 || i3 >= i2)) {
            throw new ExceptionWithContext("Annotating outside the parent bounds", new Object[0]);
        }
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        int i5 = this.cursor;
        int i6 = i5 + i;
        AnnotationEndpoint annotationEndpoint = this.annotatations.get(Integer.valueOf(i5));
        if (annotationEndpoint == null) {
            Map.Entry<Integer, AnnotationEndpoint> entryLowerEntry = this.annotatations.lowerEntry(Integer.valueOf(this.cursor));
            if (entryLowerEntry != null && (annotationItem2 = entryLowerEntry.getValue().rangeAnnotation) != null) {
                int i7 = this.cursor;
                throw new ExceptionWithContext("Cannot add annotation %s, due to existing annotation %s", formatAnnotation(i7, Integer.valueOf(i + i7), str), formatAnnotation(entryLowerEntry.getKey().intValue(), annotationItem2.annotation));
            }
        } else if (i > 0 && (annotationItem = annotationEndpoint.rangeAnnotation) != null) {
            int i8 = this.cursor;
            throw new ExceptionWithContext("Cannot add annotation %s, due to existing annotation %s", formatAnnotation(i8, Integer.valueOf(i + i8), str), formatAnnotation(this.cursor, annotationItem.annotation));
        }
        if (i <= 0 || (entryHigherEntry = this.annotatations.higherEntry(Integer.valueOf(this.cursor))) == null) {
            value = null;
        } else {
            Integer key = entryHigherEntry.getKey();
            int iIntValue = key.intValue();
            if (iIntValue < i6) {
                AnnotationEndpoint value2 = entryHigherEntry.getValue();
                AnnotationItem annotationItem3 = value2.rangeAnnotation;
                if (annotationItem3 != null) {
                    int i9 = this.cursor;
                    throw new ExceptionWithContext("Cannot add annotation %s, due to existing annotation %s", formatAnnotation(i9, Integer.valueOf(i + i9), str), formatAnnotation(iIntValue, annotationItem3.annotation));
                }
                if (value2.pointAnnotations.size() > 0) {
                    int i10 = this.cursor;
                    throw new ExceptionWithContext("Cannot add annotation %s, due to existing annotation %s", formatAnnotation(i10, Integer.valueOf(i + i10), str), formatAnnotation(iIntValue, key, value2.pointAnnotations.get(0).annotation));
                }
                int i11 = this.cursor;
                throw new ExceptionWithContext("Cannot add annotation %s, due to existing annotation endpoint at %d", formatAnnotation(i11, Integer.valueOf(i + i11), str), key);
            }
            if (iIntValue == i6) {
                value = entryHigherEntry.getValue();
            } else {
                value = null;
            }
        }
        if (annotationEndpoint == null) {
            annotationEndpoint = new AnnotationEndpoint();
            this.annotatations.put(Integer.valueOf(this.cursor), annotationEndpoint);
        }
        if (i == 0) {
            annotationEndpoint.pointAnnotations.add(new AnnotationItem(this.indentLevel, str));
        } else {
            annotationEndpoint.rangeAnnotation = new AnnotationItem(this.indentLevel, str);
            if (value == null) {
                this.annotatations.put(Integer.valueOf(i6), new AnnotationEndpoint());
            }
        }
        this.cursor += i;
    }

    private String formatAnnotation(int i, String str) {
        return formatAnnotation(i, this.annotatations.higherKey(Integer.valueOf(i)), str);
    }

    private String formatAnnotation(int i, Integer num, String str) {
        return num != null ? String.format("[0x%x, 0x%x) \"%s\"", Integer.valueOf(i), num, str) : String.format("[0x%x, ) \"%s\"", Integer.valueOf(i), str);
    }

    public void indent() {
        this.indentLevel++;
    }

    public void deindent() {
        int i = this.indentLevel - 1;
        this.indentLevel = i;
        if (i < 0) {
            this.indentLevel = 0;
        }
    }

    public int getCursor() {
        return this.cursor;
    }

    private static class AnnotationEndpoint {

        @Nonnull
        public final List<AnnotationItem> pointAnnotations;

        @Nullable
        public AnnotationItem rangeAnnotation;

        private AnnotationEndpoint() {
            this.pointAnnotations = new ArrayList();
            this.rangeAnnotation = null;
        }
    }

    private static class AnnotationItem {
        public final String annotation;
        public final int indentLevel;

        public AnnotationItem(int i, String str) {
            this.indentLevel = i;
            this.annotation = str;
        }
    }

    public int getAnnotationWidth() {
        int i = this.hexCols;
        return this.outputWidth - (((i * 2) + 8) + (i / 2));
    }

    public void writeAnnotations(Writer writer, byte[] bArr, int i) throws IOException {
        int annotationWidth = getAnnotationWidth();
        int i2 = (this.outputWidth - annotationWidth) - 1;
        String strRepeat = StringUtils.repeat(" ", 1000);
        TwoColumnOutput twoColumnOutput = new TwoColumnOutput(writer, i2, annotationWidth, "|");
        Integer[] numArr = (Integer[]) this.annotatations.keySet().toArray(new Integer[this.annotatations.size()]);
        AnnotationEndpoint[] annotationEndpointArr = (AnnotationEndpoint[]) this.annotatations.values().toArray(new AnnotationEndpoint[this.annotatations.size()]);
        int i3 = 0;
        while (true) {
            String str = "";
            if (i3 >= numArr.length - 1) {
                break;
            }
            int iIntValue = numArr[i3].intValue();
            int i4 = i3 + 1;
            int iIntValue2 = numArr[i4].intValue();
            AnnotationEndpoint annotationEndpoint = annotationEndpointArr[i3];
            for (AnnotationItem annotationItem : annotationEndpoint.pointAnnotations) {
                twoColumnOutput.write("", strRepeat.substring(0, annotationItem.indentLevel * 2) + annotationItem.annotation);
            }
            AnnotationItem annotationItem2 = annotationEndpoint.rangeAnnotation;
            if (annotationItem2 != null) {
                str = strRepeat.substring(0, annotationItem2.indentLevel * 2) + annotationItem2.annotation;
            }
            int i5 = iIntValue + i;
            twoColumnOutput.write(Hex.dump(bArr, i5, iIntValue2 - iIntValue, i5, this.hexCols, 6), str);
            i3 = i4;
        }
        int iIntValue3 = numArr[numArr.length - 1].intValue();
        if (iIntValue3 < bArr.length) {
            int i6 = iIntValue3 + i;
            twoColumnOutput.write(Hex.dump(bArr, i6, (bArr.length - i) - iIntValue3, i6, this.hexCols, 6), "");
        }
    }

    public void setLimit(int i, int i2) {
        this.startLimit = i;
        this.endLimit = i2;
    }

    public void clearLimit() {
        this.startLimit = -1;
        this.endLimit = -1;
    }
}
