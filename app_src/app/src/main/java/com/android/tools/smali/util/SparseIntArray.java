package com.android.tools.smali.util;

/* JADX INFO: loaded from: classes.dex */
public class SparseIntArray {
    private int[] mKeys;
    private int mSize;
    private int[] mValues;

    public SparseIntArray() {
        this(10);
    }

    public SparseIntArray(int i) {
        this.mKeys = new int[i];
        this.mValues = new int[i];
        this.mSize = 0;
    }

    public int get(int i) {
        return get(i, 0);
    }

    public int get(int i, int i2) {
        int iBinarySearch = binarySearch(this.mKeys, 0, this.mSize, i);
        return iBinarySearch < 0 ? i2 : this.mValues[iBinarySearch];
    }

    public int getClosestSmaller(int i) {
        int iBinarySearch = binarySearch(this.mKeys, 0, this.mSize, i);
        if (iBinarySearch < 0) {
            int i2 = ~iBinarySearch;
            if (i2 > 0) {
                i2--;
            }
            return this.mValues[i2];
        }
        return this.mValues[iBinarySearch];
    }

    public void delete(int i) {
        int iBinarySearch = binarySearch(this.mKeys, 0, this.mSize, i);
        if (iBinarySearch >= 0) {
            removeAt(iBinarySearch);
        }
    }

    public void removeAt(int i) {
        int[] iArr = this.mKeys;
        int i2 = i + 1;
        System.arraycopy(iArr, i2, iArr, i, this.mSize - i2);
        int[] iArr2 = this.mValues;
        System.arraycopy(iArr2, i2, iArr2, i, this.mSize - i2);
        this.mSize--;
    }

    public void put(int i, int i2) {
        int iBinarySearch = binarySearch(this.mKeys, 0, this.mSize, i);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = i2;
            return;
        }
        int i3 = ~iBinarySearch;
        int i4 = this.mSize;
        int[] iArr = this.mKeys;
        if (i4 >= iArr.length) {
            int iMax = Math.max(i4 + 1, iArr.length * 2);
            int[] iArr2 = new int[iMax];
            int[] iArr3 = new int[iMax];
            int[] iArr4 = this.mKeys;
            System.arraycopy(iArr4, 0, iArr2, 0, iArr4.length);
            int[] iArr5 = this.mValues;
            System.arraycopy(iArr5, 0, iArr3, 0, iArr5.length);
            this.mKeys = iArr2;
            this.mValues = iArr3;
        }
        int i5 = this.mSize;
        if (i5 - i3 != 0) {
            int[] iArr6 = this.mKeys;
            int i6 = i3 + 1;
            System.arraycopy(iArr6, i3, iArr6, i6, i5 - i3);
            int[] iArr7 = this.mValues;
            System.arraycopy(iArr7, i3, iArr7, i6, this.mSize - i3);
        }
        this.mKeys[i3] = i;
        this.mValues[i3] = i2;
        this.mSize++;
    }

    public int size() {
        return this.mSize;
    }

    public int keyAt(int i) {
        return this.mKeys[i];
    }

    public int valueAt(int i) {
        return this.mValues[i];
    }

    public int indexOfKey(int i) {
        return binarySearch(this.mKeys, 0, this.mSize, i);
    }

    public int indexOfValue(int i) {
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public void clear() {
        this.mSize = 0;
    }

    public void append(int i, int i2) {
        int i3 = this.mSize;
        if (i3 != 0 && i <= this.mKeys[i3 - 1]) {
            put(i, i2);
            return;
        }
        int[] iArr = this.mKeys;
        if (i3 >= iArr.length) {
            int iMax = Math.max(i3 + 1, iArr.length * 2);
            int[] iArr2 = new int[iMax];
            int[] iArr3 = new int[iMax];
            int[] iArr4 = this.mKeys;
            System.arraycopy(iArr4, 0, iArr2, 0, iArr4.length);
            int[] iArr5 = this.mValues;
            System.arraycopy(iArr5, 0, iArr3, 0, iArr5.length);
            this.mKeys = iArr2;
            this.mValues = iArr3;
        }
        this.mKeys[i3] = i;
        this.mValues[i3] = i2;
        this.mSize = i3 + 1;
    }

    private static int binarySearch(int[] iArr, int i, int i2, int i3) {
        int i4 = i2 + i;
        int i5 = i - 1;
        int i6 = i4;
        while (i6 - i5 > 1) {
            int i7 = (i6 + i5) / 2;
            if (iArr[i7] < i3) {
                i5 = i7;
            } else {
                i6 = i7;
            }
        }
        if (i6 == i4) {
            return ~i4;
        }
        return iArr[i6] == i3 ? i6 : ~i6;
    }
}
