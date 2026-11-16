.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference$-CC;
.super Ljava/lang/Object;
.source "TypeReference.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 49
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->compareTo(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
