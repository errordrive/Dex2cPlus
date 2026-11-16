.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;
.super Lcom/android/tools/smali/util/AbstractForwardSequentialList;
.source "BuilderClassPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractForwardSequentialList<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

.field final synthetic val$parameters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Ljava/util/List;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;->val$parameters:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;->val$parameters:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->access$000()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$6;->val$parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
