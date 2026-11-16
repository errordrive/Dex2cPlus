package com.android.tools.smali.util;

import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class CharSequenceUtils {
    private static final Function<Object, String> TO_STRING = new Function<Object, String>() { // from class: com.android.tools.smali.util.CharSequenceUtils.1
        @Override // java.util.function.Function
        public String apply(Object obj) {
            return obj.toString();
        }
    };

    public static int listHashCode(List<? extends CharSequence> list) {
        return IteratorUtils.toList(new TransformedIterable(list, TO_STRING)).hashCode();
    }

    public static boolean listEquals(List<? extends CharSequence> list, List<? extends CharSequence> list2) {
        Function<Object, String> function = TO_STRING;
        return IteratorUtils.toList(new TransformedIterable(list, function)).equals(IteratorUtils.toList(new TransformedIterable(list2, function)));
    }
}
