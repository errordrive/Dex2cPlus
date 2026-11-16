.class public Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;
.super Ljava/lang/Object;
.source "DexFileRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/DexFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenDexFile"
.end annotation


# instance fields
.field protected final dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;->dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    return-void
.end method


# virtual methods
.method public getClasses()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getClassDefRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;->dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter$RewrittenDexFile;->dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method
