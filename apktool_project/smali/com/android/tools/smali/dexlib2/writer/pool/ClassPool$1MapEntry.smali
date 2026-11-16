.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getItems()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 523
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->getKey()Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    .line 537
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    .line 538
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 520
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1MapEntry;->setValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
