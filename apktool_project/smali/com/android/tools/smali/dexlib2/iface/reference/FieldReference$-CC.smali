.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference$-CC;
.super Ljava/lang/Object;
.source "FieldReference.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result p1

    return p1
.end method
