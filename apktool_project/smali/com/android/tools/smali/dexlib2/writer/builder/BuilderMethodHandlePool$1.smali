.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool$1;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderMethodHandlePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;Ljava/util/Collection;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 111
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 108
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool$1;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 116
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    .line 117
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 108
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool$1;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;I)I

    move-result p1

    return p1
.end method
