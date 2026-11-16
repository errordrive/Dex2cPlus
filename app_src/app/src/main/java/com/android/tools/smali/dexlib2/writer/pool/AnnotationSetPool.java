package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.writer.AnnotationSetSection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class AnnotationSetPool extends BaseNullableOffsetPool<Set<? extends Annotation>> implements AnnotationSetSection<Annotation, Set<? extends Annotation>> {
    @Override // com.android.tools.smali.dexlib2.writer.AnnotationSetSection
    @Nonnull
    public Collection<? extends Annotation> getAnnotations(@Nonnull Set<? extends Annotation> set) {
        return set;
    }

    public AnnotationSetPool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull Set<? extends Annotation> set) {
        if (set.size() <= 0 || ((Integer) this.internedItems.put((Key) set, (Value) 0)) != null) {
            return;
        }
        Iterator<? extends Annotation> it = set.iterator();
        while (it.hasNext()) {
            ((AnnotationPool) this.dexPool.annotationSection).intern(it.next());
        }
    }
}
