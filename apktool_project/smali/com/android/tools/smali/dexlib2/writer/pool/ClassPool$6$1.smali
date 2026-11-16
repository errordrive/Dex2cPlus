.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->this$1:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->this$1:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6$1;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 556
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
