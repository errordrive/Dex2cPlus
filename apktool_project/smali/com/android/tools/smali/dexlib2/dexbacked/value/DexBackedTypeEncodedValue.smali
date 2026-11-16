.class public Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;
.source "DexBackedTypeEncodedValue.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 0
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
            ">;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    add-int/lit8 p3, p3, 0x1

    .line 47
    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;->typeIndex:I

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;->typeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
