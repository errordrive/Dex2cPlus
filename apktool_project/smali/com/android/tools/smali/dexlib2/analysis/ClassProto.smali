.class public Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/analysis/TypeProto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;,
        Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;
    }
.end annotation


# static fields
.field private static final OTHER:B = 0x2t

.field private static final REFERENCE:B = 0x0t

.field private static final WIDE:B = 0x1t


# instance fields
.field private final artInstanceFieldsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/tools/smali/util/SparseArray<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final buggyPostDefaultMethodVtableSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final classDefSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final dalvikInstanceFieldsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/tools/smali/util/SparseArray<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected interfacesFullyResolved:Z

.field private final postDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final postDefaultMethodVtableSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final preDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final preDefaultMethodVtableSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected unresolvedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected vtableFullyResolved:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->unresolvedInterfaces:Ljava/util/Set;

    .line 103
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classDefSupplier:Ljava/util/function/Supplier;

    .line 147
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$2;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    .line 149
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->preDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;

    .line 223
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$3;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$3;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    .line 225
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->postDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;

    .line 509
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$5;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$5;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    .line 510
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->dalvikInstanceFieldsSupplier:Ljava/util/function/Supplier;

    .line 706
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    .line 707
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->artInstanceFieldsSupplier:Ljava/util/function/Supplier;

    .line 894
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->preDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    .line 945
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->buggyPostDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    .line 1092
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$9;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$9;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->postDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    .line 89
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 90
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-void

    .line 87
    :cond_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Cannot construct ClassProto for non reference type: %s"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)B
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)B

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getNextFieldOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(C)I
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getTypeSize(C)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->addToVtable(Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->findMethodIndexInVtableReverse(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->interfaceMethodOverrides(Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isOverridableByDefaultMethod(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p0

    return p0
.end method

.method private addToVtable(Ljava/lang/Iterable;Ljava/util/List;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1215
    invoke-static {p1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1216
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1220
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 1221
    invoke-direct {p0, p2, p4}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz p3, :cond_1

    .line 1225
    invoke-interface {p2, v0, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1229
    :cond_2
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkInterface(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)Z
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    nop

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 371
    :try_start_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return v1

    :catch_1
    move-exception p1

    if-nez v3, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    throw p1

    :cond_1
    :goto_1
    return v0
.end method

.method private findMethodIndexInVtable(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 476
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 477
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 478
    invoke-static {v2, p2}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->methodSignaturesMatch(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->shouldCheckPackagePrivateAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 480
    invoke-static {p0, v2, v3, v0, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;Lcom/android/tools/smali/dexlib2/iface/Method;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private findMethodIndexInVtableReverse(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            ")I"
        }
    .end annotation

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 490
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 491
    invoke-static {v2, p2}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->methodSignaturesMatch(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->shouldCheckPackagePrivateAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 493
    invoke-static {p0, v2, v1, v3, v3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;Lcom/android/tools/smali/dexlib2/iface/Method;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)B
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1235
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x44

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getNextFieldOffset()I
    .locals 5

    .line 841
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInstanceFields()Lcom/android/tools/smali/util/SparseArray;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    .line 846
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 847
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 848
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 850
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getTypeSize(C)I

    move-result v0

    add-int/2addr v4, v0

    return v4

    .line 853
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    add-int/lit8 v4, v4, 0x4

    return v4

    :cond_3
    add-int/2addr v4, v2

    return v4
.end method

.method private static getTypeSize(C)I
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x53

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 880
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid type: %s"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    :pswitch_0
    return v1

    :cond_1
    :pswitch_1
    const/16 p0, 0x8

    return p0

    :cond_2
    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private interfaceMethodOverrides(Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1259
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 1261
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 1263
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isOverridableByDefaultMethod(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1248
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 1249
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 472
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classDefSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    return-object v0
.end method

.method public getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 393
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    if-nez v0, :cond_0

    .line 394
    invoke-interface {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_0
    if-eq p0, p1, :cond_9

    .line 397
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 405
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 411
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->checkInterface(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    .line 419
    :goto_0
    :try_start_1
    move-object v2, p1

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->checkInterface(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)Z

    move-result v2
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_5

    :goto_1
    return-object p1

    :catch_1
    nop

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 426
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getUnknownClass()Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    .line 429
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassChain(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/smali/util/IteratorUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)V

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassChain(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/tools/smali/util/IteratorUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)V

    .line 438
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 439
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 441
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_8

    .line 442
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 443
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v0

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 448
    :cond_8
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getUnknownClass()Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object p0
.end method

.method protected getDirectInterfaces()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInterfaces()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$4;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$4;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V

    invoke-static {v0, v1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object v0

    .line 309
    iget-boolean v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getUnresolvedInterfaces()Ljava/util/Set;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "Interfaces for class %s not fully resolved: %s"

    invoke-direct {v0, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInstanceFields()Lcom/android/tools/smali/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInstanceFields()Lcom/android/tools/smali/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    return-object p1
.end method

.method public getInstanceFields()Lcom/android/tools/smali/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/util/SparseArray<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->artInstanceFieldsSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/util/SparseArray;

    return-object v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->dalvikInstanceFieldsSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/util/SparseArray;

    return-object v0
.end method

.method protected getInterfaces()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x48

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->postDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->preDefaultMethodInterfaceSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 464
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Method;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected getUnresolvedInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->unresolvedInterfaces:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public getVtable()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x48

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x57

    if-ge v0, v1, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->buggyPostDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->postDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 885
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->preDefaultMethodVtableSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 330
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInterfaces()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 333
    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    .line 334
    :cond_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "Interfaces for class %s not fully resolved"

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public isInterface()Z
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->INTERFACE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-object v0
.end method
