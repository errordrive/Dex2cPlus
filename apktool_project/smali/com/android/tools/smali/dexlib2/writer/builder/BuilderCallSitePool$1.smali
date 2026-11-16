.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderCallSitePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;Ljava/util/Collection;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 81
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 86
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    .line 87
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;I)I

    move-result p1

    return p1
.end method
