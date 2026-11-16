package com.android.tools.smali.util;

import java.lang.Comparable;
import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Range<C extends Comparable> {
    public static final Comparator<Range<?>> RANGE_LEX_COMPARATOR = new Comparator<Range<?>>() { // from class: com.android.tools.smali.util.Range.1
        @Override // java.util.Comparator
        public int compare(Range<?> range, Range<?> range2) {
            if (!range.hasLowerBound() && range2.hasLowerBound()) {
                return -1;
            }
            if (!range2.hasLowerBound() && range.hasLowerBound()) {
                return 1;
            }
            int iCompareTo = (range.hasLowerBound() && range2.hasLowerBound()) ? ((Range) range).lowerBound.compareTo(((Range) range2).lowerBound) : 0;
            if (iCompareTo == 0) {
                if (!range.hasUpperBound() && range2.hasUpperBound()) {
                    return 1;
                }
                if (!range2.hasUpperBound() && range.hasUpperBound()) {
                    return -1;
                }
                if (range.hasUpperBound() && range2.hasUpperBound()) {
                    return ((Range) range).upperBound.compareTo(((Range) range2).upperBound);
                }
            }
            return iCompareTo;
        }
    };
    private boolean allValues;
    private C lowerBound;
    private boolean lowerOpen;
    private C upperBound;
    private boolean upperOpen;

    public static <C extends Comparable> Range<C> closed(C c, C c2) {
        if (c == null || c2 == null) {
            throw null;
        }
        if (c.compareTo(c2) > 0) {
            throw new IllegalArgumentException("lowerBound must be <= upperBound");
        }
        return new Range<>(c, c2, false, false);
    }

    public static <C extends Comparable> Range<C> open(C c, C c2) {
        if (c == null || c2 == null) {
            throw null;
        }
        if (c.compareTo(c2) > 0) {
            throw new IllegalArgumentException("lowerBound must be <= upperBound");
        }
        return new Range<>(c, c2, true, true);
    }

    public static <C extends Comparable> Range<C> openClosed(C c, C c2) {
        if (c == null || c2 == null) {
            throw null;
        }
        if (c.compareTo(c2) > 0) {
            throw new IllegalArgumentException("lowerBound must be <= upperBound");
        }
        return new Range<>(c, c2, true, false);
    }

    public static <C extends Comparable> Range<C> closedOpen(C c, C c2) {
        if (c == null || c2 == null) {
            throw null;
        }
        if (c.compareTo(c2) > 0) {
            throw new IllegalArgumentException("lowerBound must be <= upperBound");
        }
        return new Range<>(c, c2, false, true);
    }

    public static <C extends Comparable> Range<C> atLeast(C c) {
        c.getClass();
        return new Range<>(c, null, false, false);
    }

    public static <C extends Comparable> Range<C> atMost(C c) {
        c.getClass();
        return new Range<>(null, c, false, false);
    }

    public static <C extends Comparable> Range<C> allValues() {
        return new Range<>();
    }

    private Range(C c, C c2, boolean z, boolean z2) {
        this.lowerBound = c;
        this.upperBound = c2;
        this.lowerOpen = z;
        this.upperOpen = z2;
        this.allValues = false;
    }

    private Range() {
        this.allValues = true;
        this.lowerBound = null;
        this.upperBound = null;
        this.lowerOpen = false;
        this.upperOpen = false;
    }

    public boolean isEmpty() {
        if (this.allValues || !Objects.equals(this.lowerBound, this.upperBound)) {
            return false;
        }
        return this.lowerOpen || this.upperOpen;
    }

    public C getLowerBound() {
        return this.lowerBound;
    }

    public C getUpperBound() {
        return this.upperBound;
    }

    public boolean openLowerBound() {
        return this.lowerOpen;
    }

    public boolean openUpperBound() {
        return this.upperOpen;
    }

    public boolean hasAllValues() {
        return this.allValues;
    }

    public boolean hasLowerBound() {
        return this.lowerBound != null;
    }

    public boolean hasUpperBound() {
        return this.upperBound != null;
    }

    public boolean contains(C c) {
        if (c == null) {
            return false;
        }
        if (this.allValues) {
            return true;
        }
        C c2 = this.lowerBound;
        if (c2 != null && ((this.lowerOpen && c.compareTo(c2) == 0) || c.compareTo(this.lowerBound) < 0)) {
            return false;
        }
        C c3 = this.upperBound;
        return c3 == null || (!(this.upperOpen && c.compareTo(c3) == 0) && c.compareTo(this.upperBound) <= 0);
    }

    public boolean isConnected(Range<C> range) {
        if (hasLowerBound() && range.hasUpperBound() && this.lowerBound.compareTo(range.getUpperBound()) > 0) {
            return false;
        }
        return (hasUpperBound() && range.hasLowerBound() && range.getLowerBound().compareTo(this.upperBound) > 0) ? false : true;
    }

    public Range<C> intersection(Range<C> range) {
        if (!isConnected(range)) {
            return null;
        }
        Range<C> range2 = (!(hasLowerBound() && range.hasLowerBound()) ? hasLowerBound() : !(!Objects.equals(this.lowerBound, range.getLowerBound()) ? this.lowerBound.compareTo(range.getLowerBound()) > 0 : this.lowerOpen)) ? range : this;
        if (!hasUpperBound() || !range.hasUpperBound() ? hasUpperBound() : !(!Objects.equals(this.upperBound, range.getUpperBound()) ? this.upperBound.compareTo(range.getUpperBound()) >= 0 : !this.upperOpen)) {
            range = this;
        }
        return new Range<>(range2.getLowerBound(), range.getUpperBound(), range2.openLowerBound(), range.openUpperBound());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.allValues == range.hasAllValues() && Objects.equals(this.lowerBound, range.lowerBound) && Objects.equals(this.upperBound, range.upperBound) && this.lowerOpen == range.openLowerBound() && this.upperOpen == range.openUpperBound();
    }

    public String toString() {
        String str;
        if (this.allValues) {
            return "[*]";
        }
        if (this.lowerOpen) {
            str = "(";
        } else {
            str = "[";
        }
        String str2 = ((str + this.lowerBound) + ", ") + this.upperBound;
        if (this.upperOpen) {
            return str2 + ")";
        }
        return str2 + "]";
    }
}
