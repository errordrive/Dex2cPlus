.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;
.source "ImmutableAnnotationElement.java"


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final value:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->of(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;
    .locals 2

    .line 61
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;

    .line 65
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    return-object v0
.end method
