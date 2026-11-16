.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;
.source "DexBackedCallSiteReference.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final callSiteIdOffset:I

.field public final callSiteIndex:I

.field private callSiteOffset:I

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteOffset:I

    .line 57
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 58
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIdOffset:I

    return-void
.end method

.method private getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v0

    return-object v0
.end method

.method private getCallSiteOffset()I
    .locals 2

    .line 155
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteOffset:I

    if-gez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIdOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteOffset:I

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteOffset:I

    return v0
.end method


# virtual methods
.method public getExtraArguments()Ljava/util/List;
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

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getItemCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 134
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getItemCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 140
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 142
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    .line 132
    :cond_2
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid call site item: must contain at least 3 entries."

    invoke-direct {v0, v2, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getItemCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_0

    .line 83
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 81
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const-string v0, "Invalid encoded value type (%d) for the first item in call site %d"

    invoke-direct {v1, v0, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 73
    :cond_1
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string v1, "Invalid call site item: must contain at least 3 entries."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getItemCount()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 95
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 102
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 100
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const-string v0, "Invalid encoded value type (%d) for the second item in call site %d"

    invoke-direct {v1, v0, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 91
    :cond_1
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string v1, "Invalid call site item: must contain at least 3 entries."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->getCallSiteIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getItemCount()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 114
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->skipNext()V

    .line 115
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 122
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    new-instance v1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 120
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const-string v0, "Invalid encoded value type (%d) for the second item in call site %d"

    invoke-direct {v1, v0, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 110
    :cond_1
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string v1, "Invalid call site item: must contain at least 3 entries."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "call_site_%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateReference()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callsite@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;->callSiteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
