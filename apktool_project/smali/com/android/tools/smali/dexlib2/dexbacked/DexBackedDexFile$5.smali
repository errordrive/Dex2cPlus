.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;
.source "DexBackedDexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->getOffset(I)I

    move-result p1

    .line 323
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$200(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    .line 324
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 326
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(I)I
    .locals 4

    if-ltz p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$500(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    return v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Invalid string index %d, not in [0, %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getOptional(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->getOptional(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOptional(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    return v0
.end method
