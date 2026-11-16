.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue$-CC;
.super Ljava/lang/Object;
.source "IntEncodedValue.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method
