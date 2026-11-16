.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;
.super Ljava/lang/Object;
.source "ImmutableEncodedValueFactory.java"


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValueForType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_3

    const/16 v2, 0x49

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    .line 127
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Unrecognized type: %s"

    invoke-direct {v1, p0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 122
    :pswitch_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object p0

    .line 114
    :pswitch_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object p0

    .line 110
    :pswitch_2
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V

    return-object p0

    .line 108
    :cond_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->FALSE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    return-object p0

    .line 118
    :cond_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object p0

    .line 116
    :cond_2
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;-><init>(I)V

    return-object p0

    .line 112
    :cond_3
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object p0

    .line 125
    :cond_4
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    .line 120
    :cond_5
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 142
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :pswitch_0
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_1
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    .line 90
    :pswitch_2
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_3
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_4
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;

    move-result-object p0

    return-object p0

    .line 84
    :pswitch_5
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    move-result-object p0

    return-object p0

    .line 82
    :pswitch_6
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFieldEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFieldEncodedValue;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_7
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableTypeEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableTypeEncodedValue;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_8
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;

    move-result-object p0

    return-object p0

    .line 96
    :pswitch_9
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;

    move-result-object p0

    return-object p0

    .line 98
    :pswitch_a
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    move-result-object p0

    return-object p0

    .line 74
    :cond_1
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    move-result-object p0

    return-object p0

    .line 70
    :cond_2
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;

    move-result-object p0

    return-object p0

    .line 68
    :cond_3
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    move-result-object p0

    return-object p0

    .line 66
    :cond_4
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    move-result-object p0

    return-object p0

    .line 72
    :cond_5
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    move-result-object p0

    return-object p0

    .line 64
    :cond_6
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;->of(Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ofNullable(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;
    .locals 0
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->of(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p0

    return-object p0
.end method
