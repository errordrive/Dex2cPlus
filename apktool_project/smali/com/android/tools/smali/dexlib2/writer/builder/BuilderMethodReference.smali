.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "BuilderMethodReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field final definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field index:I

.field final name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 48
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    .line 49
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->getParameterTypes()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return-void
.end method
