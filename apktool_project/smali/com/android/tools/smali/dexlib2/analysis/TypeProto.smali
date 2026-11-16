.class public interface abstract Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
.super Ljava/lang/Object;
.source "TypeProto.java"


# virtual methods
.method public abstract findMethodIndexInVtable(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getClassPath()Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldByOffset(I)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMethodByVtableIndex(I)Lcom/android/tools/smali/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSuperclass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract implementsInterface(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract isInterface()Z
.end method
