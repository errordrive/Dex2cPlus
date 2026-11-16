.class public Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;
.super Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;
.source "DexBackedArrayPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;


# static fields
.field private static final ELEMENTS_OFFSET:I = 0x8

.field private static final ELEMENT_COUNT_OFFSET:I = 0x4

.field private static final ELEMENT_WIDTH_OFFSET:I = 0x2

.field public static final OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;


# instance fields
.field public final elementCount:I

.field public final elementWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->ARRAY_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/Opcode;I)V

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    .line 61
    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    return-void

    .line 63
    :cond_0
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    int-to-long v2, v0

    int-to-long p1, p1

    mul-long v2, v2, p1

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1

    return-void

    .line 67
    :cond_1
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string p2, "Invalid array-payload instruction: element width*count overflows"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public getArrayElements()Ljava/util/List;
    .locals 5
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

    .line 77
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->instructionStart:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 83
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    if-nez v2, :cond_0

    .line 84
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 87
    :cond_0
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    if-ne v2, v1, :cond_1

    .line 113
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$4;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$4;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    .line 121
    :cond_1
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid element width: %d"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 105
    :cond_2
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$3;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    .line 97
    :cond_3
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    .line 89
    :cond_4
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1
.end method

.method public getCodeUnits()I
    .locals 2

    .line 127
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getElementWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    return v0
.end method
