.class Lcom/android/tools/smali/dexlib2/immutable/ImmutableField$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/Field;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 110
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 107
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/Field;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/Field;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->of(Lcom/android/tools/smali/dexlib2/iface/Field;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

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

    .line 107
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/Field;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

    move-result-object p1

    return-object p1
.end method
