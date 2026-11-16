.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderMethodPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;Ljava/util/Collection;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 106
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 104
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 110
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    .line 111
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 104
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;I)I

    move-result p1

    return p1
.end method
