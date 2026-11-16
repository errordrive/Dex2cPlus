.class public Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;
.super Ljava/lang/Object;
.source "InstructionWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;",
        "TypeRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        "FieldRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "MethodRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "ProtoRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        "MethodHandleKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "CallSiteKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
            "TCallSiteKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
            "**TFieldRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
            "TMethodHandleKey;**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
            "***TMethodRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
            "**TProtoRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "*TStringRef;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final switchElementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;"
        }
    .end annotation
.end field

.field private final typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "**TTypeRef;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lcom/android/tools/smali/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p9    # Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "*TStringRef;>;",
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "**TTypeRef;>;",
            "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
            "**TFieldRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
            "***TMethodRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
            "**TProtoRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
            "TMethodHandleKey;**>;",
            "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
            "TCallSiteKey;*>;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->switchElementComparator:Ljava/util/Comparator;

    .line 137
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    .line 138
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    .line 139
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    .line 140
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    .line 141
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    .line 142
    iput-object p6, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 143
    iput-object p7, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    .line 144
    iput-object p8, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 145
    iput-object p9, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    return-void
.end method

.method private getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/Opcodes;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 151
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Instruction %s is invalid for api %d"

    invoke-direct {v0, p1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getReference2Index(Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;)I
    .locals 1

    .line 589
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v0

    .line 590
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    .line 589
    invoke-direct {p0, v0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)I

    move-result p1

    return p1
.end method

.method private getReferenceIndex(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 610
    new-instance p2, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unknown reference type: %d"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 606
    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 608
    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 604
    :pswitch_2
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 598
    :pswitch_3
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 596
    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 602
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)I

    move-result p1

    return p1

    .line 600
    :pswitch_6
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-interface {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)I

    move-result p1

    return p1

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

.method private getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I
    .locals 1

    .line 584
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v0

    .line 585
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    .line 584
    invoke-direct {p0, v0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)I

    move-result p1

    return p1
.end method

.method static makeInstructionWriter(Lcom/android/tools/smali/dexlib2/Opcodes;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;)Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;
    .locals 10
    .param p0    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<StringRef::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;",
            "TypeRef::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
            "FieldRefKey::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            "MethodRefKey::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            "ProtoRefKey::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
            "MethodHandleKey::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
            "CallSiteKey::",
            "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
            ">(",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "*TStringRef;>;",
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "**TTypeRef;>;",
            "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
            "**TFieldRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
            "***TMethodRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
            "**TProtoRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
            "TMethodHandleKey;**>;",
            "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
            "TCallSiteKey;*>;)",
            "Lcom/android/tools/smali/dexlib2/writer/InstructionWriter<",
            "TStringRef;TTypeRef;TFieldRefKey;TMethodRefKey;TProtoRefKey;TMethodHandleKey;TCallSiteKey;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;)V

    return-object v0
.end method

.method private static packNibbles(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 502
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 503
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 505
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 522
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 523
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeLong(J)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 518
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_1

    .line 512
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 513
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V

    goto :goto_2

    .line 507
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 508
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    goto :goto_3

    .line 527
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_5

    .line 528
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 531
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 159
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 168
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 177
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;->getNarrowLiteral()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 186
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;->getRegisterA()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 195
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterB()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 204
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;->getVerificationError()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 205
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 214
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 215
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 224
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 225
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 234
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 235
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;->getHatLiteral()S

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 244
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 245
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;->getHatLiteral()S

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 254
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 255
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 264
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 265
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 274
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 275
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 276
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 285
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 286
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 295
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 296
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;->getFieldOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 305
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 306
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 315
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 316
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 325
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 326
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterB()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 328
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 335
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 336
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 337
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterC()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 346
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 347
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 356
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 357
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 366
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 367
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 376
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 377
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 386
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 387
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 388
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterB()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 397
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 398
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 399
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 400
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 409
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 410
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getInlineIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 411
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 412
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterF()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 421
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 422
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getVtableIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 423
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 424
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterF()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 433
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 434
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 435
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 444
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 445
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getInlineIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 446
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;->getStartRegister()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 448
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 456
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 457
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getVtableIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 458
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 460
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 467
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 468
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 469
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 470
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterF()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 471
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReference2Index(Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 480
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 481
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 482
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getStartRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 483
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getReference2Index(Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 492
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 493
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getWideLiteral()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 495
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    .line 563
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    .line 564
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 566
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 570
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 571
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 575
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    .line 538
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)S

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    .line 540
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->switchElementComparator:Ljava/util/Comparator;

    .line 539
    invoke-static {p1, v0}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 544
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 547
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 550
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
