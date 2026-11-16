package com.android.tools.smali.dexlib2.writer.util;

import com.android.tools.smali.dexlib2.base.value.BaseArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValueFactory;
import com.android.tools.smali.dexlib2.util.EncodedValueUtils;
import com.android.tools.smali.util.AbstractForwardSequentialList;
import com.android.tools.smali.util.CollectionUtils;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class StaticInitializerUtil {
    private static final Predicate<Field> HAS_INITIALIZER = new Predicate<Field>() { // from class: com.android.tools.smali.dexlib2.writer.util.StaticInitializerUtil.2
        @Override // java.util.function.Predicate
        public boolean test(Field field) {
            EncodedValue initialValue = field.getInitialValue();
            return (initialValue == null || EncodedValueUtils.isDefaultValue(initialValue)) ? false : true;
        }
    };
    private static final Function<Field, EncodedValue> GET_INITIAL_VALUE = new Function<Field, EncodedValue>() { // from class: com.android.tools.smali.dexlib2.writer.util.StaticInitializerUtil.3
        @Override // java.util.function.Function
        public EncodedValue apply(Field field) {
            EncodedValue initialValue = field.getInitialValue();
            return initialValue == null ? ImmutableEncodedValueFactory.defaultValueForType(field.getType()) : initialValue;
        }
    };

    @Nullable
    public static ArrayEncodedValue getStaticInitializers(@Nonnull final SortedSet<? extends Field> sortedSet) {
        final int iLastIndexOf = CollectionUtils.lastIndexOf(sortedSet, HAS_INITIALIZER);
        if (iLastIndexOf > -1) {
            return new BaseArrayEncodedValue() { // from class: com.android.tools.smali.dexlib2.writer.util.StaticInitializerUtil.1
                @Override // com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue
                @Nonnull
                public List<? extends EncodedValue> getValue() {
                    return new AbstractForwardSequentialList<EncodedValue>() { // from class: com.android.tools.smali.dexlib2.writer.util.StaticInitializerUtil.1.1
                        @Override // com.android.tools.smali.util.AbstractForwardSequentialList, java.util.AbstractSequentialList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
                        @Nonnull
                        public Iterator<EncodedValue> iterator() {
                            return ((List) sortedSet.stream().limit(iLastIndexOf + 1).map(StaticInitializerUtil.GET_INITIAL_VALUE).collect(Collectors.toList())).iterator();
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                        public int size() {
                            return iLastIndexOf + 1;
                        }
                    };
                }
            };
        }
        return null;
    }
}
