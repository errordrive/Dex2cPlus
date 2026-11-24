.class public Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;
.source "ClassPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/ClassSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BasePool<",
        "Ljava/lang/String;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/ClassSection<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key<",
        "+",
        "Ljava/util/Collection<",
        "+",
        "Ljava/lang/CharSequence;",
        ">;>;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETER_ANNOTATIONS:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private sortedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 363
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;

    .line 370
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$3;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$3;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->PARAMETER_ANNOTATIONS:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->sortedClasses:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/util/function/Function;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->PARAMETER_ANNOTATIONS:Ljava/util/function/Function;

    return-object v0
.end method

.method private internCode(Lcom/android/tools/smali/dexlib2/iface/Method;)V
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 157
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 159
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 161
    instance-of v4, v3, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    if-eqz v4, :cond_0

    .line 162
    move-object v4, v3

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 163
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v4

    invoke-direct {p0, v6, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;I)V

    .line 165
    :cond_0
    instance-of v4, v3, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;

    if-eqz v4, :cond_1

    .line 166
    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;

    .line 167
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;I)V

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_4

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    .line 173
    :cond_3
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Method %s has no instructions, but has try blocks."

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 176
    :cond_4
    :goto_1
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 177
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 178
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->internNullable(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private internDebug(Lcom/android/tools/smali/dexlib2/iface/Method;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 214
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 215
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 223
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    .line 224
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->internNullable(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 226
    :cond_3
    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    .line 227
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->internNullable(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->internNullable(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->internNullable(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private internReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;I)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    packed-switch p2, :pswitch_data_0

    .line 208
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unrecognized reference type: %d"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 202
    :pswitch_0
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 205
    :pswitch_1
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V

    return-void

    .line 199
    :pswitch_2
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    return-void

    .line 196
    :pswitch_3
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 193
    :pswitch_4
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 190
    :pswitch_5
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    return-void

    .line 187
    :pswitch_6
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccessFlags(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 279
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getAccessFlags()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getAccessFlags(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I

    move-result p1

    return p1
.end method

.method public getAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 452
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->annotationDirectoryOffset:I

    return p1
.end method

.method public bridge synthetic getAnnotationDirectoryOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I

    move-result p1

    return p1
.end method

.method public getAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 460
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->annotationSetRefListOffset:I

    return p1
.end method

.method public bridge synthetic getAnnotationSetRefListOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getClassAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getClassAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getClassAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 340
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    .line 341
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    if-nez p1, :cond_1

    return-object v0

    .line 259
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public getCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 468
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->codeItemOffset:I

    return p1
.end method

.method public bridge synthetic getCodeItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public getDebugItems(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 398
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 400
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getDebugItems(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getDebugItems(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getExceptionType(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 439
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFieldAccessFlags(Lcom/android/tools/smali/dexlib2/iface/Field;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 324
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAccessFlags()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getFieldAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getFieldAccessFlags(Lcom/android/tools/smali/dexlib2/iface/Field;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getFieldAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getFieldAnnotations(Lcom/android/tools/smali/dexlib2/iface/Field;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getFieldAnnotations(Lcom/android/tools/smali/dexlib2/iface/Field;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 348
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    .line 349
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getFieldHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/iface/Field;)Ljava/util/Set;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 332
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFieldHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getFieldHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/iface/Field;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getInstructions(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 422
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 424
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInstructions(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getInstructions(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getInterfaces(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 287
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;

    return-object p1
.end method

.method public bridge synthetic getInterfaces(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getInterfaces(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;

    move-result-object p1

    return-object p1
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 516
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 542
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$6;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;)V

    return-object v0
.end method

.method public getMethodAccessFlags(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 328
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getAccessFlags()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMethodAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getMethodAccessFlags(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMethodAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getMethodAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getMethodAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getMethodHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/Set;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 336
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMethodHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getMethodHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 380
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 381
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$4;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;Ljava/util/List;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getParameterAnnotations(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParameterNames(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getAccessFlags()I

    move-result v0

    const/16 v1, 0x500

    and-int/2addr v0, v1

    if-eqz v0, :cond_not_native

    const/4 v0, 0x0

    return-object v0

    :cond_not_native
    .line 406
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getParameters()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$5;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$5;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/TransformedIterable;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic getParameterNames(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getParameterNames(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getRegisterCount(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 414
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getRegisterCount(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getRegisterCount(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public getSortedClasses()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->sortedClasses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->usingToStringOrdering()Ljava/util/Comparator;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->sortedClasses:Ljava/util/List;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->sortedClasses:Ljava/util/List;

    return-object v0
.end method

.method public getSortedDirectMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 312
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getDirectMethods()Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedDirectMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getFields()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedFields(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 304
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getInstanceFields()Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedInstanceFields(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 320
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getMethods()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedMethods(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedStaticFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 300
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedStaticFields(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedStaticFields(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedVirtualMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 316
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getVirtualMethods()Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSortedVirtualMethods(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSourceFile(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 291
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSourceFile(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSourceFile(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getStaticInitializers(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->getStaticInitializers(Ljava/util/SortedSet;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStaticInitializers(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getStaticInitializers(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 283
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSuperclass(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getSuperclass(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTryBlocks(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 431
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 433
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic getTryBlocks(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getTryBlocks(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getType(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getType(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getType(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 99
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;-><init>(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V

    .line 101
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->internNullable(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;->intern(Ljava/util/Collection;)V

    .line 109
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->internNullable(Ljava/lang/CharSequence;)V

    .line 111
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getFields()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/Field;

    .line 113
    sget-object v6, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getShortFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v5, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    invoke-virtual {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    .line 120
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/Field;->getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-virtual {v6, v5}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v5, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->intern(Ljava/util/Set;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getStaticInitializers(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    check-cast v5, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;

    invoke-virtual {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;->intern(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 116
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v6, v3, v2

    const-string v0, "Multiple definitions for field %s->%s"

    invoke-direct {p1, v0, v3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 133
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 134
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    .line 135
    sget-object v6, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getShortMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v6, v6, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v6, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    .line 141
    invoke-direct {p0, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internCode(Lcom/android/tools/smali/dexlib2/iface/Method;)V

    .line 142
    invoke-direct {p0, v4}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->internDebug(Lcom/android/tools/smali/dexlib2/iface/Method;)V

    .line 143
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v6, v6, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v6, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->intern(Ljava/util/Set;)V

    .line 145
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 146
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v7, v7, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v7, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->intern(Ljava/util/Set;)V

    goto :goto_1

    .line 137
    :cond_5
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 138
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v6, v3, v2

    const-string v0, "Multiple definitions for method %s->%s"

    invoke-direct {p1, v0, v3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 150
    :cond_6
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->intern(Ljava/util/Set;)V

    return-void

    .line 103
    :cond_7
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Class %s has already been interned"

    invoke-direct {p1, v0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public makeMutableMethodImplementation(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 444
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;-><init>(Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v0
.end method

.method public bridge synthetic makeMutableMethodImplementation(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->makeMutableMethodImplementation(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 448
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->annotationDirectoryOffset:I

    return-void
.end method

.method public bridge synthetic setAnnotationDirectoryOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->setAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;I)V

    return-void
.end method

.method public setAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 456
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->annotationSetRefListOffset:I

    return-void
.end method

.method public bridge synthetic setAnnotationSetRefListOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->setAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;I)V

    return-void
.end method

.method public setCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 464
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->codeItemOffset:I

    return-void
.end method

.method public bridge synthetic setCodeItemOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->setCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;I)V

    return-void
.end method

.method public writeDebugItem(Lcom/android/tools/smali/dexlib2/writer/DebugWriter;Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DebugWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DebugWriter<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 502
    :pswitch_1
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    .line 503
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeLineNumber(II)V

    return-void

    .line 507
    :pswitch_2
    move-object v0, p2

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;

    .line 508
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getCodeAddress()I

    move-result v1

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeSetSourceFile(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :pswitch_3
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeEpilogueBegin(I)V

    return-void

    .line 494
    :pswitch_4
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writePrologueEnd(I)V

    return-void

    .line 489
    :pswitch_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;

    .line 490
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;->getRegister()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeRestartLocal(II)V

    return-void

    .line 484
    :pswitch_6
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    .line 485
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeEndLocal(II)V

    return-void

    .line 475
    :pswitch_7
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    .line 476
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getCodeAddress()I

    move-result v1

    .line 477
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v2

    .line 478
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getType()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignature()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 476
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeStartLocal(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    .line 511
    :goto_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unexpected debug item type: %d"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
