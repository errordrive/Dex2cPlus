.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutablePackedSwitchPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;


# static fields
.field public static final OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;


# instance fields
.field protected final switchElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 51
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableSwitchElement;->immutableListOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkSequentialOrderedKeys(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->switchElements:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 56
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;

    .line 60
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->switchElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutablePackedSwitchPayload;->switchElements:Ljava/util/List;

    return-object v0
.end method
