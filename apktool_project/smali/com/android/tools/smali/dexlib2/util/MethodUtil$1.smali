.class Lcom/android/tools/smali/dexlib2/util/MethodUtil$1;
.super Ljava/lang/Object;
.source "MethodUtil.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/util/MethodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->isDirect(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/util/MethodUtil$1;->test(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result p1

    return p1
.end method
