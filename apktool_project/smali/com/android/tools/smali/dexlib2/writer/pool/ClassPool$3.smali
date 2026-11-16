.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$3;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$3;->apply(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
