.class Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;
.source "DexBackedArrayEncodedValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->getValue()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList<",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;->readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method
