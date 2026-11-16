.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "BuilderMethod.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# instance fields
.field final accessFlags:I

.field annotationSetRefListOffset:I

.field final annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field codeItemOffset:I

.field final hiddenApiRestrictions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;Ljava/util/List;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            ">;I",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotationSetRefListOffset:I

    .line 53
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->codeItemOffset:I

    .line 61
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    .line 62
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->parameters:Ljava/util/List;

    .line 63
    iput p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->accessFlags:I

    .line 64
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    .line 65
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->hiddenApiRestrictions:Ljava/util/Set;

    .line 66
    iput-object p6, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->hiddenApiRestrictions:Ljava/util/Set;

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getParameterTypes()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
