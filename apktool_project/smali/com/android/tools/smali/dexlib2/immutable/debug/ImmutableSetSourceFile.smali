.class public Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;
.super Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.source "ImmutableSetSourceFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;


# instance fields
.field protected final sourceFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    .line 47
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    .line 56
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getCodeAddress()I

    move-result v1

    .line 57
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getSourceFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile$1;-><init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;)V

    return-object v0
.end method
