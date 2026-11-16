.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;
.source "DexBackedMethodHandleReference.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final methodHandleIndex:I

.field public final methodHandleOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 49
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleIndex:I

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleOffset:I

    return-void
.end method


# virtual methods
.method public getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->getMethodHandleType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->getMethodHandleType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid method handle type: %d"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 73
    :pswitch_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v1

    .line 67
    :pswitch_1
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMethodHandleType()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public validateReference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleIndex:I

    const-string v1, "methodhandle@"

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    :try_end_0
    .catch Lcom/android/tools/smali/util/ExceptionWithContext; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 88
    new-instance v2, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 82
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;->methodHandleIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
