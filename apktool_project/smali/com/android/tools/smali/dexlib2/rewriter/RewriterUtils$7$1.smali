.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7$1;
.super Ljava/lang/Object;
.source "RewriterUtils.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->getParameterTypes()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7$1;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 187
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7$1;->apply(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
