package com.android.tools.smali.dexlib2;

import androidx.core.widget.TextViewCompat$$ExternalSyntheticApiModelOutline0;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.StringJoiner;

/* JADX INFO: loaded from: classes.dex */
public enum HiddenApiRestriction {
    WHITELIST(0, "whitelist", false),
    GREYLIST(1, "greylist", false),
    BLACKLIST(2, "blacklist", false),
    GREYLIST_MAX_O(3, "greylist-max-o", false),
    GREYLIST_MAX_P(4, "greylist-max-p", false),
    GREYLIST_MAX_Q(5, "greylist-max-q", false),
    GREYLIST_MAX_R(6, "greylist-max-r", false),
    CORE_PLATFORM_API(8, "core-platform-api", true),
    TEST_API(16, "test-api", true);

    private static final int HIDDENAPI_FLAG_MASK = 7;
    private static final HiddenApiRestriction[] domainSpecificApiFlags;
    private static final HiddenApiRestriction[] hiddenApiFlags;
    private static final Map<String, HiddenApiRestriction> hiddenApiRestrictionsByName;
    private final boolean isDomainSpecificApiFlag;
    private final String name;
    private final int value;

    static {
        HiddenApiRestriction hiddenApiRestriction = WHITELIST;
        HiddenApiRestriction hiddenApiRestriction2 = GREYLIST;
        HiddenApiRestriction hiddenApiRestriction3 = BLACKLIST;
        HiddenApiRestriction hiddenApiRestriction4 = GREYLIST_MAX_O;
        HiddenApiRestriction hiddenApiRestriction5 = GREYLIST_MAX_P;
        HiddenApiRestriction hiddenApiRestriction6 = GREYLIST_MAX_Q;
        HiddenApiRestriction hiddenApiRestriction7 = GREYLIST_MAX_R;
        HiddenApiRestriction hiddenApiRestriction8 = CORE_PLATFORM_API;
        HiddenApiRestriction hiddenApiRestriction9 = TEST_API;
        hiddenApiFlags = new HiddenApiRestriction[]{hiddenApiRestriction, hiddenApiRestriction2, hiddenApiRestriction3, hiddenApiRestriction4, hiddenApiRestriction5, hiddenApiRestriction6, hiddenApiRestriction7};
        domainSpecificApiFlags = new HiddenApiRestriction[]{hiddenApiRestriction8, hiddenApiRestriction9};
        hiddenApiRestrictionsByName = new HashMap();
        for (HiddenApiRestriction hiddenApiRestriction10 : values()) {
            hiddenApiRestrictionsByName.put(hiddenApiRestriction10.toString(), hiddenApiRestriction10);
        }
    }

    HiddenApiRestriction(int i, String str, boolean z) {
        this.value = i;
        this.name = str;
        this.isDomainSpecificApiFlag = z;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isSet(int i) {
        if (this.isDomainSpecificApiFlag) {
            return (i & this.value) != 0;
        }
        return (i & 7) == this.value;
    }

    public boolean isDomainSpecificApiFlag() {
        return this.isDomainSpecificApiFlag;
    }

    public static Set<HiddenApiRestriction> getAllFlags(int i) {
        HiddenApiRestriction hiddenApiRestriction = hiddenApiFlags[i & 7];
        HashSet hashSet = new HashSet();
        if ((i & (-8)) == 0) {
            hashSet.add(hiddenApiRestriction);
            return Collections.unmodifiableSet(hashSet);
        }
        hashSet.add(hiddenApiRestriction);
        for (HiddenApiRestriction hiddenApiRestriction2 : domainSpecificApiFlags) {
            if (hiddenApiRestriction2.isSet(i)) {
                hashSet.add(hiddenApiRestriction2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static String formatHiddenRestrictions(int i) {
        StringJoiner stringJoinerM = TextViewCompat$$ExternalSyntheticApiModelOutline0.m((CharSequence) "|");
        Iterator<HiddenApiRestriction> it = getAllFlags(i).iterator();
        while (it.hasNext()) {
            stringJoinerM.add(it.next().toString());
        }
        return stringJoinerM.toString();
    }

    public static int combineFlags(Iterable<HiddenApiRestriction> iterable) {
        int i = 0;
        boolean z = false;
        for (HiddenApiRestriction hiddenApiRestriction : iterable) {
            if (hiddenApiRestriction.isDomainSpecificApiFlag) {
                i += hiddenApiRestriction.value;
            } else {
                if (z) {
                    throw new IllegalArgumentException("Cannot combine multiple flags for hidden api restrictions");
                }
                i += hiddenApiRestriction.value;
                z = true;
            }
        }
        return i;
    }

    public static HiddenApiRestriction forName(String str) {
        return hiddenApiRestrictionsByName.get(str);
    }
}
