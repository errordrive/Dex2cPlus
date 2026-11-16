.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$2;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/util/function/Predicate;


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
        "Ljava/util/function/Predicate<",
        "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Z
    .locals 0

    .line 366
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 363
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$2;->test(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Z

    move-result p1

    return p1
.end method
