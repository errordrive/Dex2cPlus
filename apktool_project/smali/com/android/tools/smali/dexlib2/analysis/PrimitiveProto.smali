.class public Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;
.super Ljava/lang/Object;
.source "PrimitiveProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/analysis/TypeProto;


# instance fields
.field protected final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

.field protected final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 47
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, -0x1

    return p1
.end method

.method public getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

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

    .line 57
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot call getCommonSuperclass on PrimitiveProto"

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

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

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

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

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PrimitiveProto;->type:Ljava/lang/String;

    return-object v0
.end method
