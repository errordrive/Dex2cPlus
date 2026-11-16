package com.android.tools.smali.dexlib2.immutable.value;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.tools.smali.dexlib2.dexbacked.raw.HeaderItem;
import com.android.tools.smali.dexlib2.iface.value.AnnotationEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ArrayEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.BooleanEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ByteEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.CharEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.DoubleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EncodedValue;
import com.android.tools.smali.dexlib2.iface.value.EnumEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FieldEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.FloatEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.IntEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.LongEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodHandleEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.MethodTypeEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.ShortEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.StringEncodedValue;
import com.android.tools.smali.dexlib2.iface.value.TypeEncodedValue;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.ImmutableConverter;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImmutableEncodedValueFactory {
    private static final ImmutableConverter<ImmutableEncodedValue, EncodedValue> CONVERTER = new ImmutableConverter<ImmutableEncodedValue, EncodedValue>() { // from class: com.android.tools.smali.dexlib2.immutable.value.ImmutableEncodedValueFactory.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        public boolean isImmutable(@Nonnull EncodedValue encodedValue) {
            return encodedValue instanceof ImmutableEncodedValue;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.tools.smali.util.ImmutableConverter
        @Nonnull
        public ImmutableEncodedValue makeImmutable(@Nonnull EncodedValue encodedValue) {
            return ImmutableEncodedValueFactory.of(encodedValue);
        }
    };

    @Nonnull
    public static ImmutableEncodedValue of(@Nonnull EncodedValue encodedValue) {
        int valueType = encodedValue.getValueType();
        if (valueType == 0) {
            return ImmutableByteEncodedValue.of((ByteEncodedValue) encodedValue);
        }
        if (valueType == 6) {
            return ImmutableLongEncodedValue.of((LongEncodedValue) encodedValue);
        }
        if (valueType == 2) {
            return ImmutableShortEncodedValue.of((ShortEncodedValue) encodedValue);
        }
        if (valueType == 3) {
            return ImmutableCharEncodedValue.of((CharEncodedValue) encodedValue);
        }
        if (valueType == 4) {
            return ImmutableIntEncodedValue.of((IntEncodedValue) encodedValue);
        }
        if (valueType == 16) {
            return ImmutableFloatEncodedValue.of((FloatEncodedValue) encodedValue);
        }
        if (valueType == 17) {
            return ImmutableDoubleEncodedValue.of((DoubleEncodedValue) encodedValue);
        }
        switch (valueType) {
            case 21:
                return ImmutableMethodTypeEncodedValue.of((MethodTypeEncodedValue) encodedValue);
            case 22:
                return ImmutableMethodHandleEncodedValue.of((MethodHandleEncodedValue) encodedValue);
            case 23:
                return ImmutableStringEncodedValue.of((StringEncodedValue) encodedValue);
            case 24:
                return ImmutableTypeEncodedValue.of((TypeEncodedValue) encodedValue);
            case 25:
                return ImmutableFieldEncodedValue.of((FieldEncodedValue) encodedValue);
            case 26:
                return ImmutableMethodEncodedValue.of((MethodEncodedValue) encodedValue);
            case 27:
                return ImmutableEnumEncodedValue.of((EnumEncodedValue) encodedValue);
            case 28:
                return ImmutableArrayEncodedValue.of((ArrayEncodedValue) encodedValue);
            case 29:
                return ImmutableAnnotationEncodedValue.of((AnnotationEncodedValue) encodedValue);
            case 30:
                return ImmutableNullEncodedValue.INSTANCE;
            case 31:
                return ImmutableBooleanEncodedValue.of((BooleanEncodedValue) encodedValue);
            default:
                throw new IllegalArgumentException("Invalid value type.");
        }
    }

    @Nonnull
    public static EncodedValue defaultValueForType(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return new ImmutableFloatEncodedValue(0.0f);
        }
        if (cCharAt != 'L') {
            if (cCharAt == 'S') {
                return new ImmutableShortEncodedValue((short) 0);
            }
            if (cCharAt == 'I') {
                return new ImmutableIntEncodedValue(0);
            }
            if (cCharAt == 'J') {
                return new ImmutableLongEncodedValue(0L);
            }
            if (cCharAt == 'Z') {
                return ImmutableBooleanEncodedValue.FALSE_VALUE;
            }
            if (cCharAt != '[') {
                switch (cCharAt) {
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                        return new ImmutableByteEncodedValue((byte) 0);
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                        return new ImmutableCharEncodedValue((char) 0);
                    case HeaderItem.TYPE_START_OFFSET /* 68 */:
                        return new ImmutableDoubleEncodedValue(0.0d);
                    default:
                        throw new ExceptionWithContext("Unrecognized type: %s", str);
                }
            }
        }
        return ImmutableNullEncodedValue.INSTANCE;
    }

    @Nullable
    public static ImmutableEncodedValue ofNullable(@Nullable EncodedValue encodedValue) {
        if (encodedValue == null) {
            return null;
        }
        return of(encodedValue);
    }

    @Nonnull
    public static List<ImmutableEncodedValue> immutableListOf(@Nullable Iterable<? extends EncodedValue> iterable) {
        return CONVERTER.toList(iterable);
    }
}
