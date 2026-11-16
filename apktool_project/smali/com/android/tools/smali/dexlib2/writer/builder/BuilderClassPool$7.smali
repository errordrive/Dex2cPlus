.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;
.source "BuilderClassPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Ljava/util/Collection;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 434
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return p1
.end method

.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 432
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;->getValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I

    move-result p1

    return p1
.end method

.method protected setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;I)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 438
    iget v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    .line 439
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return v0
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 432
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;->setValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;I)I

    move-result p1

    return p1
.end method
