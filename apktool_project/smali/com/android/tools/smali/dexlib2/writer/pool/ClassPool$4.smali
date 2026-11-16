.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;
.super Lcom/android/tools/smali/util/AbstractForwardSequentialList;
.source "ClassPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractForwardSequentialList<",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

.field final synthetic val$parameters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;Ljava/util/List;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;->val$parameters:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 386
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;->val$parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->access$000()Ljava/util/function/Function;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;->val$parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
