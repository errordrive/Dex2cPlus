.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderArrayPayload.java"

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

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->ARRAY_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

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

    .line 51
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 52
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    if-nez p2, :cond_0

    .line 53
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

    return-void
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

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

    return-object v0
.end method

.method public getCodeUnits()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->arrayElements:Ljava/util/List;

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

    .line 56
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->elementWidth:I

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
