.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
.super Ljava/lang/Object;
.source "DexBackedMethodImplementation.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;


# instance fields
.field protected final codeOffset:I

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 61
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    .line 62
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    return-void
.end method

.method private getDebugInfo()Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getDebugOffset()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 151
    const-string v3, "%s: Invalid debug offset"

    if-gez v0, :cond_1

    .line 152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v2, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBaseDataOffset()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 156
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v2, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v1, v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    .line 149
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v2, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDebugItems()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getDebugInfo()Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDebugOffset()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v0

    return v0
.end method

.method public getInstructions()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsSize()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsStartOffset()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 83
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;II)V

    return-object v2
.end method

.method public getInstructionsSize()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method protected getInstructionsStartOffset()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getDebugInfo()Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;->getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getRegisterCount()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsStartOffset()I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 190
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

    .line 192
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 196
    :cond_0
    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;->getReaderOffset()I

    move-result v0

    goto :goto_0

    .line 200
    :cond_1
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTriesSize()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getTriesSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsSize()I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsStartOffset()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    const/4 v1, 0x4

    .line 118
    invoke-static {v2, v1}, Lcom/android/tools/smali/dexlib2/util/AlignmentUtils;->alignOffset(II)I

    move-result v1

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    .line 122
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$2;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;III)V

    return-object v3

    .line 137
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
