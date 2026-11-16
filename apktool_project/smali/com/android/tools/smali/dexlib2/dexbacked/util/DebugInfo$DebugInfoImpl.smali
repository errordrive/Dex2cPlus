.class Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugInfoImpl"
.end annotation


# static fields
.field private static final EMPTY_LOCAL_INFO:Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;


# instance fields
.field private final debugInfoOffset:I

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 107
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    .line 108
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    return-object v0
.end method


# virtual methods
.method public getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 302
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-object v1
.end method

.method public bridge synthetic getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_0
    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->getReaderOffset()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readBigUleb128()I

    move-result v5

    .line 122
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getRegisterCount()I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    .line 126
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructionsSize()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    .line 127
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/smali/util/IteratorUtils;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v3

    sub-int v6, v2, v3

    .line 130
    new-array v7, v1, [Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    .line 131
    sget-object v2, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    .line 138
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;

    .line 139
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    .line 140
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getParameterAnnotations()Ljava/util/List;

    move-result-object v2

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object v8

    invoke-direct {v3, v4, v2, v8}, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Iterator;)V

    .line 146
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v4, v4, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getAccessFlags()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$2;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;)V

    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 154
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v8, 0x1

    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    aput-object v9, v7, v8

    move v8, v2

    goto :goto_0

    :cond_1
    if-ge v8, v1, :cond_4

    sub-int/2addr v1, v4

    :goto_1
    const/4 v2, -0x1

    add-int/2addr v8, v2

    if-le v8, v2, :cond_4

    .line 162
    aget-object v3, v7, v8

    .line 163
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 164
    const-string v9, "J"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "D"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v8, :cond_3

    goto :goto_2

    .line 171
    :cond_3
    aput-object v3, v7, v1

    .line 172
    sget-object v3, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    aput-object v3, v7, v8

    add-int/2addr v1, v2

    goto :goto_1

    .line 177
    :cond_4
    :goto_2
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;III[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;)V

    return-object v1
.end method
