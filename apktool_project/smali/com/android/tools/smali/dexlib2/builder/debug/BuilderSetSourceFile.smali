.class public Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
.source "BuilderSetSourceFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;


# instance fields
.field private final sourceFile:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    return-void
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

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    return-object v0
.end method
