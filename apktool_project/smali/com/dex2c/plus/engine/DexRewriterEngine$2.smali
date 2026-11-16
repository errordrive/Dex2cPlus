.class Lcom/dex2c/plus/engine/DexRewriterEngine$2;
.super Ljava/lang/Object;
.source "DexRewriterEngine.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/DexFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/engine/DexRewriterEngine;->packageAndSaveToStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$customLoaderDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

.field final synthetic val$rewrittenDex:Lcom/android/tools/smali/dexlib2/iface/DexFile;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/iface/DexFile;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$2;->val$rewrittenDex:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    iput-object p2, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$2;->val$customLoaderDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 150
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$2;->val$rewrittenDex:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    iget-object v1, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$2;->val$customLoaderDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/dex2c/plus/engine/DexRewriterEngine$2;->val$rewrittenDex:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method
