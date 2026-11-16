.class public Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;
.source "MethodHandlePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getFieldReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 0

    .line 74
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    return-object p1
.end method

.method public getMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 0

    .line 79
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 67
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Invalid method handle type: %d"

    invoke-direct {v0, p1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    :cond_0
    return-void

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
