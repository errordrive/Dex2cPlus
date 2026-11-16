.class public Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;
.super Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;
.source "DexBackedSparseSwitchPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;


# static fields
.field private static final ELEMENT_COUNT_OFFSET:I = 0x2

.field private static final KEYS_OFFSET:I = 0x4


# instance fields
.field public final elementCount:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 51
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/Opcode;I)V

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;->elementCount:I

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;->elementCount:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
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

    .line 59
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;)V

    return-object v0
.end method
