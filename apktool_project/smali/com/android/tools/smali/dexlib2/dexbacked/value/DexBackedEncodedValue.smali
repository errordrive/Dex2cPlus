.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;
.super Ljava/lang/Object;
.source "DexBackedEncodedValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 8
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v3

    and-int/lit8 v4, v3, 0x1f

    ushr-int/lit8 v3, v3, 0x5

    if-eqz v4, :cond_7

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    const/16 v7, 0x10

    if-eq v4, v7, :cond_2

    const/16 v7, 0x11

    if-eq v4, v7, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 120
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string p1, "Invalid encoded_value type: 0x%x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-direct {p0, p1, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 111
    :pswitch_0
    invoke-static {v3, v2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 112
    :goto_0
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->forBoolean(Z)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_1
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 109
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    .line 105
    :pswitch_2
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 106
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-object v3

    .line 102
    :pswitch_3
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 103
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-object v3

    .line 99
    :pswitch_4
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 100
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEnumEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEnumEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 96
    :pswitch_5
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 97
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 93
    :pswitch_6
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 94
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 90
    :pswitch_7
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 91
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 87
    :pswitch_8
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 88
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedStringEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedStringEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 114
    :pswitch_9
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 115
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodHandleEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodHandleEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 117
    :pswitch_a
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 118
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodTypeEncodedValue;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedMethodTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    .line 83
    :cond_1
    invoke-static {v3, v6}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 84
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    add-int/2addr v3, v2

    .line 85
    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedRightExtendedLong(I)J

    move-result-wide v3

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object p0

    .line 79
    :cond_2
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 80
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    add-int/2addr v3, v2

    .line 81
    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedRightExtendedInt(I)I

    move-result p1

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object p0

    .line 73
    :cond_3
    invoke-static {v3, v5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 74
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableIntEncodedValue;-><init>(I)V

    return-object p0

    .line 70
    :cond_4
    invoke-static {v3, v2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 71
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object p0

    .line 67
    :cond_5
    invoke-static {v3, v2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 68
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p1

    int-to-short p1, p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object p0

    .line 76
    :cond_6
    invoke-static {v3, v6}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 77
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedLong(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object p0

    .line 64
    :cond_7
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkValueArg(II)V

    .line 65
    new-instance p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readByte()I

    move-result p1

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Error while reading encoded value at offset 0x%x"

    invoke-static {p0, p1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/tools/smali/util/ExceptionWithContext;

    move-result-object p0

    throw p0

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

.method public static skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v3

    and-int/lit8 v4, v3, 0x1f

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    const/16 v5, 0x11

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 164
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string v3, "Invalid encoded_value type: 0x%x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-direct {p0, v3, v5}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;->skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-void

    .line 155
    :pswitch_2
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-void

    :cond_0
    :pswitch_3
    ushr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->moveRelative(I)V

    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipByte()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 167
    const-string v0, "Error while skipping encoded value at offset 0x%x"

    invoke-static {p0, v0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/tools/smali/util/ExceptionWithContext;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
