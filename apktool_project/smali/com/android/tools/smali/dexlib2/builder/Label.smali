.class public Lcom/android/tools/smali/dexlib2/builder/Label;
.super Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;
.source "Label.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/Label;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-void
.end method


# virtual methods
.method public getCodeAddress()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getLocation()Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    return v0
.end method

.method public getLocation()Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/Label;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/Label;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the location of a label that hasn\'t been placed yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
