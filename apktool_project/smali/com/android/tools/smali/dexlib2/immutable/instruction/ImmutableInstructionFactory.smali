.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;
.super Ljava/lang/Object;
.source "ImmutableInstructionFactory.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/InstructionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/InstructionFactory<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/Reference;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic makeArrayPayload(ILjava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeArrayPayload(ILjava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    move-result-object p1

    return-object p1
.end method

.method public makeArrayPayload(ILjava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction10t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction10t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction10t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 50
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction10x(Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction10x(Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction10x(Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 54
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction11n(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction11n(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction11n(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 60
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction11x(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction11x(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction11x(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 65
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction12x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction12x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction12x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 71
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction20bc(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction20bc(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction20bc(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 77
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction20t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction20t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction20t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 82
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction21c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction21c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction21c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 88
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction21ih(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction21ih(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction21ih(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 94
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction21lh(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction21lh(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction21lh(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 100
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction21s(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction21s(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction21s(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 106
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction21t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction21t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction21t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 112
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction22b(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction22b(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction22b(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 119
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction22c(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction22c(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction22c(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 126
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction22s(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction22s(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction22s(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 133
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction22t(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction22t(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction22t(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 140
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction22x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction22x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction22x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 146
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction23x(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction23x(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction23x(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 153
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction30t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction30t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction30t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 158
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction31c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction31c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction31c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 164
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction31i(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction31i(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction31i(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 170
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction31t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction31t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction31t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 176
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction32x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction32x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction32x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 182
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction35c(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual/range {p0 .. p8}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction35c(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction35c(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 193
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction3rc(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction3rc(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction3rc(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 201
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method public bridge synthetic makeInstruction51l(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeInstruction51l(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    move-result-object p1

    return-object p1
.end method

.method public makeInstruction51l(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 207
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method public bridge synthetic makePackedSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makePackedSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    move-result-object p1

    return-object p1
.end method

.method public makePackedSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic makeSparseSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstructionFactory;->makeSparseSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    move-result-object p1

    return-object p1
.end method

.method public makeSparseSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object v0
.end method
