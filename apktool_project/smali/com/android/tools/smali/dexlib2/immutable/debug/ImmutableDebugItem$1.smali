.class Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableDebugItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 92
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 89
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->of(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;

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

    .line 89
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;

    move-result-object p1

    return-object p1
.end method
