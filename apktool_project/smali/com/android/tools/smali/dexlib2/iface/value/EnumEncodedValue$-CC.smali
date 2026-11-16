.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue$-CC;
.super Ljava/lang/Object;
.source "EnumEncodedValue.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method
