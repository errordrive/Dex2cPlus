.class Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$TryBounds;
.super Ljava/lang/Object;
.source "TryListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TryBounds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EH::",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final end:Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock<",
            "TEH;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final start:Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock<",
            "TEH;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock<",
            "TEH;>;",
            "Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock<",
            "TEH;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$TryBounds;->start:Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    .line 81
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$TryBounds;->end:Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    return-void
.end method
