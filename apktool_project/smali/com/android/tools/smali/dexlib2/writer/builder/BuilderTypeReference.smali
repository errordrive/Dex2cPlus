.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "BuilderTypeReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field index:I

.field final stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->index:I

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->index:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->index:I

    return-void
.end method
