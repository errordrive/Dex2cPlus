.class Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableSwitchElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 72
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 69
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

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

    .line 69
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

    move-result-object p1

    return-object p1
.end method
