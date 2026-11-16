.class Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDebugInfo"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;->INSTANCE:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
