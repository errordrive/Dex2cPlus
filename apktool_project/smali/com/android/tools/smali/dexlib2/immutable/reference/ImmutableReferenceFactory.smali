.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReferenceFactory;
.super Ljava/lang/Object;
.source "ImmutableReferenceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 91
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Invalid reference type: %d"

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 89
    :pswitch_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;

    move-result-object p0

    return-object p0

    .line 85
    :pswitch_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object p0

    return-object p0

    .line 83
    :pswitch_3
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object p0

    return-object p0

    .line 81
    :pswitch_4
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object p0

    return-object p0

    .line 79
    :pswitch_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    .line 53
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_2

    .line 56
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object p0

    return-object p0

    .line 58
    :cond_2
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_3

    .line 59
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object p0

    return-object p0

    .line 61
    :cond_3
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    if-eqz v0, :cond_4

    .line 62
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object p0

    return-object p0

    .line 64
    :cond_4
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz v0, :cond_5

    .line 65
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;

    move-result-object p0

    return-object p0

    .line 67
    :cond_5
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    if-eqz v0, :cond_6

    .line 68
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object p0

    return-object p0

    .line 70
    :cond_6
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid reference type"

    invoke-direct {p0, v1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
