.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderAnnotationPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;Ljava/util/Collection;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 96
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 94
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 100
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    .line 101
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 94
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;I)I

    move-result p1

    return p1
.end method
