.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;
.source "ImmutableMethodHandleReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final memberReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodHandleType:I


# direct methods
.method public constructor <init>(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->methodHandleType:I

    .line 54
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReferenceFactory;->of(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->memberReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->methodHandleType:I

    .line 49
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->memberReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
    .locals 3
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    return-object p0

    .line 62
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid method handle type: %d"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 79
    :pswitch_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 78
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object p0

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 70
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object p0

    .line 84
    :goto_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;-><init>(ILcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->memberReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-object v0
.end method

.method public getMethodHandleType()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->methodHandleType:I

    return v0
.end method
