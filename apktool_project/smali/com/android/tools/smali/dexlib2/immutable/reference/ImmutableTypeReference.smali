.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "ImmutableTypeReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->type:Ljava/lang/String;

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
            "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->type:Ljava/lang/String;

    return-object v0
.end method
