.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
.super Ljava/util/AbstractList;
.source "BuilderTypeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        ">;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;


# instance fields
.field offset:I

.field final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->get(I)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getOffset()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return v0
.end method

.method public setOffset(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
