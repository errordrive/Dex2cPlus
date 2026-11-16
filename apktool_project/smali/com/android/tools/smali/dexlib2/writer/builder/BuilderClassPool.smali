.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderClassPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/ClassSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/ClassSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final GET_INITIAL_VALUE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_INITIALIZER:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETER_ANNOTATIONS:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private sortedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->HAS_INITIALIZER:Ljava/util/function/Predicate;

    .line 157
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$3;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$3;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->GET_INITIAL_VALUE:Ljava/util/function/Function;

    .line 243
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$4;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$4;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;

    .line 251
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$5;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$5;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->PARAMETER_ANNOTATIONS:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 79
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->sortedClasses:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/util/function/Function;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->PARAMETER_ANNOTATIONS:Ljava/util/function/Function;

    return-object v0
.end method

.method private checkStringReference(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 361
    :cond_0
    :try_start_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 363
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only StringReference instances returned by DexBuilder.internStringReference or DexBuilder.internNullableStringReference may be used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkTypeReference(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_0
    :try_start_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 375
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only TypeReference instances returned by DexBuilder.internTypeReference or DexBuilder.internNullableTypeReference may be used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$getParameterNames$0(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-object p0
.end method


# virtual methods
.method public getAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 134
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->accessFlags:I

    return p1
.end method

.method public bridge synthetic getAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I

    move-result p1

    return p1
.end method

.method public getAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 337
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotationDirectoryOffset:I

    return p1
.end method

.method public bridge synthetic getAnnotationDirectoryOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I

    move-result p1

    return p1
.end method

.method public getAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 345
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotationSetRefListOffset:I

    return p1
.end method

.method public bridge synthetic getAnnotationSetRefListOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I

    move-result p1

    return p1
.end method

.method public getClassAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 223
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object p1
.end method

.method public bridge synthetic getClassAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getClassAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method

.method public getClassEntryByType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Ljava/util/Map$Entry;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            ")",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    if-nez p1, :cond_1

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getClassEntryByType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 353
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->codeItemOffset:I

    return p1
.end method

.method public bridge synthetic getCodeItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I

    move-result p1

    return p1
.end method

.method public getDebugItems(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 280
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 284
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object p1

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getDebugItems(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getExceptionType(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 320
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->checkTypeReference(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getExceptionType(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getExceptionType(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getFieldAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 205
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->accessFlags:I

    return p1
.end method

.method public bridge synthetic getFieldAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getFieldAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)I

    move-result p1

    return p1
.end method

.method public getFieldAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 230
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object p1
.end method

.method public bridge synthetic getFieldAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getFieldAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method

.method public getFieldHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Ljava/util/Set;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 214
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->getHiddenApiRestrictions()Ljava/util/Set;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getFieldHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getInstructions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 303
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object p1

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getInstructions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getInterfaces(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 142
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getInterfaces(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 428
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 432
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$7;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethodAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 209
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->accessFlags:I

    return p1
.end method

.method public bridge synthetic getMethodAccessFlags(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getMethodAccessFlags(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I

    move-result p1

    return p1
.end method

.method public getMethodAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 237
    iget-object v0, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 240
    :cond_0
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object p1
.end method

.method public bridge synthetic getMethodAnnotations(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getMethodAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method

.method public getMethodHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/Set;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 219
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getHiddenApiRestrictions()Ljava/util/Set;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getMethodHiddenApiRestrictions(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 261
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->HAS_PARAMETER_ANNOTATIONS:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Ljava/util/List;)V

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParameterNames(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 289
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 290
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public bridge synthetic getParameterNames(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getParameterNames(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getRegisterCount(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 294
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 298
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getRegisterCount(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getRegisterCount(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->sortedClasses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->sortedClasses:Ljava/util/List;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->sortedClasses:Ljava/util/List;

    return-object v0
.end method

.method public getSortedDirectMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 191
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getDirectMethods()Ljava/util/SortedSet;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedDirectMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getFields()Ljava/util/Collection;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getInstanceFields()Ljava/util/SortedSet;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getMethods()Ljava/util/Collection;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedStaticFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getStaticFields()Ljava/util/SortedSet;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedStaticFields(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSortedVirtualMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getVirtualMethods()Ljava/util/SortedSet;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSortedVirtualMethods(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSourceFile(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 146
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSourceFile(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public getStaticInitializers(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 171
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->staticInitializers:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getStaticInitializers(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 138
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->superclass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getSuperclass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getTryBlocks(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
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

    .line 312
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 314
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 316
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getTryBlocks(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 130
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method internClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    if-nez v0, :cond_0

    return-object p1

    .line 89
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Class %s has already been interned"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public makeMutableMethodImplementation(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 325
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object p1

    .line 326
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    return-object p1

    .line 329
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

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

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->makeMutableMethodImplementation(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    move-result-object p1

    return-object p1
.end method

.method public setAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 333
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotationDirectoryOffset:I

    return-void
.end method

.method public bridge synthetic setAnnotationDirectoryOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->setAnnotationDirectoryOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;I)V

    return-void
.end method

.method public setAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 341
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->annotationSetRefListOffset:I

    return-void
.end method

.method public bridge synthetic setAnnotationSetRefListOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->setAnnotationSetRefListOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;I)V

    return-void
.end method

.method public setCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 349
    iput p2, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->codeItemOffset:I

    return-void
.end method

.method public bridge synthetic setCodeItemOffset(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->setCodeItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;I)V

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
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

    .line 383
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 423
    :pswitch_0
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

    .line 412
    :pswitch_1
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    .line 413
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeLineNumber(II)V

    return-void

    .line 417
    :pswitch_2
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;

    .line 418
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getCodeAddress()I

    move-result v0

    .line 419
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;->getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->checkStringReference(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p2

    .line 418
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeSetSourceFile(ILjava/lang/CharSequence;)V

    return-void

    .line 408
    :pswitch_3
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeEpilogueBegin(I)V

    return-void

    .line 404
    :pswitch_4
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writePrologueEnd(I)V

    return-void

    .line 399
    :pswitch_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;

    .line 400
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;->getRegister()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeRestartLocal(II)V

    return-void

    .line 394
    :pswitch_6
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    .line 395
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getCodeAddress()I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeEndLocal(II)V

    return-void

    .line 385
    :pswitch_7
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    .line 386
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getCodeAddress()I

    move-result v1

    .line 387
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v2

    .line 388
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->checkStringReference(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v3

    .line 389
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->checkTypeReference(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v4

    .line 390
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->checkStringReference(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v5

    move-object v0, p1

    .line 386
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeStartLocal(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

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
