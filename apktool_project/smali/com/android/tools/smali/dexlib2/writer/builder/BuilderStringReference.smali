.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;
.source "BuilderStringReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field index:I

.field final string:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->index:I

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->index:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->string:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->index:I

    return-void
.end method
