.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;
.super Ljava/lang/Object;
.source "ImmutableSwitchElement.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final key:I

.field protected final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->key:I

    .line 47
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->offset:I

    return-void
.end method

.method public static immutableListOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;

    .line 56
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    .line 57
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->key:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->offset:I

    return v0
.end method
