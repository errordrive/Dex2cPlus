.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/AnnotationElement$-CC;
.super Ljava/lang/Object;
.source "AnnotationElement.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 41
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->compareTo(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)I

    move-result p1

    return p1
.end method
