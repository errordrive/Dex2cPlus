.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.super Ljava/lang/Object;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction45cc;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction31c;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction21c;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction20bc;,
        Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
        ">;"
    }
.end annotation


# instance fields
.field protected final rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriteReference(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p0

    return-object p0
.end method

.method private rewriteReference(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 2
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 112
    new-instance p2, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Invalid reference type: %d"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 107
    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodHandleReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    return-object p1

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getCallSiteReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object p1

    .line 103
    :pswitch_2
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    .line 104
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    .line 103
    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodProtoReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_3
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object p1

    .line 97
    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object p1

    .line 94
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteTypeReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object p1

    return-object p1

    :pswitch_6
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$1;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 82
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)V

    return-object v0

    .line 80
    :pswitch_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction45cc;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction45cc;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)V

    return-object v0

    .line 78
    :pswitch_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V

    return-object v0

    .line 76
    :pswitch_3
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V

    return-object v0

    .line 74
    :pswitch_4
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction31c;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction31c;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)V

    return-object v0

    .line 72
    :pswitch_5
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)V

    return-object v0

    .line 70
    :pswitch_6
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction21c;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction21c;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)V

    return-object v0

    .line 68
    :pswitch_7
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction20bc;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction20bc;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)V

    return-object v0

    :cond_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object p1

    return-object p1
.end method
