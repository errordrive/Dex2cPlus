.class public Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
.super Ljava/lang/Object;
.source "ClassPath.java"


# static fields
.field public static final NOT_ART:I = -0x1

.field public static final NOT_SPECIFIED:I = -0x2


# instance fields
.field private final checkPackagePrivateAccess:Z

.field private classProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldInstructionMapperSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;",
            ">;"
        }
    .end annotation
.end field

.field private loadedClasses:Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/analysis/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/analysis/TypeProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final oatVersion:I

.field private final unknownClass:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;-><init>(Ljava/lang/Iterable;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;ZI)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;ZI)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath$1;

    const/16 v1, 0x7530

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;

    .line 165
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)V

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->fieldInstructionMapperSupplier:Ljava/util/function/Supplier;

    .line 91
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->unknownClass:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    .line 92
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-boolean p2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->checkPackagePrivateAccess:Z

    .line 94
    iput p3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    .line 96
    const-string p2, "Z"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 97
    const-string p2, "B"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 98
    const-string p2, "S"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 99
    const-string p2, "C"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 100
    const-string p2, "I"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 101
    const-string p2, "J"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 102
    const-string p2, "F"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 103
    const-string p2, "D"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 104
    const-string p2, "L"

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->classProviders:Ljava/util/List;

    .line 107
    invoke-static {}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getBasicClasses()Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;-><init>(Ljava/lang/Iterable;ZI)V

    return-void
.end method

.method private static getBasicClasses()Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;
    .locals 7

    .line 116
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;

    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    invoke-static {}, Lcom/android/tools/smali/dexlib2/Opcodes;->getDefault()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/Cloneable;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/Object;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/io/Serializable;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x4

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 117
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;-><init>(Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    return-object v0
.end method

.method private loadPrimitiveType(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    return-object p1
.end method

.method public getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->classProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;

    .line 148
    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 153
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not resolve class %s"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFieldInstructionMapper()Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->fieldInstructionMapperSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;

    return-object v0
.end method

.method public getUnknownClass()Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->unknownClass:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    return-object v0
.end method

.method public isArt()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckPackagePrivateAccess()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->checkPackagePrivateAccess:Z

    return v0
.end method
