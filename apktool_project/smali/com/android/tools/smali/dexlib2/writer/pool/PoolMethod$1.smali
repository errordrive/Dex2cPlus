.class Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod$1;
.super Ljava/lang/Object;
.source "PoolMethod.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
    .locals 1

    .line 53
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;-><init>(Lcom/android/tools/smali/dexlib2/iface/Method;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod$1;->apply(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    move-result-object p1

    return-object p1
.end method
