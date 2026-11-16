.class public Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.source "DexBackedArrayEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final elementCount:I

.field private final encodedArrayOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->elementCount:I

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->encodedArrayOffset:I

    .line 53
    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipElementsFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-void
.end method

.method private static skipElementsFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 63
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;->skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 58
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipElementsFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->encodedArrayOffset:I

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->elementCount:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method
