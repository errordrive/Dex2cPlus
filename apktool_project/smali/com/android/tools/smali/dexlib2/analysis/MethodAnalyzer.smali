.class public Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;
.super Ljava/lang/Object;
.source "MethodAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BooleanCategories:Ljava/util/BitSet;

.field private static final Primitive32BitCategories:Ljava/util/BitSet;

.field private static final ReferenceOrUninitCategories:Ljava/util/BitSet;

.field private static final WideHighCategories:Ljava/util/BitSet;

.field private static final WideLowCategories:Ljava/util/BitSet;


# instance fields
.field private analysisException:Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/SparseArray<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final analyzedState:Ljava/util/BitSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final method:Lcom/android/tools/smali/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final normalizeVirtualMethods:Z

.field private final paramRegisterCount:I

.field private final startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    .line 1079
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/tools/smali/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->Primitive32BitCategories:Ljava/util/BitSet;

    const/16 v0, 0xc

    const/16 v1, 0xe

    .line 1091
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->WideLowCategories:Ljava/util/BitSet;

    const/16 v0, 0xd

    const/16 v1, 0xf

    .line 1095
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->WideHighCategories:Ljava/util/BitSet;

    const/16 v0, 0x11

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/16 v3, 0x10

    .line 1099
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 1105
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;Z)V
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/android/tools/smali/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/smali/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analysisException:Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 127
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 128
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;

    .line 129
    iput-boolean p4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    .line 131
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 133
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 142
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$1;

    new-instance v4, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object p3, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v4, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v5, -0x1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v6

    move-object v3, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;II)V

    iput-object v1, v2, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 153
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->buildInstructionList()V

    .line 155
    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, v2, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    .line 156
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getParameterRegisterCount(Lcom/android/tools/smali/dexlib2/iface/Method;)I

    move-result p1

    iput p1, v2, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    .line 157
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze()V

    return-void

    :cond_0
    move-object v2, p0

    .line 135
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The method has no implementation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 573
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V

    return-void
.end method

