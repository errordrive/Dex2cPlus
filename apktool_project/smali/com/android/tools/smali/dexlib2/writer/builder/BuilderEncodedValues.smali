.class public abstract Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.super Ljava/lang/Object;
.source "BuilderEncodedValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;,
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValueForType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    .line 98
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

    .line 119
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Unrecognized type: %s"

    invoke-direct {v1, p0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 114
    :pswitch_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;-><init>(D)V

    return-object p0

    .line 106
    :pswitch_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;-><init>(C)V

    return-object p0

    .line 102
    :pswitch_2
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;-><init>(B)V

    return-object p0

    .line 100
    :cond_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->FALSE_VALUE:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p0

    .line 110
    :cond_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;-><init>(J)V

    return-object p0

    .line 108
    :cond_2
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;-><init>(I)V

    return-object p0

    .line 104
    :cond_3
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;-><init>(S)V

    return-object p0

    .line 117
    :cond_4
    sget-object p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;

    return-object p0

    .line 112
    :cond_5
    new-instance p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;-><init>(F)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
