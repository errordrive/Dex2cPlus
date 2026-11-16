.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/reference/StringReference$-CC;
.super Ljava/lang/Object;
.source "StringReference.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->compareTo(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
