.class public Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
.super Ljava/lang/Object;
.source "AnalyzedInstruction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instructionIndex:I

.field protected final methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

.field protected final postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected predecessorRegisterOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;",
            "Lcom/android/tools/smali/dexlib2/analysis/RegisterType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final predecessors:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final successors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;II)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    .line 115
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    .line 116
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 117
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 118
    iput p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    .line 119
    new-array p1, p4, [Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 120
    new-array p1, p4, [Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    const/4 p1, 0x0

    .line 121
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p2

    :goto_0
    if-ge p1, p4, :cond_0

    .line 123
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    .line 124
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPredecessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected addSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 648
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    iget p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->compareTo(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    return p1
.end method

.method public getDestinationRegister()I
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/Opcode;->setsRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v0

    return v0

    .line 627
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot call getDestinationRegister() for an instruction that doesn\'t store a value"

    invoke-direct {v0, v2, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-object v0
.end method

.method public getInstructionIndex()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    return v0
.end method

.method protected getMergedPreRegisterTypeFromPredecessors(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 255
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPredecessorRegisterType(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->merge(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    .line 266
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getOriginalInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-object v0
.end method

.method public getPostInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPredecessorCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getPredecessorRegisterType(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 141
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;-><init>(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getPredecessors()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    array-length v0, v0

    return v0
.end method

.method public getSetRegisters()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Opcode;->setsRegister()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Opcode;->setsWideRegister()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 502
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    instance-of v3, v1, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    if-eqz v3, :cond_2

    .line 503
    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    goto :goto_0

    .line 507
    :cond_2
    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    .line 509
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v1

    .line 512
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 513
    iget-byte v4, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/16 v7, 0x10

    if-eq v4, v7, :cond_6

    iget-byte v4, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v6, :cond_3

    goto :goto_2

    .line 535
    :cond_3
    iget-byte v1, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-nez v1, :cond_b

    .line 540
    :goto_1
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    array-length v3, v1

    if-ge v5, v3, :cond_b

    .line 541
    aget-object v1, v1, v5

    .line 542
    iget-byte v3, v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v3, v7, :cond_4

    iget-byte v1, v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-ne v1, v6, :cond_5

    .line 544
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 515
    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object v3, v3, v1

    .line 518
    :goto_3
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    array-length v8, v4

    if-ge v5, v8, :cond_b

    if-ne v5, v1, :cond_7

    goto :goto_4

    .line 523
    :cond_7
    aget-object v4, v4, v5

    .line 525
    invoke-virtual {v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 526
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 527
    :cond_8
    iget-byte v8, v4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v8, v7, :cond_9

    iget-byte v4, v4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v6, :cond_a

    .line 529
    :cond_9
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object v4, v4, v5

    .line 530
    iget-byte v4, v4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-nez v4, :cond_a

    .line 531
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 554
    :cond_b
    iget v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    .line 555
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 556
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v1

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 557
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IF_EQZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v3, :cond_c

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IF_NEZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v1, v3, :cond_15

    .line 559
    :cond_c
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 560
    iget-object v3, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->INSTANCE_OF:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    .line 562
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v3

    .line 561
    invoke-static {v1, p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->canPropagateTypeAfterInstanceOf(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 563
    iget-object v3, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    .line 564
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget v4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-le v4, v2, :cond_15

    .line 577
    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 578
    iget-object v7, v6, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    .line 579
    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v7, v8, :cond_e

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT_16:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v7, v8, :cond_e

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT_FROM16:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v7, v8, :cond_f

    .line 581
    :cond_e
    iget-object v7, v6, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 585
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v8

    .line 584
    invoke-virtual {v6, v8}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v6

    .line 586
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v8

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v9

    if-eq v8, v9, :cond_10

    :cond_f
    :goto_6
    const/4 v5, -0x1

    goto :goto_7

    .line 590
    :cond_10
    iget-object v8, v6, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-nez v8, :cond_11

    goto :goto_6

    :cond_11
    if-nez v4, :cond_12

    .line 596
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v4

    .line 597
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v8

    check-cast v8, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 596
    invoke-static {v4, v8}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v4

    .line 600
    :cond_12
    invoke-static {v6, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eq v5, v2, :cond_13

    .line 602
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    if-eq v5, v6, :cond_d

    goto :goto_6

    .line 607
    :cond_13
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v5

    goto :goto_5

    :cond_14
    :goto_7
    if-eq v5, v2, :cond_15

    .line 616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-object v0
.end method

.method public getSuccessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isBeginningInstruction()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isInvokeInit()Z
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/Opcode;->canInitializeReference()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 334
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    .line 335
    instance-of v2, v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v2, :cond_1

    .line 336
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected mergeRegister(ILcom/android/tools/smali/dexlib2/analysis/RegisterType;Ljava/util/BitSet;Z)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object v0, v0, p1

    if-eqz p4, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getMergedPreRegisterTypeFromPredecessors(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p2

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->merge(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p2

    .line 228
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    return v0

    .line 232
    :cond_1
    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p2, p4, p1

    .line 233
    iget p4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p3, p4}, Ljava/util/BitSet;->clear(I)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setsRegister(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 236
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected overridePredecessorRegisterType(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;Ljava/util/BitSet;)Z
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 303
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;-><init>(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getMergedPreRegisterTypeFromPredecessors(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p1

    .line 310
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    return v0

    .line 314
    :cond_1
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p1, p3, p2

    .line 315
    iget p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p4, p3}, Ljava/util/BitSet;->clear(I)V

    .line 317
    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setsRegister(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 318
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 319
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p1, p3, p2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected restoreOdexedInstruction()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-void
.end method

.method protected setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-void
.end method

.method protected setPostRegisterType(ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aget-object v0, v0, p1

    .line 281
    invoke-virtual {v0, p2}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public setsRegister(I)Z
    .locals 11

    .line 353
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 360
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    instance-of v3, v0, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    if-eqz v3, :cond_0

    .line 362
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    goto :goto_0

    .line 365
    :cond_0
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    .line 367
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v0

    .line 370
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 371
    iget-byte v4, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v5, 0x11

    const/16 v6, 0x10

    if-nez v4, :cond_2

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v4

    .line 376
    iget-byte v7, v4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v7, v6, :cond_1

    iget-byte v4, v4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v5, :cond_2

    :cond_1
    return v2

    .line 382
    :cond_2
    iget-byte v4, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v4, v6, :cond_3

    iget-byte v4, v3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    if-ne p1, v0, :cond_4

    return v2

    .line 392
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 399
    :cond_5
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    .line 400
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 401
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v0

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 402
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IF_EQZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IF_NEZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v0, v3, :cond_10

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 405
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->INSTANCE_OF:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    .line 407
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v3

    .line 406
    invoke-static {v0, p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->canPropagateTypeAfterInstanceOf(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 408
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    .line 410
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v4

    if-ne p1, v4, :cond_7

    return v2

    .line 420
    :cond_7
    iget v4, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-le v4, v2, :cond_10

    .line 425
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 426
    iget-object v8, v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v8

    .line 427
    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v8, v9, :cond_9

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT_16:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v8, v9, :cond_9

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_OBJECT_FROM16:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v8, v9, :cond_a

    .line 429
    :cond_9
    iget-object v8, v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v8, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 433
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v9

    .line 432
    invoke-virtual {v7, v9}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v7

    .line 434
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v9

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v10

    if-eq v9, v10, :cond_b

    :cond_a
    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    .line 438
    :cond_b
    iget-object v9, v7, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-nez v9, :cond_c

    goto :goto_2

    :cond_c
    if-nez v5, :cond_d

    .line 444
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    move-result-object v5

    .line 445
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v9

    check-cast v9, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 444
    invoke-static {v5, v9}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v5

    .line 448
    :cond_d
    invoke-static {v7, v5}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eq v6, v4, :cond_e

    .line 450
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v7

    if-eq v6, v7, :cond_8

    goto :goto_2

    .line 455
    :cond_e
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    goto :goto_1

    :cond_f
    :goto_3
    if-eq v6, v4, :cond_10

    if-ne p1, v6, :cond_10

    return v2

    .line 470
    :cond_10
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/Opcode;->setsRegister()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 473
    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v0

    if-ne p1, v0, :cond_12

    return v2

    .line 478
    :cond_12
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/Opcode;->setsWideRegister()Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_13

    return v2

    :cond_13
    return v1
.end method
