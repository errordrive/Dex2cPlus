.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;
.source "DexBackedAnnotationElement.java"


# instance fields
.field private final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final nameIndex:I

.field public final value:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


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

    .line 44
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->nameIndex:I

    .line 47
    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;->readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->nameIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method
