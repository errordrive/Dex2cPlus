package com.android.tools.smali.dexlib2.analysis.reflection.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ReflectionUtils {
    private static Map<String, String> primitiveMap;
    private static Map<String, String> primitiveMapInverse;

    static {
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, "Z");
        map.put("int", "I");
        map.put("long", "J");
        map.put("double", "D");
        map.put("void", "V");
        map.put(TypedValues.Custom.S_FLOAT, "F");
        map.put("char", "C");
        map.put("short", "S");
        map.put("byte", "B");
        primitiveMap = Collections.unmodifiableMap(map);
        primitiveMapInverse = getInverse();
    }

    private static Map<String, String> getInverse() {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : primitiveMap.entrySet()) {
            map.put(entry.getValue(), entry.getKey());
        }
        return Collections.unmodifiableMap(map);
    }

    public static String javaToDexName(String str) {
        if (str.charAt(0) == '[') {
            return str.replace('.', '/');
        }
        if (primitiveMap.containsKey(str)) {
            return primitiveMap.get(str);
        }
        return "L" + str.replace('.', '/') + ';';
    }

    public static String dexToJavaName(String str) {
        if (str.charAt(0) == '[') {
            return str.replace('/', '.');
        }
        if (primitiveMapInverse.containsKey(str)) {
            return primitiveMapInverse.get(str);
        }
        return str.replace('/', '.').substring(1, str.length() - 1);
    }
}
