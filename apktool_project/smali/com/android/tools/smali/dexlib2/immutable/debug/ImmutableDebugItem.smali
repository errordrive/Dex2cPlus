.class public abstract Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.super Ljava/lang/Object;
.source "ImmutableDebugItem.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final codeAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->codeAddress:I

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;
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
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 58
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;

    return-object p0

    .line 61
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid debug item type: %d"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 75
    :pswitch_1
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;->of(Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;

    move-result-object p0

    return-object p0

    .line 73
    :pswitch_2
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->of(Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    move-result-object p0

    return-object p0

    .line 71
    :pswitch_3
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/EpilogueBegin;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEpilogueBegin;->of(Lcom/android/tools/smali/dexlib2/iface/debug/EpilogueBegin;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    move-result-object p0

    return-object p0

    .line 69
    :pswitch_4
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/PrologueEnd;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutablePrologueEnd;->of(Lcom/android/tools/smali/dexlib2/iface/debug/PrologueEnd;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutablePrologueEnd;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_5
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableRestartLocal;->of(Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableRestartLocal;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_6
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->of(Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_7
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->of(Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCodeAddress()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->codeAddress:I

    return v0
.end method
