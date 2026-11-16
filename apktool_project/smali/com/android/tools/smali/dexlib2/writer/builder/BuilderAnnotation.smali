.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;
.source "BuilderAnnotation.java"


# instance fields
.field final elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field offset:I

.field final type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field visibility:I


# direct methods
.method public constructor <init>(ILcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Ljava/util/Set;)V
    .locals 1
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    .line 47
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->visibility:I

    .line 48
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 49
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->elements:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->elements:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->visibility:I

    return v0
.end method
