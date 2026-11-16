.class public Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;
.super Ljava/lang/Object;
.source "SyntheticAccessorResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;
    }
.end annotation


# static fields
.field public static final ADD_ASSIGNMENT:I = 0x7

.field public static final AND_ASSIGNMENT:I = 0xc

.field public static final DIV_ASSIGNMENT:I = 0xa

.field public static final GETTER:I = 0x1

.field public static final METHOD:I = 0x0

.field public static final MUL_ASSIGNMENT:I = 0x9

.field public static final OR_ASSIGNMENT:I = 0xd

.field public static final POSTFIX_DECREMENT:I = 0x5

.field public static final POSTFIX_INCREMENT:I = 0x3

.field public static final PREFIX_DECREMENT:I = 0x6

.field public static final PREFIX_INCREMENT:I = 0x4

.field public static final REM_ASSIGNMENT:I = 0xb

.field public static final SETTER:I = 0x2

.field public static final SHL_ASSIGNMENT:I = 0xf

.field public static final SHR_ASSIGNMENT:I = 0x10

.field public static final SUB_ASSIGNMENT:I = 0x8

.field public static final USHR_ASSIGNMENT:I = 0x11

.field public static final XOR_ASSIGNMENT:I = 0xe


# instance fields
.field private final classDefMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation
.end field

.field private final resolvedAccessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            "Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;",
            ">;"
        }
    .end annotation
.end field

.field private final syntheticAccessorFSM:Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->syntheticAccessorFSM:Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 82
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->classDefMap:Ljava/util/Map;

    return-void
.end method

.method public static looksLikeSyntheticAccessor(Ljava/lang/String;)Z
    .locals 1

    .line 89
    const-string v0, "access$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static methodReferenceEquals(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 154
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAccessedMember(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    if-eqz v0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->classDefMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 107
    :cond_1
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 108
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 110
    invoke-static {v2, p1}, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->methodReferenceEquals(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-nez v2, :cond_4

    return-object v1

    .line 123
    :cond_4
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNTHETIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    .line 128
    :cond_5
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->syntheticAccessorFSM:Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorFSM;->test(Ljava/util/List;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 134
    new-instance v1, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    const/4 v3, 0x0

    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver$AccessedMember;-><init>(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 136
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1
.end method
