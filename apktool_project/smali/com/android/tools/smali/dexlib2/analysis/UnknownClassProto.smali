.class public Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;
.super Ljava/lang/Object;
.source "UnknownClassProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/analysis/TypeProto;


# instance fields
.field protected final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    return-void
.end method


# virtual methods
.method public findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

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

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 57
    :cond_0
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/analysis/ArrayProto;

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    return-object p1
.end method

.method public getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnknownClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 67
    const-string v0, "Ujava/lang/Object;"

    return-object v0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "Ujava/lang/Object;"

    return-object v0
.end method
