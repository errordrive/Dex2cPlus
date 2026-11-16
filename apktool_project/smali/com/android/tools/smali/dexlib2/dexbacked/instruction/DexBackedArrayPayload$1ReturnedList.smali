.class abstract Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;
.source "DexBackedArrayPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->getArrayElements()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ReturnedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    return v0
.end method
