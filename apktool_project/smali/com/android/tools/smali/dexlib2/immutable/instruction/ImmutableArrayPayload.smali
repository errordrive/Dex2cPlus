.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableArrayPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;


# static fields
.field public static final OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;


# instance fields
.field protected final arrayElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final elementWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->ARRAY_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 56
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkArrayPayloadElementWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    if-nez p2, :cond_0

    .line 58
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 57
    :goto_0
    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkArrayPayloadElements(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    return-object p0

    .line 67
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;

    .line 68
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    .line 69
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getArrayElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Ljava/util/List;

    return-object v0
.end method

.method public getCodeUnits()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->arrayElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getElementWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->elementWidth:I

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
