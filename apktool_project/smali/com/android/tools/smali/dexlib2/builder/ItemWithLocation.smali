.class public abstract Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;
.super Ljava/lang/Object;
.source "ItemWithLocation.java"


# instance fields
.field location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaced()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-void
.end method
