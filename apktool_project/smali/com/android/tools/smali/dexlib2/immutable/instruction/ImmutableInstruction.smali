.class public abstract Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.super Ljava/lang/Object;
.source "ImmutableInstruction.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final opcode:Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->getFormat()Lcom/android/tools/smali/dexlib2/Format;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkFormat(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Format;)V

    .line 84
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 186
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;

    return-object p0

    .line 93
    :cond_0
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$2;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected instruction type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :pswitch_0
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_1
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSparseSwitchPayload;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_2
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_3
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_4
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;

    move-result-object p0

    return-object p0

    .line 158
    :pswitch_5
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction45cc;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction45cc;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_6
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rms;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rms;

    move-result-object p0

    return-object p0

    .line 154
    :pswitch_7
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rmi;

    move-result-object p0

    return-object p0

    .line 152
    :pswitch_8
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    move-result-object p0

    return-object p0

    .line 150
    :pswitch_9
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35ms;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35ms;

    move-result-object p0

    return-object p0

    .line 148
    :pswitch_a
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35mi;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35mi;

    move-result-object p0

    return-object p0

    .line 146
    :pswitch_b
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    move-result-object p0

    return-object p0

    .line 144
    :pswitch_c
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction32x;

    move-result-object p0

    return-object p0

    .line 142
    :pswitch_d
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_e
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31i;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_f
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31c;

    move-result-object p0

    return-object p0

    .line 136
    :pswitch_10
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction30t;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_11
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction23x;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_12
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22x;

    move-result-object p0

    return-object p0

    .line 130
    :pswitch_13
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22t;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_14
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22s;

    move-result-object p0

    return-object p0

    .line 126
    :pswitch_15
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22cs;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22cs;

    move-result-object p0

    return-object p0

    .line 124
    :pswitch_16
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22c;

    move-result-object p0

    return-object p0

    .line 122
    :pswitch_17
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction22b;

    move-result-object p0

    return-object p0

    .line 120
    :pswitch_18
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21t;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_19
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21s;

    move-result-object p0

    return-object p0

    .line 116
    :pswitch_1a
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21lh;

    move-result-object p0

    return-object p0

    .line 114
    :pswitch_1b
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21ih;

    move-result-object p0

    return-object p0

    .line 112
    :pswitch_1c
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;

    move-result-object p0

    return-object p0

    .line 110
    :pswitch_1d
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_1e
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20bc;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_1f
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction12x;

    move-result-object p0

    return-object p0

    .line 104
    :pswitch_20
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11x;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_21
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction11n;

    move-result-object p0

    return-object p0

    .line 97
    :pswitch_22
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/UnknownInstruction;

    if-eqz v0, :cond_1

    .line 98
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/UnknownInstruction;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableUnknownInstruction;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/UnknownInstruction;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableUnknownInstruction;

    move-result-object p0

    return-object p0

    .line 100
    :cond_1
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_23
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10t;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
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


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->getFormat()Lcom/android/tools/smali/dexlib2/Format;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Format;->size:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public abstract getFormat()Lcom/android/tools/smali/dexlib2/Format;
.end method

.method public getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object v0
.end method
