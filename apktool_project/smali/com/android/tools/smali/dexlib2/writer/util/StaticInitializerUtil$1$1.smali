.class Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;
.super Lcom/android/tools/smali/util/AbstractForwardSequentialList;
.source "StaticInitializerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->getValue()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractForwardSequentialList<",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->val$sortedStaticFields:Ljava/util/SortedSet;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/SortedSet;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->val$lastIndex:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->access$000()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->val$lastIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
