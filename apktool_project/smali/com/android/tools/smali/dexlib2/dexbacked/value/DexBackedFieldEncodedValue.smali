.class public Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;
.source "DexBackedFieldEncodedValue.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldIndex:I


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

    .line 47
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    add-int/lit8 p3, p3, 0x1

    .line 49
    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;->fieldIndex:I

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;->fieldIndex:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method
