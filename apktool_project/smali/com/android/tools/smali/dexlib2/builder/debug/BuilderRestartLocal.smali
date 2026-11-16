.class public Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
.source "BuilderRestartLocal.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;


# instance fields
.field private final register:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;->register:I

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
