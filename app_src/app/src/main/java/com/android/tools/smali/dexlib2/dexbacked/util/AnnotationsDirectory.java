package com.android.tools.smali.dexlib2.dexbacked.util;

import com.android.tools.smali.dexlib2.dexbacked.DexBackedAnnotation;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnnotationsDirectory {
    public static final AnnotationsDirectory EMPTY = new AnnotationsDirectory() { // from class: com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.1
        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        public int getFieldAnnotationCount() {
            return 0;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public Set<? extends DexBackedAnnotation> getClassAnnotations() {
            return Collections.EMPTY_SET;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getFieldAnnotationIterator() {
            return AnnotationIterator.EMPTY;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getMethodAnnotationIterator() {
            return AnnotationIterator.EMPTY;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getParameterAnnotationIterator() {
            return AnnotationIterator.EMPTY;
        }
    };

    public interface AnnotationIterator {
        public static final AnnotationIterator EMPTY = new AnnotationIterator() { // from class: com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.AnnotationIterator.1
            @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.AnnotationIterator
            public void reset() {
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.AnnotationIterator
            public int seekTo(int i) {
                return 0;
            }
        };

        void reset();

        int seekTo(int i);
    }

    @Nonnull
    public abstract Set<? extends DexBackedAnnotation> getClassAnnotations();

    public abstract int getFieldAnnotationCount();

    @Nonnull
    public abstract AnnotationIterator getFieldAnnotationIterator();

    @Nonnull
    public abstract AnnotationIterator getMethodAnnotationIterator();

    @Nonnull
    public abstract AnnotationIterator getParameterAnnotationIterator();

    @Nonnull
    public static AnnotationsDirectory newOrEmpty(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
        if (i == 0) {
            return EMPTY;
        }
        return new AnnotationsDirectoryImpl(dexBackedDexFile, i);
    }

    @Nonnull
    public static Set<? extends DexBackedAnnotation> getAnnotations(@Nonnull final DexBackedDexFile dexBackedDexFile, final int i) {
        if (i != 0) {
            final int smallUint = dexBackedDexFile.getDataBuffer().readSmallUint(i);
            return new FixedSizeSet<DexBackedAnnotation>() { // from class: com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeSet
                @Nonnull
                public DexBackedAnnotation readItem(int i2) {
                    return new DexBackedAnnotation(dexBackedDexFile, dexBackedDexFile.getDataBuffer().readSmallUint(i + 4 + (i2 * 4)));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return smallUint;
                }
            };
        }
        return Collections.EMPTY_SET;
    }

    @Nonnull
    public static List<Set<? extends DexBackedAnnotation>> getParameterAnnotations(@Nonnull final DexBackedDexFile dexBackedDexFile, final int i) {
        if (i > 0) {
            final int smallUint = dexBackedDexFile.getDataBuffer().readSmallUint(i);
            return new FixedSizeList<Set<? extends DexBackedAnnotation>>() { // from class: com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.3
                @Override // com.android.tools.smali.dexlib2.dexbacked.util.FixedSizeList
                @Nonnull
                public Set<? extends DexBackedAnnotation> readItem(int i2) {
                    return AnnotationsDirectory.getAnnotations(dexBackedDexFile, dexBackedDexFile.getDataBuffer().readSmallUint(i + 4 + (i2 * 4)));
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return smallUint;
                }
            };
        }
        return Collections.EMPTY_LIST;
    }

    private static class AnnotationsDirectoryImpl extends AnnotationsDirectory {
        private static final int ANNOTATIONS_START_OFFSET = 16;
        private static final int FIELD_ANNOTATION_SIZE = 8;
        private static final int FIELD_COUNT_OFFSET = 4;
        private static final int METHOD_ANNOTATION_SIZE = 8;
        private static final int METHOD_COUNT_OFFSET = 8;
        private static final int PARAMETER_COUNT_OFFSET = 12;

        @Nonnull
        public final DexBackedDexFile dexFile;
        private final int directoryOffset;

        public AnnotationsDirectoryImpl(@Nonnull DexBackedDexFile dexBackedDexFile, int i) {
            this.dexFile = dexBackedDexFile;
            this.directoryOffset = i;
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        public int getFieldAnnotationCount() {
            return this.dexFile.getDataBuffer().readSmallUint(this.directoryOffset + 4);
        }

        public int getMethodAnnotationCount() {
            return this.dexFile.getDataBuffer().readSmallUint(this.directoryOffset + 8);
        }

        public int getParameterAnnotationCount() {
            return this.dexFile.getDataBuffer().readSmallUint(this.directoryOffset + 12);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public Set<? extends DexBackedAnnotation> getClassAnnotations() {
            DexBackedDexFile dexBackedDexFile = this.dexFile;
            return getAnnotations(dexBackedDexFile, dexBackedDexFile.getDataBuffer().readSmallUint(this.directoryOffset));
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getFieldAnnotationIterator() {
            int fieldAnnotationCount = getFieldAnnotationCount();
            if (fieldAnnotationCount == 0) {
                return AnnotationIterator.EMPTY;
            }
            return new AnnotationIteratorImpl(this.directoryOffset + 16, fieldAnnotationCount);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getMethodAnnotationIterator() {
            int methodAnnotationCount = getMethodAnnotationCount();
            if (methodAnnotationCount == 0) {
                return AnnotationIterator.EMPTY;
            }
            return new AnnotationIteratorImpl(this.directoryOffset + 16 + (getFieldAnnotationCount() * 8), methodAnnotationCount);
        }

        @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory
        @Nonnull
        public AnnotationIterator getParameterAnnotationIterator() {
            int parameterAnnotationCount = getParameterAnnotationCount();
            if (parameterAnnotationCount == 0) {
                return AnnotationIterator.EMPTY;
            }
            return new AnnotationIteratorImpl(this.directoryOffset + 16 + (getFieldAnnotationCount() * 8) + (getMethodAnnotationCount() * 8), parameterAnnotationCount);
        }

        private class AnnotationIteratorImpl implements AnnotationIterator {
            private int currentIndex = 0;
            private int currentItemIndex;
            private final int size;
            private final int startOffset;

            public AnnotationIteratorImpl(int i, int i2) {
                this.startOffset = i;
                this.size = i2;
                this.currentItemIndex = AnnotationsDirectoryImpl.this.dexFile.getDataBuffer().readSmallUint(i);
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.AnnotationIterator
            public int seekTo(int i) {
                int i2;
                while (true) {
                    i2 = this.currentItemIndex;
                    if (i2 >= i) {
                        break;
                    }
                    int i3 = this.currentIndex;
                    if (i3 + 1 >= this.size) {
                        break;
                    }
                    this.currentIndex = i3 + 1;
                    this.currentItemIndex = AnnotationsDirectoryImpl.this.dexFile.getDataBuffer().readSmallUint(this.startOffset + (this.currentIndex * 8));
                }
                if (i2 == i) {
                    return AnnotationsDirectoryImpl.this.dexFile.getDataBuffer().readSmallUint(this.startOffset + (this.currentIndex * 8) + 4);
                }
                return 0;
            }

            @Override // com.android.tools.smali.dexlib2.dexbacked.util.AnnotationsDirectory.AnnotationIterator
            public void reset() {
                this.currentItemIndex = AnnotationsDirectoryImpl.this.dexFile.getDataBuffer().readSmallUint(this.startOffset);
                this.currentIndex = 0;
            }
        }
    }
}
