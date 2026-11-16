.class public final Lcom/android/tools/smali/dexlib2/util/FieldUtil;
.super Ljava/lang/Object;
.source "FieldUtil.java"


# static fields
.field public static FIELD_IS_INSTANCE:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static FIELD_IS_STATIC:Ljava/util/function/Predicate;
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

    .line 41
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/FieldUtil$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/util/FieldUtil$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Ljava/util/function/Predicate;

    .line 47
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/FieldUtil$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/util/FieldUtil$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Ljava/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatic(Lcom/android/tools/smali/dexlib2/iface/Field;)Z
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 54
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAccessFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result p0

    return p0
.end method