.method private addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p5, :cond_1

    .line 581
    iget-object p5, p2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {p5}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p5

    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->MOVE_EXCEPTION:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq p5, v1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    new-instance p3, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Execution can pass from the "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {p5}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p5

    iget-object p5, p5, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " instruction at code address 0x"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to the move-exception instruction at address 0x"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    .line 588
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->addPredecessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_2

    .line 592
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->addSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    .line 593
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/BitSet;->set(I)V

    .line 601
    iget p2, p2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    aget-object p2, p3, p2

    if-eqz p2, :cond_3

    .line 607
    array-length p5, p2

    :goto_1
    if-ge v0, p5, :cond_3

    aget-object v3, p2, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 608
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private analyze()V
    .locals 10

    .line 166
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 167
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 169
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    .line 170
    iget v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    sub-int/2addr v1, v2

    .line 176
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->isStatic(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->isConstructor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 183
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    const/16 v4, 0x11

    .line 182
    invoke-static {v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 181
    invoke-direct {p0, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 187
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    const/16 v4, 0x12

    .line 186
    invoke-static {v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 185
    invoke-direct {p0, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 190
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateParameterTypes(I)V

    goto :goto_1

    .line 192
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateParameterTypes(I)V

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 195
    invoke-static {v3, v2}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    .line 197
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v6, v5, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 203
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 204
    iget v5, v5, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 207
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v5}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    :cond_4
    const/4 v5, 0x0

    .line 212
    :cond_5
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 213
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    :goto_4
    if-ltz v6, :cond_a

    .line 214
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 215
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    .line 218
    :cond_6
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v7, v6}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 220
    :try_start_0
    iget-object v8, v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/Opcode;->odexOnly()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 224
    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->restoreOdexedInstruction()V

    .line 227
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 228
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/AnalysisException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_6

    .line 232
    :cond_8
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/AnalysisException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 246
    iget-object v5, v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 247
    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    :cond_9
    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 213
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_4

    :catch_0
    move-exception v6

    const/4 v5, 0x1

    goto :goto_7

    :catch_1
    move-exception v6

    .line 235
    :goto_7
    iput-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analysisException:Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 236
    invoke-virtual {p0, v7}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v8

    .line 237
    iput v8, v6, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;->codeAddress:I

    .line 238
    iget-object v7, v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v4

    const-string v7, "opcode: %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "code address: %d"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    .line 240
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const-string v8, "method: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    .line 250
    :cond_a
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analysisException:Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    if-eqz v6, :cond_5

    :cond_b
    if-nez v5, :cond_e

    const/4 v0, 0x0

    .line 270
    :goto_8
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 271
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 273
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object v2

    .line 275
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/Opcode;->odexOnly()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 277
    sget-object v3, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$2;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_a

    .line 300
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v3

    goto :goto_9

    .line 296
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v3

    goto :goto_9

    .line 292
    :pswitch_2
    move-object v3, v2

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v3

    .line 306
    :goto_9
    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;

    invoke-direct {v5, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;-><init>(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;I)V

    invoke-virtual {v1, v5}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    goto :goto_a

    .line 289
    :pswitch_3
    invoke-direct {p0, v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    goto :goto_a

    .line 286
    :pswitch_4
    invoke-direct {p0, v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    goto :goto_a

    .line 283
    :pswitch_5
    invoke-direct {p0, v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    goto :goto_a

    .line 279
    :pswitch_6
    invoke-direct {p0, v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    :cond_c
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    return-void

    .line 259
    :cond_e
    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 260
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_b
    if-ltz v5, :cond_4

    .line 261
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    .line 260
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1353
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1413
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeAgetObject(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1388
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1390
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1391
    iget-byte v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1392
    iget-byte v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    instance-of v1, v1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    if-eqz v1, :cond_0

    .line 1398
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    .line 1400
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getImmediateElementType()Ljava/lang/String;

    move-result-object v0

    .line 1402
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 1403
    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1402
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 1394
    :cond_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 1395
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "aget-object used with non-array register: %s"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1407
    :cond_1
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeAgetWide(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1357
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1359
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1360
    iget-byte v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 1361
    iget-byte v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    instance-of v1, v1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    .line 1367
    iget v2, v1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v2, v4, :cond_2

    .line 1372
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_0

    .line 1374
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_0
    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    .line 1376
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 1378
    :cond_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with narrow array: %s"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1368
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 1369
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with multi-dimensional array: %s"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1363
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with non-array register: %s"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1383
    :cond_4
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeArrayLength(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1310
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 1494
    iget-object p3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1497
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1499
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p3

    .line 1501
    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte v0, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte p3, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    .line 1502
    invoke-virtual {v1, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1503
    sget-object p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 1507
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 1475
    iget-object p3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1478
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1480
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p3

    .line 1482
    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte v0, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte p3, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    .line 1483
    invoke-virtual {v1, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1484
    sget-object p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 1488
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeCheckCast(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1208
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1209
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 1210
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1211
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConst(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1183
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    .line 1188
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterTypeForLiteral(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1187
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConstClass(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1202
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Class;"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/16 v1, 0x12

    .line 1203
    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1204
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConstString(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1196
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/String;"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/16 v1, 0x12

    .line 1197
    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1198
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 11
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1600
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;

    if-eqz v0, :cond_2

    .line 1604
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;

    .line 1605
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->resolveExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v10

    .line 1608
    invoke-interface {v10}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    .line 1609
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 1611
    :cond_0
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_0

    .line 1614
    :cond_1
    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_VIRTUAL:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_0

    .line 1617
    :goto_1
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterCount()I

    move-result v4

    .line 1618
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterC()I

    move-result v5

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterD()I

    move-result v6

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterE()I

    move-result v7

    .line 1619
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterF()I

    move-result v8

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterG()I

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1621
    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    .line 1622
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return-void

    .line 1601
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot analyze an odexed instruction unless we are deodexing"

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeExecuteInlineRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1626
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;

    if-eqz v0, :cond_2

    .line 1630
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;

    .line 1631
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->resolveExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    .line 1634
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v2

    .line 1635
    sget-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1636
    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_0

    .line 1637
    :cond_0
    sget-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1638
    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_0

    .line 1640
    :cond_1
    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_VIRTUAL_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 1643
    :goto_0
    new-instance v3, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getStartRegister()I

    move-result v4

    .line 1644
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getRegisterCount()I

    move-result v0

    invoke-direct {v3, v2, v4, v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1646
    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    .line 1647
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return-void

    .line 1627
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot analyze an odexed instruction unless we are deodexing"

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeFloatWideCmp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1348
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeIfEqzNez(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1264
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v0

    if-lez v0, :cond_2

    .line 1267
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 1270
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPredecessors()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 1271
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v2

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INSTANCE_OF:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v3, :cond_2

    .line 1273
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    .line 1274
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v3

    add-int/2addr v3, v1

    .line 1273
    invoke-virtual {v2, v3}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v2

    iget-object v3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;

    .line 1277
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 1278
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 1280
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v3

    .line 1281
    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 1283
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    .line 1284
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 1285
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 1284
    invoke-static {v4, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1287
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getSetRegisters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1288
    iget-object v6, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v6

    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->IF_EQZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v6, v7, :cond_1

    .line 1289
    invoke-direct {p0, v1, p1, v5, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    .line 1291
    invoke-direct {p0, v2, p1, v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    .line 1294
    :cond_1
    invoke-direct {p0, v1, p1, v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    .line 1296
    invoke-direct {p0, v2, p1, v5, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private analyzeIgetSgetWideObject(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1417
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1419
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 1421
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1422
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeInstanceOf(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1306
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 630
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 632
    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$2;->$SwitchMap$com$android$tools$smali$dexlib2$Opcode:[I

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/Opcode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 1071
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return v2

    .line 1067
    :pswitch_1
    invoke-direct {p0, p1, v2, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    .line 1065
    :pswitch_2
    invoke-direct {p0, p1, v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    .line 1063
    :pswitch_3
    invoke-direct {p0, p1, v2, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    .line 1061
    :pswitch_4
    invoke-direct {p0, p1, v1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    .line 1059
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeIputIgetQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result p1

    return p1

    .line 1043
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 1040
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 1037
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeExecuteInlineRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 1034
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_a
    return v2

    .line 1029
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return v2

    .line 1015
    :pswitch_c
    invoke-direct {p0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getDestTypeForLiteralShiftRight(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 1011
    :pswitch_d
    invoke-direct {p0, p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getDestTypeForLiteralShiftRight(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 1008
    :pswitch_e
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 1003
    :pswitch_f
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 995
    :pswitch_10
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 990
    :pswitch_11
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 983
    :pswitch_12
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 976
    :pswitch_13
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 969
    :pswitch_14
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 956
    :pswitch_15
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 951
    :pswitch_16
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 941
    :pswitch_17
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 934
    :pswitch_18
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 927
    :pswitch_19
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 914
    :pswitch_1a
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 909
    :pswitch_1b
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V

    return v2

    .line 899
    :pswitch_1c
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 896
    :pswitch_1d
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 893
    :pswitch_1e
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 890
    :pswitch_1f
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 887
    :pswitch_20
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 884
    :pswitch_21
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 881
    :pswitch_22
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 878
    :pswitch_23
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 875
    :pswitch_24
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 871
    :pswitch_25
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 867
    :pswitch_26
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 864
    :pswitch_27
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 861
    :pswitch_28
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 858
    :pswitch_29
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 855
    :pswitch_2a
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 852
    :pswitch_2b
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 848
    :pswitch_2c
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :pswitch_2d
    return v2

    .line 839
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 836
    :pswitch_2f
    invoke-direct {p0, p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    return v2

    .line 833
    :pswitch_30
    invoke-direct {p0, p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    :pswitch_31
    return v2

    .line 825
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirect(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 822
    :pswitch_33
    invoke-direct {p0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    return v2

    .line 819
    :pswitch_34
    invoke-direct {p0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    :pswitch_35
    return v2

    .line 808
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeIgetSgetWideObject(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 804
    :pswitch_37
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 801
    :pswitch_38
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 798
    :pswitch_39
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 795
    :pswitch_3a
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 792
    :pswitch_3b
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :pswitch_3c
    return v2

    .line 781
    :pswitch_3d
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeIgetSgetWideObject(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 777
    :pswitch_3e
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 774
    :pswitch_3f
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 771
    :pswitch_40
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 768
    :pswitch_41
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 765
    :pswitch_42
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :pswitch_43
    return v2

    .line 754
    :pswitch_44
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeAgetObject(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 751
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeAgetWide(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 748
    :pswitch_46
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 745
    :pswitch_47
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 742
    :pswitch_48
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 739
    :pswitch_49
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 736
    :pswitch_4a
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return v2

    .line 733
    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeIfEqzNez(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_4c
    return v2

    .line 718
    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeFloatWideCmp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_4e
    return v2

    .line 698
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeNewArray(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 695
    :pswitch_50
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeNewInstance(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 692
    :pswitch_51
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeArrayLength(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 689
    :pswitch_52
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstanceOf(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 686
    :pswitch_53
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeCheckCast(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_54
    return v2

    .line 680
    :pswitch_55
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeConstClass(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 677
    :pswitch_56
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeConstString(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 673
    :pswitch_57
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeWideConst(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 667
    :pswitch_58
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeConst(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 661
    :pswitch_59
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_5a
    return v2

    .line 652
    :pswitch_5b
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeMoveException(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 649
    :pswitch_5c
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeMoveResult(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    .line 644
    :pswitch_5d
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeMove(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_5e
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private analyzeInvokeDirect(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1426
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    .line 1427
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectCommon(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V

    return-void
.end method

.method private analyzeInvokeDirectCommon(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1445
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1446
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p2

    .line 1447
    iget-byte v0, p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-byte v0, p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x12

    .line 1452
    iget-object v1, p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1454
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getSetRegisters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1455
    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 1458
    invoke-direct {p0, p1, v2, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    .line 1461
    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private analyzeInvokeDirectEmpty(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1651
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeInvokeDirectEmpty(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V
    .locals 10
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1655
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    .line 1657
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 1658
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v3

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v4

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v5

    .line 1659
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v6

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v7

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v8

    .line 1660
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1662
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_0

    .line 1665
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_0
    return-void
.end method

.method private analyzeInvokeDirectRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1431
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    .line 1432
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectCommon(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V

    return-void
.end method

.method private analyzeInvokeObjectInitRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1670
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeInvokeObjectInitRange(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V
    .locals 10
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1674
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    .line 1678
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v4

    const/16 v1, 0x10

    const/4 v3, 0x1

    if-ge v4, v1, :cond_0

    .line 1684
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT:Lcom/android/tools/smali/dexlib2/Opcode;

    const/4 v8, 0x0

    .line 1685
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    goto :goto_0

    .line 1687
    :cond_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 1688
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1691
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_1

    .line 1694
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_1
    return-void
.end method

.method private analyzeInvokeVirtual(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z
    .locals 11
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1765
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 1770
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    .line 1771
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    goto :goto_0

    .line 1773
    :cond_1
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    .line 1774
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 1777
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->normalizeMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1779
    invoke-interface {v10, v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 1785
    iget-object p2, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    .line 1786
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v3

    .line 1787
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result p2

    invoke-direct {v0, v2, v3, p2, v10}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    goto :goto_1

    .line 1789
    :cond_3
    iget-object p2, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    .line 1790
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v4

    .line 1791
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v5

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v6

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v7

    .line 1792
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v8

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    move-object v0, v2

    .line 1795
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    :cond_4
    :goto_2
    return v1
.end method

.method private analyzeInvokeVirtualQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ZZ)Z
    .locals 18
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_0

    .line 1805
    iget-object v2, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;

    .line 1806
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getVtableIndex()I

    move-result v3

    .line 1807
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result v2

    goto :goto_0

    .line 1809
    :cond_0
    iget-object v2, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;

    .line 1810
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getVtableIndex()I

    move-result v3

    .line 1811
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v2

    .line 1814
    :goto_0
    sget-object v4, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    invoke-static {v1, v2, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v2

    .line 1816
    iget-object v4, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 1818
    iget-byte v5, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    return v7

    :cond_1
    if-eqz p2, :cond_3

    .line 1827
    iget-object v5, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v8, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v5

    .line 1830
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getSuperclass()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1832
    iget-object v5, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v5, v8}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v5

    .line 1838
    :cond_2
    invoke-interface {v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    goto :goto_1

    .line 1840
    :cond_3
    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    :goto_1
    const/4 v8, 0x1

    if-eqz v5, :cond_d

    .line 1849
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v6, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v2

    .line 1851
    iget-object v6, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1852
    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_3

    :cond_4
    if-nez p2, :cond_8

    .line 1854
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v9

    .line 1853
    invoke-static {v6, v9}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1858
    iget-object v6, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v4

    .line 1859
    :goto_2
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result v6

    const-string v9, "Couldn\'t find accessible class while resolving method %s"

    if-nez v6, :cond_6

    .line 1860
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1866
    iget-object v6, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v4

    goto :goto_2

    .line 1862
    :cond_5
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-direct {v1, v9, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1871
    :cond_6
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 1872
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1878
    new-instance v5, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1879
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v4, v6, v2}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V

    goto :goto_3

    .line 1874
    :cond_7
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-direct {v1, v9, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1883
    :cond_8
    :goto_3
    iget-boolean v2, v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    if-eqz v2, :cond_9

    .line 1884
    invoke-direct {v0, v5}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->normalizeMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v5, v2

    :cond_9
    if-eqz p3, :cond_b

    .line 1892
    iget-object v2, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;

    if-eqz p2, :cond_a

    .line 1895
    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_SUPER_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_4

    .line 1897
    :cond_a
    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_VIRTUAL_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 1900
    :goto_4
    new-instance v4, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result v6

    .line 1901
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getRegisterCount()I

    move-result v2

    invoke-direct {v4, v3, v6, v2, v5}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    goto :goto_6

    .line 1903
    :cond_b
    iget-object v2, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;

    if-eqz p2, :cond_c

    .line 1906
    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_SUPER:Lcom/android/tools/smali/dexlib2/Opcode;

    goto :goto_5

    .line 1908
    :cond_c
    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_VIRTUAL:Lcom/android/tools/smali/dexlib2/Opcode;

    :goto_5
    move-object v10, v3

    .line 1911
    new-instance v9, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterCount()I

    move-result v11

    .line 1912
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v12

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterD()I

    move-result v13

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterE()I

    move-result v14

    .line 1913
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterF()I

    move-result v15

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterG()I

    move-result v16

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    move-object v4, v9

    .line 1916
    :goto_6
    invoke-virtual {v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    .line 1917
    invoke-direct/range {p0 .. p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return v8

    .line 1844
    :cond_d
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 1845
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    const-string v2, "Could not resolve the method in class %s at index %d"

    invoke-direct {v1, v2, v4}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private analyzeIputIgetQuick(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z
    .locals 10
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1699
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;

    .line 1701
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getFieldOffset()I

    move-result v1

    .line 1702
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v2

    sget-object v3, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    invoke-static {p1, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v2

    .line 1705
    iget-byte v3, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    return v4

    .line 1709
    :cond_0
    iget-object v3, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 1712
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v6

    .line 1713
    invoke-interface {v6, v1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 1720
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v2

    .line 1722
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1726
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v3

    .line 1727
    :goto_0
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result v5

    const-string v8, "Couldn\'t find accessible class while resolving field %s"

    if-nez v5, :cond_2

    .line 1728
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1734
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v3

    goto :goto_0

    .line 1730
    :cond_1
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v4

    invoke-direct {p1, v8, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1739
    :cond_2
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1744
    new-instance v6, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1745
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v2, v3, v1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1741
    :cond_3
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v4

    invoke-direct {p1, v8, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1748
    :cond_4
    :goto_1
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1750
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getFieldInstructionMapper()Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;

    move-result-object v2

    .line 1751
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    .line 1750
    invoke-virtual {v2, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getAndCheckDeodexedOpcode(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1753
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterA()I

    move-result v3

    int-to-byte v3, v3

    .line 1754
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v0

    int-to-byte v0, v0

    invoke-direct {v2, v1, v3, v0, v6}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1755
    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    .line 1757
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    return v7

    .line 1716
    :cond_5
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    iget-object v0, v2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 1717
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v7

    const-string v0, "Could not resolve the field in class %s at offset %d"

    invoke-direct {p1, v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeLiteralBinaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Z)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    .line 1513
    iget-object p3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1516
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p3

    .line 1518
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte p3, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1519
    iget-object p3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1521
    :cond_0
    sget-object p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 1526
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeMove(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1111
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1113
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1114
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeMoveException(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v0

    .line 1143
    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 1145
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 1146
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 1148
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 1149
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    if-nez v4, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v4, "Ljava/lang/Throwable;"

    .line 1152
    invoke-virtual {v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v1

    .line 1151
    invoke-static {v5, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    .line 1154
    :cond_2
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v4

    .line 1155
    invoke-virtual {v4, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->merge(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    .line 1161
    :cond_3
    iget-byte v0, v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eqz v0, :cond_4

    .line 1165
    invoke-direct {p0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 1162
    :cond_4
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "move-exception must be the first instruction in an exception handler block"

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeMoveResult(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1119
    iget v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    iget v1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1122
    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Opcode;->setsResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1129
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    .line 1131
    instance-of v1, v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    goto :goto_1

    .line 1134
    :cond_1
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1137
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 1123
    :cond_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must occur after an invoke-*/fill-new-array instruction"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private analyzeNewArray(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1335
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1337
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 1338
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1344
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 1339
    :cond_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const-string v0, "new-array used with non-array type"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeNewInstance(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1314
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1316
    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 1317
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v1

    .line 1318
    iget-byte v1, v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eqz v1, :cond_0

    return-void

    .line 1326
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    .line 1328
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    const/16 v1, 0x10

    .line 1330
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 1331
    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1330
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeOdexReturnVoid(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1

    const/4 v0, 0x1

    .line 1169
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeOdexReturnVoid(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1173
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->RETURN_VOID:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 1175
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_0

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_0
    return-void
.end method

.method private analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1923
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z

    move-result p1

    return p1
.end method

.method private analyzePutGetVolatile(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Z
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1927
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 1928
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1930
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v2

    .line 1932
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getFieldInstructionMapper()Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getAndCheckDeodexedOpcode(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 1937
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/Opcode;->isStaticFieldAccessor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    .line 1939
    new-instance v3, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-direct {v3, v1, v2, v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    goto :goto_0

    .line 1941
    :cond_0
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1943
    new-instance v3, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    .line 1944
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-direct {v3, v1, v4, v2, v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1947
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_1

    .line 1950
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private analyzeUnaryOp(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeWideConst(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1192
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private buildExceptionHandlerArray(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)[",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 615
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object p1

    .line 617
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    const/4 v1, 0x0

    .line 618
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildInstructionList()V
    .locals 13

    .line 453
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 456
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 455
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/util/SparseArray;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 462
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 463
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 464
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    new-instance v7, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {v7, p0, v5, v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;II)V

    invoke-virtual {v6, v4, v7}, Lcom/android/tools/smali/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 467
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder;->massageTryBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 478
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    move-object v6, v4

    move-object v8, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 481
    :goto_1
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v9}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 482
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v9, v5}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 483
    iget-object v10, v9, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v10}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v10

    .line 484
    invoke-virtual {p0, v9}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v9

    if-eqz v6, :cond_1

    .line 488
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v11

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v11, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    move-object v6, v4

    :cond_1
    if-nez v6, :cond_2

    .line 495
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 496
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 497
    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v12

    if-gt v12, v9, :cond_2

    .line 502
    invoke-direct {p0, v11}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->buildExceptionHandlerArray(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    move-result-object v8

    move-object v6, v11

    :cond_2
    if-eqz v6, :cond_3

    .line 508
    invoke-virtual {v10}, Lcom/android/tools/smali/dexlib2/Opcode;->canThrow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 509
    aput-object v8, v3, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 518
    :cond_4
    new-instance v0, Ljava/util/BitSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 520
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v4, v2}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v1, v4, v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    .line 521
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 522
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 525
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v4, v1}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 526
    iget-object v5, v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v5

    .line 527
    invoke-virtual {p0, v4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v6

    .line 529
    iget-object v7, v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/smali/dexlib2/Opcode;->canContinue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 530
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v7}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_6

    .line 534
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 535
    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_3

    .line 531
    :cond_6
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const-string v1, "Execution can continue past the last instruction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 538
    :cond_7
    :goto_3
    iget-object v1, v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    instance-of v1, v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    if-eqz v1, :cond_5

    .line 539
    iget-object v1, v4, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    .line 541
    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v5, v7, :cond_9

    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v5, v7, :cond_8

    goto :goto_4

    .line 559
    :cond_8
    sget-object v7, Lcom/android/tools/smali/dexlib2/Opcode;->FILL_ARRAY_DATA:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v5, v7, :cond_5

    .line 560
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    .line 561
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 563
    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_2

    .line 542
    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    .line 543
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    add-int/2addr v1, v6

    .line 542
    invoke-virtual {v5, v1}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v1, :cond_b

    .line 547
    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;

    .line 549
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 550
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    .line 551
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v5

    add-int/2addr v5, v6

    .line 550
    invoke-virtual {v7, v5}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v5, :cond_a

    .line 556
    invoke-direct {p0, v4, v5, v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;[[Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_5

    .line 553
    :cond_a
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const-string v1, "Invalid switch target offset"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 545
    :cond_b
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    const-string v1, "Invalid switch payload offset"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_c
    return-void
.end method

.method static canPropagateTypeAfterInstanceOf(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)Z
    .locals 3

    .line 1234
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1238
    :cond_0
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 1239
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1240
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    .line 1241
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-static {p2, v0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p2

    .line 1244
    :try_start_0
    iget-object v0, p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1245
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1246
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p0

    .line 1248
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    .line 1250
    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z

    move-result p0
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method private static checkRegister(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V
    .locals 2

    .line 1976
    iget-byte v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1977
    :cond_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 1978
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1977
    const-string p0, "Invalid register type %s for register v%d."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private static checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V
    .locals 2

    add-int/lit8 v0, p0, 0x1

    .line 1983
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    array-length p1, p1

    if-ge v0, p1, :cond_0

    return-void

    .line 1984
    :cond_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    .line 1985
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1984
    const-string p0, "v%d cannot be used as the first register in a wide registerpair because it is the last register."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static getAndCheckSourceRegister(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1960
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1962
    invoke-static {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    .line 1964
    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->WideLowCategories:Ljava/util/BitSet;

    if-ne p2, v1, :cond_0

    .line 1965
    invoke-static {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    .line 1966
    invoke-static {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p1, p1, 0x1

    .line 1968
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    .line 1969
    sget-object p2, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->WideHighCategories:Ljava/util/BitSet;

    invoke-static {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    :cond_0
    return-object v0
.end method

.method private getDestTypeForLiteralShiftRight(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1530
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1532
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->Primitive32BitCategories:Ljava/util/BitSet;

    invoke-static {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 1534
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 1542
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const-wide/16 v3, 0x1f

    and-long/2addr v1, v3

    .line 1549
    iget-byte v0, v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x18

    if-nez p2, :cond_3

    cmp-long p2, v1, v5

    if-lez p2, :cond_2

    .line 1554
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_2
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    .line 1557
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_3
    cmp-long p2, v1, v5

    if-ltz p2, :cond_4

    .line 1561
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_4
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    .line 1564
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_1
    cmp-long p2, v1, v3

    if-lez p2, :cond_5

    .line 1580
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_2
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    .line 1575
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_3
    if-eqz p2, :cond_5

    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    .line 1570
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    .line 1586
    :pswitch_4
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    :cond_5
    :pswitch_5
    return-object p1

    .line 1590
    :pswitch_6
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initializeRefAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 401
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 403
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setPostRegisterType(ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 407
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    .line 409
    invoke-direct {p0, v0, p2, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    .line 411
    iget-byte v0, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 412
    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    .line 413
    sget-object p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 414
    :cond_1
    iget-byte p3, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p3, v0, :cond_2

    .line 415
    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    .line 416
    sget-object p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isNotWideningConversion(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z
    .locals 3

    .line 1215
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1221
    :cond_1
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {v0, v2}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    .line 1222
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 1225
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic lambda$getInstructions$0(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_0
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-object p0
.end method

.method private normalizeMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1991
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/4 v1, 0x0

    .line 1994
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p1
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_0

    return-object v1

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 2005
    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    .line 2008
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2012
    :cond_2
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    .line 2013
    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_1
    return-object v1

    .line 2018
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2019
    invoke-static {v2, v3, v5, v5, v4}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;Lcom/android/tools/smali/dexlib2/iface/Method;ZZZ)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_0

    :catch_0
    return-object v1
.end method

.method private overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 377
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 379
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->overridePredecessorRegisterType(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget v1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x1

    .line 385
    invoke-direct {p0, v0, p3, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    .line 387
    iget-byte v0, p4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 388
    invoke-static {p3, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/2addr p3, v1

    .line 389
    sget-object p4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 391
    :cond_1
    iget-byte p4, p4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p4, v0, :cond_2

    .line 392
    invoke-static {p3, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/2addr p3, v1

    .line 393
    sget-object p4, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private propagateChanges(Ljava/util/BitSet;IZ)V
    .locals 2
    .param p1    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 365
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 367
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v1, p2, p1, p3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    add-int/lit8 v0, v0, 0x1

    .line 363
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private propagateParameterTypes(I)V
    .locals 8

    .line 314
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 315
    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->isWideType(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v5, v2, 0x1

    add-int v6, p1, v2

    const/4 v7, 0x1

    .line 317
    invoke-static {v3, v7}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getWideRegisterType(Ljava/lang/CharSequence;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v7

    .line 316
    invoke-direct {p0, v4, v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    .line 318
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v5, p1

    .line 319
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getWideRegisterType(Ljava/lang/CharSequence;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 318
    invoke-direct {p0, v4, v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, p1

    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 322
    invoke-static {v6, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v3

    .line 321
    invoke-direct {p0, v4, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private propagateRegisterToSuccessors(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 444
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object v0

    .line 445
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 446
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v1, p2, v0, v2, p4}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->mergeRegister(ILcom/android/tools/smali/dexlib2/analysis/RegisterType;Ljava/util/BitSet;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget v1, v1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDestinationRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 351
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 423
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 425
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->setPostRegisterType(ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 429
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    .line 431
    invoke-direct {p0, v0, p2, v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    .line 433
    iget-byte v0, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 434
    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    .line 435
    sget-object p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    return-void

    .line 436
    :cond_1
    iget-byte p3, p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p3, v0, :cond_2

    .line 437
    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    .line 438
    sget-object p3, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;ILcom/android/tools/smali/dexlib2/analysis/RegisterType;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAnalysisException()Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analysisException:Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    return-object v0
.end method

.method public getAnalyzedInstructions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getInstructionAddress(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 346
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public getInstructions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lcom/android/tools/smali/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 333
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getParamRegisterCount()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    return v0
.end method
