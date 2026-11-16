.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;
.super Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;
.source "BuilderMethodParameter.java"


# instance fields
.field final annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 47
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    .line 48
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
