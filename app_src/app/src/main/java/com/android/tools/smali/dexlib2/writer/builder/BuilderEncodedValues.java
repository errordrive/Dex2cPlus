package com.android.tools.smali.dexlib2.writer.builder;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.tools.smali.dexlib2.base.value.BaseAnnotationEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseArrayEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseBooleanEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseEnumEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseFieldEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseMethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseNullEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseStringEncodedValue;
import com.android.tools.smali.dexlib2.base.value.BaseTypeEncodedValue;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableByteEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableCharEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableDoubleEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableFloatEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableIntEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableLongEncodedValue;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableShortEncodedValue;
import com.android.tools.smali.util.ExceptionWithContext;
import java.util.List;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public abstract class BuilderEncodedValues {

    public interface BuilderEncodedValue extends EncodedValue {
    }

    public static class BuilderAnnotationEncodedValue extends BaseAnnotationEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final Set<? extends BuilderAnnotationElement> elements;

        @Nonnull
        final BuilderTypeReference typeReference;

        BuilderAnnotationEncodedValue(@Nonnull BuilderTypeReference builderTypeReference, @Nonnull Set<? extends BuilderAnnotationElement> set) {
            this.typeReference = builderTypeReference;
            this.elements = set;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue, com.android.tools.smali.dexlib2.iface.BasicAnnotation
        @Nonnull
        public String getType() {
            return this.typeReference.getType();
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue, com.android.tools.smali.dexlib2.iface.BasicAnnotation
        @Nonnull
        public Set<? extends BuilderAnnotationElement> getElements() {
            return this.elements;
        }
    }

    public static class BuilderArrayEncodedValue extends BaseArrayEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final List<? extends BuilderEncodedValue> elements;
        int offset = 0;

        BuilderArrayEncodedValue(@Nonnull List<? extends BuilderEncodedValue> list) {
            this.elements = list;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue
        @Nonnull
        public List<? extends EncodedValue> getValue() {
            return this.elements;
        }
    }

    @Nonnull
    public static BuilderEncodedValue defaultValueForType(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return new BuilderFloatEncodedValue(0.0f);
        }
        if (cCharAt != 'L') {
            if (cCharAt == 'S') {
                return new BuilderShortEncodedValue((short) 0);
            }
            if (cCharAt == 'I') {
                return new BuilderIntEncodedValue(0);
            }
            if (cCharAt == 'J') {
                return new BuilderLongEncodedValue(0L);
            }
            if (cCharAt == 'Z') {
                return BuilderBooleanEncodedValue.FALSE_VALUE;
            }
            if (cCharAt != '[') {
                switch (cCharAt) {
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                        return new BuilderByteEncodedValue((byte) 0);
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                        return new BuilderCharEncodedValue((char) 0);
                    case HeaderItem.TYPE_START_OFFSET /* 68 */:
                        return new BuilderDoubleEncodedValue(0.0d);
                    default:
                        throw new ExceptionWithContext("Unrecognized type: %s", str);
                }
            }
        }
        return BuilderNullEncodedValue.INSTANCE;
    }

    public static class BuilderBooleanEncodedValue extends BaseBooleanEncodedValue implements BuilderEncodedValue {
        private final boolean value;
        public static final BuilderBooleanEncodedValue TRUE_VALUE = new BuilderBooleanEncodedValue(true);
        public static final BuilderBooleanEncodedValue FALSE_VALUE = new BuilderBooleanEncodedValue(false);

        private BuilderBooleanEncodedValue(boolean z) {
            this.value = z;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.BooleanEncodedValue
        public boolean getValue() {
            return this.value;
        }
    }

    public static class BuilderByteEncodedValue extends ImmutableByteEncodedValue implements BuilderEncodedValue {
        public BuilderByteEncodedValue(byte b) {
            super(b);
        }
    }

    public static class BuilderCharEncodedValue extends ImmutableCharEncodedValue implements BuilderEncodedValue {
        public BuilderCharEncodedValue(char c) {
            super(c);
        }
    }

    public static class BuilderDoubleEncodedValue extends ImmutableDoubleEncodedValue implements BuilderEncodedValue {
        public BuilderDoubleEncodedValue(double d) {
            super(d);
        }
    }

    public static class BuilderEnumEncodedValue extends BaseEnumEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderFieldReference enumReference;

        BuilderEnumEncodedValue(@Nonnull BuilderFieldReference builderFieldReference) {
            this.enumReference = builderFieldReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.EnumEncodedValue
        @Nonnull
        public BuilderFieldReference getValue() {
            return this.enumReference;
        }
    }

    public static class BuilderFieldEncodedValue extends BaseFieldEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderFieldReference fieldReference;

        BuilderFieldEncodedValue(@Nonnull BuilderFieldReference builderFieldReference) {
            this.fieldReference = builderFieldReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.FieldEncodedValue
        @Nonnull
        public BuilderFieldReference getValue() {
            return this.fieldReference;
        }
    }

    public static class BuilderFloatEncodedValue extends ImmutableFloatEncodedValue implements BuilderEncodedValue {
        public BuilderFloatEncodedValue(float f) {
            super(f);
        }
    }

    public static class BuilderIntEncodedValue extends ImmutableIntEncodedValue implements BuilderEncodedValue {
        public BuilderIntEncodedValue(int i) {
            super(i);
        }
    }

    public static class BuilderLongEncodedValue extends ImmutableLongEncodedValue implements BuilderEncodedValue {
        public BuilderLongEncodedValue(long j) {
            super(j);
        }
    }

    public static class BuilderMethodEncodedValue extends BaseMethodEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderMethodReference methodReference;

        BuilderMethodEncodedValue(@Nonnull BuilderMethodReference builderMethodReference) {
            this.methodReference = builderMethodReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue
        public BuilderMethodReference getValue() {
            return this.methodReference;
        }
    }

    public static class BuilderNullEncodedValue extends BaseNullEncodedValue implements BuilderEncodedValue {
        public static final BuilderNullEncodedValue INSTANCE = new BuilderNullEncodedValue();

        private BuilderNullEncodedValue() {
        }
    }

    public static class BuilderShortEncodedValue extends ImmutableShortEncodedValue implements BuilderEncodedValue {
        public BuilderShortEncodedValue(short s) {
            super(s);
        }
    }

    public static class BuilderStringEncodedValue extends BaseStringEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderStringReference stringReference;

        BuilderStringEncodedValue(@Nonnull BuilderStringReference builderStringReference) {
            this.stringReference = builderStringReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.StringEncodedValue
        @Nonnull
        public String getValue() {
            return this.stringReference.getString();
        }
    }

    public static class BuilderTypeEncodedValue extends BaseTypeEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderTypeReference typeReference;

        BuilderTypeEncodedValue(@Nonnull BuilderTypeReference builderTypeReference) {
            this.typeReference = builderTypeReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue
        @Nonnull
        public String getValue() {
            return this.typeReference.getType();
        }
    }

    public static class BuilderMethodTypeEncodedValue extends BaseMethodTypeEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderMethodProtoReference methodProtoReference;

        public BuilderMethodTypeEncodedValue(@Nonnull BuilderMethodProtoReference builderMethodProtoReference) {
            this.methodProtoReference = builderMethodProtoReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue
        @Nonnull
        public BuilderMethodProtoReference getValue() {
            return this.methodProtoReference;
        }
    }

    public static class BuilderMethodHandleEncodedValue extends BaseMethodHandleEncodedValue implements BuilderEncodedValue {

        @Nonnull
        final BuilderMethodHandleReference methodHandleReference;

        public BuilderMethodHandleEncodedValue(@Nonnull BuilderMethodHandleReference builderMethodHandleReference) {
            this.methodHandleReference = builderMethodHandleReference;
        }

        @Override // com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue
        @Nonnull
        public BuilderMethodHandleReference getValue() {
            return this.methodHandleReference;
        }
    }
}
