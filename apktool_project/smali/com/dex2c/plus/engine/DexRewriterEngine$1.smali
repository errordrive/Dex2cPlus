.class Lcom/dex2c/plus/engine/DexRewriterEngine$1;
.super Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;
.source "DexRewriterEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/engine/DexRewriterEngine;->packageAndSaveToStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cleanLibName:Ljava/lang/String;

.field final synthetic val$loaderClassDesc:Ljava/lang/String;

.field final synthetic val$targetDescriptors:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$loaderClassDesc:Ljava/lang/String;

    iput-object p2, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$cleanLibName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$targetDescriptors:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;-><init>()V

    return-void
.end method

.method static synthetic lambda$getClassDefRewriter$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 1

    .line 129
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->-$$Nest$smbuildCustomLoaderClassDef(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    invoke-static {p3}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isClassTranslatable(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p3, p0}, Lcom/dex2c/plus/engine/DexRewriterEngine;->-$$Nest$smrewriteProtectedClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p3
.end method


# virtual methods
.method public getClassDefRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object p1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$loaderClassDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$cleanLibName:Ljava/lang/String;

    iget-object v1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$1;->val$targetDescriptors:Ljava/util/Set;

    new-instance v2, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lcom/dex2c/plus/engine/DexRewriterEngine$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-object v2
.end method
