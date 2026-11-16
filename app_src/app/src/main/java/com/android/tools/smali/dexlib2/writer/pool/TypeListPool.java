package com.android.tools.smali.dexlib2.writer.pool;

import com.android.tools.smali.dexlib2.writer.TypeListSection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TypeListPool extends BaseNullableOffsetPool<Key<? extends Collection<? extends CharSequence>>> implements TypeListSection<CharSequence, Key<? extends Collection<? extends CharSequence>>> {
    public TypeListPool(@Nonnull DexPool dexPool) {
        super(dexPool);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void intern(@Nonnull Collection<? extends CharSequence> collection) {
        if (collection.size() > 0) {
            if (((Integer) this.internedItems.put((Key) new Key(collection), (Value) 0)) == null) {
                Iterator<? extends CharSequence> it = collection.iterator();
                while (it.hasNext()) {
                    ((TypePool) this.dexPool.typeSection).intern(it.next());
                }
            }
        }
    }

    @Override // com.android.tools.smali.dexlib2.writer.TypeListSection
    @Nonnull
    public Collection<? extends CharSequence> getTypes(Key<? extends Collection<? extends CharSequence>> key) {
        if (key == null) {
            return Collections.EMPTY_LIST;
        }
        return key.types;
    }

    @Override // com.android.tools.smali.dexlib2.writer.pool.BaseNullableOffsetPool, com.android.tools.smali.dexlib2.writer.NullableOffsetSection
    public int getNullableItemOffset(@Nullable Key<? extends Collection<? extends CharSequence>> key) {
        if (key == null || key.types.size() == 0) {
            return 0;
        }
        return super.getNullableItemOffset(key);
    }

    public static class Key<TypeCollection extends Collection<? extends CharSequence>> implements Comparable<Key<? extends Collection<? extends CharSequence>>> {

        @Nonnull
        TypeCollection types;

        public Key(@Nonnull TypeCollection typecollection) {
            this.types = typecollection;
        }

        public int hashCode() {
            Iterator it = this.types.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                iHashCode = (iHashCode * 31) + ((CharSequence) it.next()).toString().hashCode();
            }
            return iHashCode;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (this.types.size() != key.types.size()) {
                return false;
            }
            Iterator it = key.types.iterator();
            Iterator it2 = this.types.iterator();
            while (it2.hasNext()) {
                if (!((CharSequence) it2.next()).toString().equals(((CharSequence) it.next()).toString())) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator it = this.types.iterator();
            while (it.hasNext()) {
                sb.append(((CharSequence) it.next()).toString());
            }
            return sb.toString();
        }

        @Override // java.lang.Comparable
        public int compareTo(Key<? extends Collection<? extends CharSequence>> key) {
            Iterator it = key.types.iterator();
            for (CharSequence charSequence : this.types) {
                if (!it.hasNext()) {
                    return 1;
                }
                int iCompareTo = charSequence.toString().compareTo(((CharSequence) it.next()).toString());
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
            }
            return it.hasNext() ? -1 : 0;
        }
    }
}
