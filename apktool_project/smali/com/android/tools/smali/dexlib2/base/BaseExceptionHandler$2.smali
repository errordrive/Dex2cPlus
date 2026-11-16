.class Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$2;
.super Ljava/lang/Object;
.source "BaseExceptionHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I
    .locals 1

    .line 96
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 103
    :cond_1
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 107
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$2;->compare(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I

    move-result p1

    return p1
.end method
