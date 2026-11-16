.class Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;
.super Ljava/lang/Object;
.source "DexBackedPackedSwitchPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->readItem(I)Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->val$firstKey:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset()I
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->instructionStart:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v0

    return v0
.end method
