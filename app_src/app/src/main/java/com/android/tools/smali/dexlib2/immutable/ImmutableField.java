package com.android.tools.smali.dexlib2.immutable;

import com.android.tools.smali.dexlib2.HiddenApiRestriction;
import com.android.tools.smali.dexlib2.base.reference.BaseFieldReference;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.Field;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValueFactory;
import com.android.tools.smali.util.CollectionUtils;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableField extends BaseFieldReference implements Field {
    private static final ImmutableConverter<ImmutableField, Field> CONVERTER = new ImmutableConverter<ImmutableField, Field>() { // from class: com.android.tools.smali.dexlib2.immutable.ImmutableField.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull Field field) {
            return field instanceof ImmutableField;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableField makeImmutable(@Nonnull Field field) {
            return ImmutableField.of(field);
        }
    };
    protected final int accessFlags;

    @Nonnull
    protected final Set<? extends ImmutableAnnotation> annotations;

    @Nonnull
    protected final String definingClass;

    @Nonnull
    protected final Set<HiddenApiRestriction> hiddenApiRestrictions;

    @Nullable
    protected final ImmutableEncodedValue initialValue;

    @Nonnull
    protected final String name;

    @Nonnull
    protected final String type;

    public ImmutableField(@Nonnull String str, @Nonnull String str2, @Nonnull String str3, int i, @Nullable EncodedValue encodedValue, @Nullable Collection<? extends Annotation> collection, @Nullable Set<HiddenApiRestriction> set) {
        Set<HiddenApiRestriction> setUnmodifiableSet;
        this.definingClass = str;
        this.name = str2;
        this.type = str3;
        this.accessFlags = i;
        this.initialValue = ImmutableEncodedValueFactory.ofNullable(encodedValue);
        this.annotations = ImmutableAnnotation.immutableSetOf(collection);
        if (set == null) {
            setUnmodifiableSet = Collections.EMPTY_SET;
        } else {
            setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(set));
        }
        this.hiddenApiRestrictions = setUnmodifiableSet;
    }

    public static ImmutableField of(Field field) {
        if (field instanceof ImmutableField) {
            return (ImmutableField) field;
        }
        return new ImmutableField(field.getDefiningClass(), field.getName(), field.getType(), field.getAccessFlags(), field.getInitialValue(), field.getAnnotations(), field.getHiddenApiRestrictions());
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.FieldReference, com.android.tools.smali.dexlib2.iface.Field, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getDefiningClass() {
        return this.definingClass;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.FieldReference, com.android.tools.smali.dexlib2.iface.Field, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public String getName() {
        return this.name;
    }

    @Override // com.android.tools.smali.dexlib2.iface.reference.FieldReference, com.android.tools.smali.dexlib2.iface.Field
    @Nonnull
    public String getType() {
        return this.type;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Field, com.android.tools.smali.dexlib2.iface.Member
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Field
    public EncodedValue getInitialValue() {
        return this.initialValue;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Field, com.android.tools.smali.dexlib2.iface.Annotatable
    @Nonnull
    public Set<? extends ImmutableAnnotation> getAnnotations() {
        return this.annotations;
    }

    @Override // com.android.tools.smali.dexlib2.iface.Field, com.android.tools.smali.dexlib2.iface.Member
    @Nonnull
    public Set<HiddenApiRestriction> getHiddenApiRestrictions() {
        return this.hiddenApiRestrictions;
    }

    @Nonnull
    public static SortedSet<ImmutableField> immutableSetOf(@Nullable Iterable<? extends Field> iterable) {
        return CONVERTER.toSortedSet(CollectionUtils.naturalOrdering(), iterable);
    }
}
