.class Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;
.super Ljava/lang/Object;
.source "ParamUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil;->access$000(Ljava/lang/String;I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    iput v0, p0, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    .line 79
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil$1$1;->next()Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
