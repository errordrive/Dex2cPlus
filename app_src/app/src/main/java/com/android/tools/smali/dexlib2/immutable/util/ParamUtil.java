package com.android.tools.smali.dexlib2.immutable.util;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethodParameter;
import java.util.Iterator;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class ParamUtil {
    /* JADX INFO: Access modifiers changed from: private */
    public static int findTypeEnd(@Nonnull String str, int i) {
        char cCharAt = str.charAt(i);
        if (cCharAt != 'F') {
            if (cCharAt == 'L') {
                while (true) {
                    int i2 = i + 1;
                    if (str.charAt(i) == ';') {
                        return i2;
                    }
                    i = i2;
                }
            } else if (cCharAt != 'S' && cCharAt != 'I' && cCharAt != 'J' && cCharAt != 'Z') {
                if (cCharAt != '[') {
                    switch (cCharAt) {
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                        case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                        case HeaderItem.TYPE_START_OFFSET /* 68 */:
                            break;
                        default:
                            throw new IllegalArgumentException(String.format("Param string \"%s\" contains invalid type prefix: %s", str, Character.toString(cCharAt)));
                    }
                } else {
                    while (true) {
                        int i3 = i + 1;
                        if (str.charAt(i) == '[') {
                            return findTypeEnd(str, i3);
                        }
                        i = i3;
                    }
                }
            }
        }
        return i + 1;
    }

    @Nonnull
    public static Iterable<ImmutableMethodParameter> parseParamString(@Nonnull final String str) {
        return new Iterable<ImmutableMethodParameter>() { // from class: com.android.tools.smali.dexlib2.immutable.util.ParamUtil.1
            @Override // java.lang.Iterable
            public Iterator<ImmutableMethodParameter> iterator() {
                return new Iterator<ImmutableMethodParameter>() { // from class: com.android.tools.smali.dexlib2.immutable.util.ParamUtil.1.1
                    private int index = 0;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.index < str.length();
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public ImmutableMethodParameter next() {
                        int iFindTypeEnd = ParamUtil.findTypeEnd(str, this.index);
                        String strSubstring = str.substring(this.index, iFindTypeEnd);
                        this.index = iFindTypeEnd;
                        return new ImmutableMethodParameter(strSubstring, null, null);
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }
}
