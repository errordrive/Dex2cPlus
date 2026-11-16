.class Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableMethodParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
        "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 83
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 80
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->of(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

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

    .line 80
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    move-result-object p1

    return-object p1
.end method
