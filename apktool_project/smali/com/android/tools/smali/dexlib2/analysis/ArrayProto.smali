.class public Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;
.super Ljava/lang/Object;
.source "ArrayProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/analysis/TypeProto;


# static fields
.field private static final BRACKETS:Ljava/lang/String;


# instance fields
.field protected final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

.field protected final dimensions:I

.field protected final elementType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 144
    const-string v0, "["

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/tools/smali/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->BRACKETS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const-string v3, "Invalid array type: %s"

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    .line 63
    iput v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-void

    .line 60
    :cond_2
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static makeArrayType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->BRACKETS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 100
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    const-string v1, "Ljava/lang/Object;"

    if-eqz v0, :cond_6

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/util/TypeUtils;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    iget v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v2, v3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    .line 113
    invoke-interface {v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    .line 123
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-static {v1, p1}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    .line 103
    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    iget v2, p1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v0, v2, :cond_5

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    return-object p0

    .line 107
    :cond_5
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    .line 127
    :cond_6
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    if-eqz v0, :cond_8

    .line 129
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    :goto_2
    return-object p1

    .line 137
    :catch_0
    :cond_7
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    .line 141
    :cond_8
    invoke-interface {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1
.end method

.method public getDimensions()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    return v0
.end method

.method public getElementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 156
    new-instance p1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    const-string v2, "int"

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImmediateElementType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 83
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 95
    const-string v0, "Ljava/lang/Object;"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->elementType:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->dimensions:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->makeArrayType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    const-string v0, "Ljava/lang/Cloneable;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Ljava/io/Serializable;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
