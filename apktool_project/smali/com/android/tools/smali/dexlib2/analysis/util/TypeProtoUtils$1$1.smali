.class Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;
.super Ljava/lang/Object;
.source "TypeProtoUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/tools/smali/dexlib2/analysis/TypeProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;

.field private type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;->val$typeProto:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassAsTypeProto(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassAsTypeProto(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;->next()Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
