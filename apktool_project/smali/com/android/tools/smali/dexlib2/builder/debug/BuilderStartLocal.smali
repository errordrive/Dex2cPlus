.class public Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
.source "BuilderStartLocal.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;


# instance fields
.field private final name:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final register:I

.field private final signature:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->register:I

    .line 52
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->name:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    .line 53
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->type:Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 54
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->signature:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->name:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->name:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->signature:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->signature:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->type:Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;->type:Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    return-object v0
.end method
