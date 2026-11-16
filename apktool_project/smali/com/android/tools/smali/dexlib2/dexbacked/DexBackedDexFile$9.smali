.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
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
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;
    .locals 2

    .line 449
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->get(I)Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(I)I
    .locals 4

    if-ltz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$1300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    return v0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Invalid proto index %d, not in [0, %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$1200(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    return v0
.end method
