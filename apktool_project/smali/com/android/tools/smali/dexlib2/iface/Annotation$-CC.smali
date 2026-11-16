.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/Annotation$-CC;
.super Ljava/lang/Object;
.source "Annotation.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/Annotation;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/Annotation;

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->compareTo(Lcom/android/tools/smali/dexlib2/iface/Annotation;)I

    move-result p1

    return p1
.end method
