.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;
.super Ljava/lang/Object;
.source "ImmutableMethodImplementation.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;


# instance fields
.field protected final debugItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerCount:I

.field protected final tryBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V
    .locals 0
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    .line 57
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Ljava/util/List;

    .line 58
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->immutableListOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Ljava/util/List;

    .line 59
    invoke-static {p4}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    .line 67
    invoke-static {p2}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Ljava/util/List;

    .line 68
    invoke-static {p3}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Ljava/util/List;

    .line 69
    invoke-static {p4}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;
    .locals 4
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    if-eqz v0, :cond_1

    .line 78
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    return-object p0

    .line 80
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    .line 81
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    .line 82
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v2

    .line 83
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDebugItems()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->getDebugItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDebugItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getInstructions()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Ljava/util/List;

    return-object v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Ljava/util/List;

    return-object v0
.end method
