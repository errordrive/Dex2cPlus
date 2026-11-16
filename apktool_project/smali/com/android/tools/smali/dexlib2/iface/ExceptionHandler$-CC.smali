.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler$-CC;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->compareTo(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I

    move-result p1

    return p1
.end method
