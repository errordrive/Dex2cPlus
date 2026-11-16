.class public Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;
.super Ljava/lang/Object;
.source "StaticInitializerUtil.java"


# static fields
.field private static final GET_INITIAL_VALUE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_INITIALIZER:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->HAS_INITIALIZER:Ljava/util/function/Predicate;

    .line 85
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$3;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$3;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->GET_INITIAL_VALUE:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/function/Function;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->GET_INITIAL_VALUE:Ljava/util/function/Function;

    return-object v0
.end method

.method public static getStaticInitializers(Ljava/util/SortedSet;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
    .locals 2
    .param p0    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    sget-object v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->HAS_INITIALIZER:Ljava/util/function/Predicate;

    invoke-static {p0, v0}, Lcom/android/tools/smali/util/CollectionUtils;->lastIndexOf(Ljava/lang/Iterable;Ljava/util/function/Predicate;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 57
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;-><init>(Ljava/util/SortedSet;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
