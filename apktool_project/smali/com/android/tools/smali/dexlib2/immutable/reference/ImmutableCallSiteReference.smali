.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;
.source "ImmutableCallSiteReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final extraArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodHandle:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodProto:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->name:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodHandle:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    .line 58
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodName:Ljava/lang/String;

    .line 59
    invoke-static {p4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodProto:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    .line 60
    invoke-static {p5}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->extraArguments:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodHandle:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    .line 68
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodName:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodProto:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    .line 70
    invoke-static {p5}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->extraArguments:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;

    return-object p0

    .line 78
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object v2

    .line 80
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object v4

    .line 82
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getExtraArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->extraArguments:Ljava/util/List;

    return-object v0
.end method

.method public getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodHandle:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->methodProto:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableCallSiteReference;->name:Ljava/lang/String;

    return-object v0
.end method
