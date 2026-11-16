.class public final synthetic Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-static {v0, v1, v2, p1}, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->lambda$getClassDefRewriter$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object p1

    return-object p1
.end method
