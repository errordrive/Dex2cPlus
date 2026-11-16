.class Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 88
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 85
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->of(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic makeImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    move-result-object p1

    return-object p1
.end method
