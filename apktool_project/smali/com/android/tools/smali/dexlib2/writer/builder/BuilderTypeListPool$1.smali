.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderTypeListPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;Ljava/util/Collection;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 91
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 89
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 95
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    .line 96
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 89
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;I)I

    move-result p1

    return p1
.end method
