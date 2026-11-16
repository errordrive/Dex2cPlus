.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;
.source "BuilderMethodProtoReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field index:I

.field final parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final shorty:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->index:I

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->shorty:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    .line 50
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    .line 51
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->index:I

    return v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->index:I

    return-void
.end method
