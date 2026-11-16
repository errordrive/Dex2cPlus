.class public Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
.super Ljava/lang/Object;
.source "MutableMethodImplementation.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;,
        Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$Task;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fixInstructions:Z

.field final instructionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/tools/smali/dexlib2/builder/MethodLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final registerCount:I

.field private final tryBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    new-instance v3, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V

    aput-object v3, v2, v5

    .line 137
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    .line 139
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    .line 210
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    new-instance v3, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V

    aput-object v3, v2, v5

    .line 137
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    .line 139
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    .line 142
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    .line 147
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 148
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v3, v1

    .line 151
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-direct {v7, v4, v2, v3}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    .line 154
    new-array v0, v2, [I

    const/4 v1, -0x1

    .line 155
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    .line 157
    :goto_1
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 164
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 165
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v6

    .line 166
    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v6, v7, :cond_2

    goto :goto_3

    .line 173
    :cond_2
    invoke-direct {p0, v4, v0, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->convertAndSetInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    goto :goto_4

    .line 167
    :cond_3
    :goto_3
    new-instance v6, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$1;

    invoke-direct {v6, p0, v4, v0, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$1;-><init>(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 180
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$Task;

    .line 181
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$Task;->perform()V

    goto :goto_5

    .line 184
    :cond_5
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    .line 185
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result v3

    .line 186
    invoke-direct {p0, v0, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result v3

    .line 187
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 188
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->convertDebugItem(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;

    move-result-object v2

    .line 189
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    iput-object v3, v2, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    goto :goto_6

    .line 193
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 194
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v2

    .line 195
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v3

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v3

    .line 197
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 198
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;

    .line 199
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object v7

    .line 200
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v4

    invoke-direct {v6, v2, v3, v7, v4}, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 198
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->convertAndSetInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    return-void
.end method

.method private convertAndSetInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 640
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$3;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 760
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "Instruction format %s not supported"

    invoke-direct {p1, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 757
    :pswitch_0
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderArrayPayload(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 753
    :pswitch_1
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    .line 754
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderSparseSwitchPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    move-result-object p2

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 749
    :pswitch_2
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    .line 750
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderPackedSwitchPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    move-result-object p2

    .line 749
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 746
    :pswitch_3
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction51l(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction51l;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 743
    :pswitch_4
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction45cc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction45cc;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 740
    :pswitch_5
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction3rms(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 737
    :pswitch_6
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction3rmi(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rmi;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 734
    :pswitch_7
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction3rc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rc;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 731
    :pswitch_8
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction35ms(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35ms;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 728
    :pswitch_9
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction35mi(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35mi;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 725
    :pswitch_a
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction35c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 722
    :pswitch_b
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction32x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction32x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 718
    :pswitch_c
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31t(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 715
    :pswitch_d
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31i(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 712
    :pswitch_e
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 707
    :pswitch_f
    iget v0, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction30t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 704
    :pswitch_10
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction23x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction23x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 701
    :pswitch_11
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 696
    :pswitch_12
    iget v0, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 693
    :pswitch_13
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22s(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22s;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 690
    :pswitch_14
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22cs(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22cs;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 687
    :pswitch_15
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 684
    :pswitch_16
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22b(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 679
    :pswitch_17
    iget v0, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 676
    :pswitch_18
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21s(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21s;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 673
    :pswitch_19
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21lh(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21lh;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 670
    :pswitch_1a
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21ih(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 667
    :pswitch_1b
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 662
    :pswitch_1c
    iget v0, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction20t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 659
    :pswitch_1d
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction20bc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 656
    :pswitch_1e
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction12x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction12x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 653
    :pswitch_1f
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction11x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 650
    :pswitch_20
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction11n(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 647
    :pswitch_21
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction10x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 642
    :pswitch_22
    iget v0, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction10t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertDebugItem(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1147
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1174
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid debug item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1166
    :pswitch_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    .line 1167
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;-><init>(I)V

    return-object v0

    .line 1170
    :pswitch_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;

    .line 1171
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    return-object v0

    .line 1164
    :pswitch_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEpilogueBegin;

    invoke-direct {p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEpilogueBegin;-><init>()V

    return-object p1

    .line 1162
    :pswitch_4
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderPrologueEnd;

    invoke-direct {p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderPrologueEnd;-><init>()V

    return-object p1

    .line 1158
    :pswitch_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;

    .line 1159
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;->getRegister()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;-><init>(I)V

    return-object v0

    .line 1154
    :pswitch_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    .line 1155
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEndLocal;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEndLocal;-><init>(I)V

    return-object v0

    .line 1149
    :pswitch_7
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    .line 1150
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object v2

    .line 1151
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;-><init>(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    return-object v0

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

.method private findSwitchForPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1064
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 1065
    instance-of v3, v2, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 1070
    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    iget-object v0, v2, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;->switchLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    goto :goto_0

    .line 1067
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1079
    :cond_3
    iget v1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    if-nez v1, :cond_4

    goto :goto_1

    .line 1082
    :cond_4
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 1083
    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private fixInstructions()V
    .locals 11

    .line 440
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 443
    iget-object v5, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-eqz v5, :cond_0

    .line 445
    sget-object v6, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$3;->$SwitchMap$com$android$tools$smali$dexlib2$Opcode:[I

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/Opcode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    if-eq v6, v4, :cond_1

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    move-object v6, v5

    check-cast v6, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;

    .line 449
    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/builder/Label;->getLocation()Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    move-result-object v6

    .line 450
    iget-object v8, v6, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-eqz v8, :cond_8

    .line 456
    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v9

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v9, v10, :cond_2

    .line 457
    iget v8, v6, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    add-int/2addr v8, v4

    invoke-direct {p0, v8}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getFirstNonNop(I)Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_7

    .line 459
    instance-of v9, v8, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;

    if-eqz v9, :cond_7

    .line 464
    iget-object v9, v5, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v9, v10, :cond_3

    .line 465
    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v9

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v9, v10, :cond_4

    :cond_3
    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v5, v9, :cond_5

    .line 467
    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v5

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v5, v9, :cond_4

    goto :goto_1

    .line 468
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    .line 468
    const-string v1, "Switch instruction at address/index 0x%x/%d refers to the wrong type of payload instruction."

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_5
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 478
    check-cast v8, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;

    iput-object v2, v8, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;->referrer:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    goto/16 :goto_0

    .line 474
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    .line 460
    const-string v1, "Switch instruction at address/index 0x%x/%d does not refer to a payload instruction."

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    .line 452
    const-string v1, "Switch instruction at address/index 0x%x/%d points to the end of the method."

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 489
    :goto_2
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 490
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 491
    iget-object v5, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-eqz v5, :cond_13

    .line 493
    sget-object v6, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$3;->$SwitchMap$com$android$tools$smali$dexlib2$Opcode:[I

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/Opcode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x3

    const/16 v8, 0x7fff

    const/16 v9, -0x8000

    if-eq v6, v7, :cond_f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_d

    const/4 v7, 0x5

    if-eq v6, v7, :cond_a

    const/4 v7, 0x6

    if-eq v6, v7, :cond_a

    const/4 v5, 0x7

    if-eq v6, v5, :cond_b

    goto/16 :goto_7

    .line 522
    :cond_a
    check-cast v5, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;->referrer:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    if-nez v5, :cond_b

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->removeInstruction(I)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 531
    :cond_b
    iget v5, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_13

    .line 532
    iget v1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    sub-int/2addr v1, v4

    .line 533
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 534
    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 536
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v5

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v5, v6, :cond_c

    .line 537
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->removeInstruction(I)V

    goto :goto_3

    .line 540
    :cond_c
    iget v1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    new-instance v2, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;

    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v2, v5}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 511
    :cond_d
    check-cast v5, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->internalGetCodeOffset()I

    move-result v6

    if-lt v6, v9, :cond_e

    if-le v6, v8, :cond_13

    .line 513
    :cond_e
    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->GOTO_32:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 514
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 515
    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->replaceInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    :goto_4
    const/4 v1, 0x1

    goto :goto_7

    .line 495
    :cond_f
    check-cast v5, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->internalGetCodeOffset()I

    move-result v6

    const/16 v7, -0x80

    if-lt v6, v7, :cond_10

    const/16 v7, 0x7f

    if-le v6, v7, :cond_13

    :cond_10
    if-lt v6, v9, :cond_12

    if-le v6, v8, :cond_11

    goto :goto_5

    .line 502
    :cond_11
    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->GOTO_16:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 503
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    goto :goto_6

    .line 499
    :cond_12
    :goto_5
    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->GOTO_32:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 500
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 505
    :goto_6
    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->replaceInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    goto :goto_4

    :cond_13
    :goto_7
    add-int/2addr v0, v4

    goto/16 :goto_2

    :cond_14
    if-nez v1, :cond_9

    .line 552
    iput-boolean v3, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void
.end method

.method private getFirstNonNop(I)Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 432
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private mapCodeAddressToIndex(I)I
    .locals 3

    const v0, 0x3ff33333    # 1.9f

    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 574
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 580
    iget v2, v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    if-ne v2, p1, :cond_1

    return v0

    .line 582
    :cond_1
    iget v1, v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    if-le v1, p1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 585
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    if-gt v1, p1, :cond_2

    return v0

    :cond_3
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 590
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget v2, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    if-le v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method private mapCodeAddressToIndex([II)I
    .locals 1
    .param p1    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 558
    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 559
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 561
    :cond_0
    aget v0, p1, p2

    if-gez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private newBuilderArrayPayload(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1142
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method private newBuilderInstruction10t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;
    .locals 2
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 767
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;

    .line 768
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 769
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction10x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 774
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;

    .line 775
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    return-object v0
.end method

.method private newBuilderInstruction11n(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 780
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;

    .line 781
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 782
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getRegisterA()I

    move-result v2

    .line 783
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction11x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11x;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 788
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11x;

    .line 789
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 790
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;->getRegisterA()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method

.method private newBuilderInstruction12x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction12x;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 795
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction12x;

    .line 796
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 797
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterA()I

    move-result v2

    .line 798
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction12x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction20bc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 803
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;

    .line 804
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 805
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;->getVerificationError()I

    move-result v2

    .line 806
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction20t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;
    .locals 2
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 812
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;

    .line 813
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 814
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction21c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21c;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 819
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21c;

    .line 820
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 821
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;->getRegisterA()I

    move-result v2

    .line 822
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction21ih(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 827
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;

    .line 828
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 829
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getRegisterA()I

    move-result v2

    .line 830
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction21lh(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21lh;
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 835
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21lh;

    .line 836
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 837
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getRegisterA()I

    move-result v2

    .line 838
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getWideLiteral()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21lh;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method private newBuilderInstruction21s(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21s;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 843
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21s;

    .line 844
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 845
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getRegisterA()I

    move-result v2

    .line 846
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21s;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction21t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21t;
    .locals 3
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 852
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21t;

    .line 853
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 854
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v2

    .line 855
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction22b(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22b;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 860
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22b;

    .line 861
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 862
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterA()I

    move-result v2

    .line 863
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterB()I

    move-result v3

    .line 864
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22b;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction22c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 869
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;

    .line 870
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 871
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterA()I

    move-result v2

    .line 872
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v3

    .line 873
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction22cs(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22cs;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 878
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22cs;

    .line 879
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 880
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterA()I

    move-result v2

    .line 881
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v3

    .line 882
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getFieldOffset()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22cs;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction22s(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22s;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 887
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22s;

    .line 888
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 889
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterA()I

    move-result v2

    .line 890
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterB()I

    move-result v3

    .line 891
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22s;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction22t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;
    .locals 4
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 897
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;

    .line 898
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 899
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterA()I

    move-result v2

    .line 900
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterB()I

    move-result v3

    .line 901
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction22x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22x;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 906
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22x;

    .line 907
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 908
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterA()I

    move-result v2

    .line 909
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction23x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction23x;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 914
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction23x;

    .line 915
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 916
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterA()I

    move-result v2

    .line 917
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterB()I

    move-result v3

    .line 918
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterC()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction23x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction30t(I[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;
    .locals 2
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 924
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;

    .line 925
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 926
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction31c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 931
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;

    .line 932
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 933
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;->getRegisterA()I

    move-result v2

    .line 934
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction31i(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31i;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 939
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31i;

    .line 940
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 941
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getRegisterA()I

    move-result v2

    .line 942
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31i;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction31t(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 948
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    .line 950
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->FILL_ARRAY_DATA:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    .line 952
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newSwitchPayloadReferenceLabel(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    goto :goto_0

    .line 954
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, p2, v0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    .line 956
    :goto_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;

    .line 957
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    .line 958
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result p3

    invoke-direct {p2, v0, p3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object p2
.end method

.method private newBuilderInstruction32x(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction32x;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 964
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction32x;

    .line 965
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 966
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterA()I

    move-result v2

    .line 967
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction32x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction35c(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 972
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;

    .line 973
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 974
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v2

    .line 975
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v3

    .line 976
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v4

    .line 977
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v5

    .line 978
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v6

    .line 979
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v7

    .line 980
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction35mi(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35mi;
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 985
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35mi;

    .line 986
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 987
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterCount()I

    move-result v2

    .line 988
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterC()I

    move-result v3

    .line 989
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterD()I

    move-result v4

    .line 990
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterE()I

    move-result v5

    .line 991
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterF()I

    move-result v6

    .line 992
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterG()I

    move-result v7

    .line 993
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getInlineIndex()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35mi;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIII)V

    return-object v0
.end method

.method private newBuilderInstruction35ms(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35ms;
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 998
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35ms;

    .line 999
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1000
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterCount()I

    move-result v2

    .line 1001
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v3

    .line 1002
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterD()I

    move-result v4

    .line 1003
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterE()I

    move-result v5

    .line 1004
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterF()I

    move-result v6

    .line 1005
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterG()I

    move-result v7

    .line 1006
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getVtableIndex()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35ms;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIII)V

    return-object v0
.end method

.method private newBuilderInstruction3rc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rc;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1011
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rc;

    .line 1012
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1013
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v2

    .line 1014
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v3

    .line 1015
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction3rmi(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rmi;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1020
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rmi;

    .line 1021
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1022
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getStartRegister()I

    move-result v2

    .line 1023
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getRegisterCount()I

    move-result v3

    .line 1024
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getInlineIndex()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rmi;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction3rms(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1029
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;

    .line 1030
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1031
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result v2

    .line 1032
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getRegisterCount()I

    move-result v3

    .line 1033
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getVtableIndex()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction45cc(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction45cc;
    .locals 10
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1038
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction45cc;

    .line 1039
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1040
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterCount()I

    move-result v2

    .line 1041
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterC()I

    move-result v3

    .line 1042
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterD()I

    move-result v4

    .line 1043
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterE()I

    move-result v5

    .line 1044
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterF()I

    move-result v6

    .line 1045
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterG()I

    move-result v7

    .line 1046
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v8

    .line 1047
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction45cc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction51l(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction51l;
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1053
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction51l;

    .line 1054
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1055
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getRegisterA()I

    move-result v2

    .line 1056
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getWideLiteral()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction51l;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method private newBuilderPackedSwitchPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1093
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    .line 1094
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1095
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;-><init>(ILjava/util/List;)V

    return-object p1

    .line 1098
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->findSwitchForPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1103
    :cond_1
    iget p1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 1106
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 1108
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {p0, p2, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1111
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p2

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderPackedSwitchPayload;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method private newBuilderSparseSwitchPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[ILcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1118
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    .line 1119
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object p1

    .line 1123
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->findSwitchForPayload(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1128
    :cond_1
    iget p1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 1131
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 1133
    new-instance v2, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v3

    .line 1134
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, p2, v1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;-><init>(ILcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 1133
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1137
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    invoke-direct {p1, v0}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method private newLabel([II)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 1
    .param p1    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 616
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addNewLabel()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    return-object p1
.end method

.method private setInstruction(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 634
    iput-object p2, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 635
    iput-object p1, p2, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-void
.end method


# virtual methods
.method public addCatch(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 282
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCatch(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 273
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCatch(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 278
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 294
    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addInstruction(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    .line 298
    new-instance v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-direct {v2, p2, v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V

    .line 299
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 300
    iput-object v2, p2, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 302
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr p1, v1

    .line 304
    :goto_0
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 305
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 306
    iget v2, p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    add-int/2addr v2, v1

    iput v2, p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    .line 307
    iput v0, p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 308
    iget-object v2, p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-eqz v2, :cond_1

    .line 309
    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p2

    add-int/2addr v0, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_2
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    .line 290
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public addInstruction(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 320
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 321
    iput-object p1, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 322
    iput-object v0, p1, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 324
    iget v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p1

    add-int/2addr v0, p1

    .line 325
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v3}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iput-boolean v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void
.end method

.method public getDebugItems()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 261
    iget-boolean v3, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-nez v3, :cond_1

    .line 265
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This iterator was invalidated by a change to this MutableMethodImplementation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstructions()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    .line 223
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$2;-><init>(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;)V

    return-object v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 245
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public newLabelForAddress(I)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    if-gt p1, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 601
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addNewLabel()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    return-object p1

    .line 598
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "codeAddress %d out of bounds"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newLabelForIndex(I)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-ltz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 610
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addNewLabel()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object p1

    return-object p1

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "instruction index %d out of bounds"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newSwitchPayloadReferenceLabel(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;[II)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 627
    new-instance p3, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;-><init>(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$1;)V

    .line 628
    iput-object p1, p3, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;->switchLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 629
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public removeInstruction(I)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    const/4 v2, 0x0

    .line 365
    iput-object v2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 366
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 367
    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->mergeInto(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V

    .line 369
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    iget v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 373
    iput p1, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    .line 374
    iput v0, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 376
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    .line 361
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public replaceInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V
    .locals 4
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 331
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 336
    iput-object v0, p2, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 337
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    const/4 v3, 0x0

    .line 339
    iput-object v3, v2, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 340
    iput-object p2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 343
    iget p2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p1, v1

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 346
    iput p2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 348
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v0

    add-int/2addr p2, v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    .line 332
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public swapInstructions(II)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 392
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 398
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    iput-object v2, v3, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 399
    iget-object v3, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    iput-object v0, v3, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 402
    iget-object v3, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 403
    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    iput-object v4, v2, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 404
    iput-object v3, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    if-ge p2, p1, :cond_0

    move v5, p2

    move p2, p1

    move p1, v5

    .line 413
    :cond_0
    iget v2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr p1, v1

    :goto_0
    if-gt p1, p2, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    .line 416
    iput v2, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 418
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 420
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    .line 389
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
