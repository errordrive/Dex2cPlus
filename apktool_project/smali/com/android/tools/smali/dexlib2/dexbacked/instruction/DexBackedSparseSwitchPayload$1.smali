.class Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;
.source "DexBackedSparseSwitchPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;->getSwitchElements()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public readItem(I)Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;I)V

    return-object v0
.end method

.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->readItem(I)Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;->elementCount:I

    return v0
.end method
