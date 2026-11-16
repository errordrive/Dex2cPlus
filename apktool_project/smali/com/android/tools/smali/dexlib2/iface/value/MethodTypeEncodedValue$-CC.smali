.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue$-CC;
.super Ljava/lang/Object;
.source "MethodTypeEncodedValue.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method
