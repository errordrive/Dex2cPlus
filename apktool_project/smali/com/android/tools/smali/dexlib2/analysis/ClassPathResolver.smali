.class public Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;
.super Ljava/lang/Object;
.source "ClassPathResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;,
        Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final classPathDirs:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "Neither %s nor %s contain a dex file"

    const-string v1, ".odex"

    const-string v2, ".jar"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object v3

    .line 79
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->classPathDirs:Ljava/lang/Iterable;

    .line 80
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    if-nez p2, :cond_0

    .line 83
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    invoke-static {p4, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->getDefaultBootClassPath(Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;I)Ljava/util/List;

    move-result-object p2

    .line 86
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 88
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 103
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 108
    :catch_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v5

    aput-object v7, p3, v3

    invoke-direct {p1, v0, p3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 113
    :cond_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception v6

    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 93
    :try_start_2
    invoke-direct {p0, v7}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 97
    :catch_4
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 95
    :catch_5
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v5

    aput-object v7, p3, v3

    invoke-direct {p1, v0, p3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 100
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v6}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 118
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 122
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->loadLocalClassPathEntry(Ljava/lang/String;)Z
    :try_end_3
    .catch Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_6
    move-exception p1

    .line 124
    new-instance p2, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 128
    :cond_4
    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getContainer()Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 130
    invoke-interface {p1, p3}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object p3

    .line 132
    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    invoke-virtual {p4}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->getClassProviders()Ljava/util/List;

    move-result-object p4

    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;

    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;-><init>(Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static bootClassPathForOat(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Ljava/util/List;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getBootClassPath()Ljava/util/List;

    move-result-object p0

    .line 379
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string p0, "boot.oat"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 382
    :cond_0
    const-string v0, ".art"

    const-string v1, ".oat"

    invoke-static {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->replaceElementsSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultBootClassPath(Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;I)Ljava/util/List;
    .locals 14
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
            "*>;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 239
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getContainer()Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    move-result-object v0

    .line 241
    instance-of v1, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->bootClassPathForOat(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object p0

    .line 247
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    if-eqz v0, :cond_1

    .line 248
    check-cast p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->getDependencies()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x8

    if-gt p1, p0, :cond_2

    .line 252
    const-string p0, "/system/framework/android.policy.jar"

    const-string p1, "/system/framework/services.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/ext.jar"

    const-string v2, "/system/framework/framework.jar"

    filled-new-array {v0, v1, v2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xb

    if-gt p1, p0, :cond_3

    .line 259
    const-string v5, "/system/framework/services.jar"

    const-string v6, "/system/framework/core-junit.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/bouncycastle.jar"

    const-string v2, "/system/framework/ext.jar"

    const-string v3, "/system/framework/framework.jar"

    const-string v4, "/system/framework/android.policy.jar"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0xd

    if-gt p1, p0, :cond_4

    .line 268
    const-string v6, "/system/framework/services.jar"

    const-string v7, "/system/framework/core-junit.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/apache-xml.jar"

    const-string v2, "/system/framework/bouncycastle.jar"

    const-string v3, "/system/framework/ext.jar"

    const-string v4, "/system/framework/framework.jar"

    const-string v5, "/system/framework/android.policy.jar"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0xf

    if-gt p1, p0, :cond_5

    .line 278
    const-string v7, "/system/framework/apache-xml.jar"

    const-string v8, "/system/framework/filterfw.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/core-junit.jar"

    const-string v2, "/system/framework/bouncycastle.jar"

    const-string v3, "/system/framework/ext.jar"

    const-string v4, "/system/framework/framework.jar"

    const-string v5, "/system/framework/android.policy.jar"

    const-string v6, "/system/framework/services.jar"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0x11

    if-gt p1, p0, :cond_6

    .line 290
    const-string v8, "/system/framework/services.jar"

    const-string v9, "/system/framework/apache-xml.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/core-junit.jar"

    const-string v2, "/system/framework/bouncycastle.jar"

    const-string v3, "/system/framework/ext.jar"

    const-string v4, "/system/framework/framework.jar"

    const-string v5, "/system/framework/telephony-common.jar"

    const-string v6, "/system/framework/mms-common.jar"

    const-string v7, "/system/framework/android.policy.jar"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p0, 0x12

    if-gt p1, p0, :cond_7

    .line 302
    const-string v9, "/system/framework/services.jar"

    const-string v10, "/system/framework/apache-xml.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/core-junit.jar"

    const-string v2, "/system/framework/bouncycastle.jar"

    const-string v3, "/system/framework/ext.jar"

    const-string v4, "/system/framework/framework.jar"

    const-string v5, "/system/framework/telephony-common.jar"

    const-string v6, "/system/framework/voip-common.jar"

    const-string v7, "/system/framework/mms-common.jar"

    const-string v8, "/system/framework/android.policy.jar"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 p0, 0x13

    if-gt p1, p0, :cond_8

    .line 315
    const-string v12, "/system/framework/apache-xml.jar"

    const-string v13, "/system/framework/webviewchromium.jar"

    const-string v0, "/system/framework/core.jar"

    const-string v1, "/system/framework/conscrypt.jar"

    const-string v2, "/system/framework/core-junit.jar"

    const-string v3, "/system/framework/bouncycastle.jar"

    const-string v4, "/system/framework/ext.jar"

    const-string v5, "/system/framework/framework.jar"

    const-string v6, "/system/framework/framework2.jar"

    const-string v7, "/system/framework/telephony-common.jar"

    const-string v8, "/system/framework/voip-common.jar"

    const-string v9, "/system/framework/mms-common.jar"

    const-string v10, "/system/framework/android.policy.jar"

    const-string v11, "/system/framework/services.jar"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 p0, 0x16

    if-gt p1, p0, :cond_9

    .line 331
    const-string v11, "/system/framework/android.policy.jar"

    const-string v12, "/system/framework/apache-xml.jar"

    const-string v0, "/system/framework/core-libart.jar"

    const-string v1, "/system/framework/conscrypt.jar"

    const-string v2, "/system/framework/okhttp.jar"

    const-string v3, "/system/framework/core-junit.jar"

    const-string v4, "/system/framework/bouncycastle.jar"

    const-string v5, "/system/framework/ext.jar"

    const-string v6, "/system/framework/framework.jar"

    const-string v7, "/system/framework/telephony-common.jar"

    const-string v8, "/system/framework/voip-common.jar"

    const-string v9, "/system/framework/ims-common.jar"

    const-string v10, "/system/framework/mms-common.jar"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 p0, 0x17

    if-gt p1, p0, :cond_a

    .line 346
    const-string v10, "/system/framework/apache-xml.jar"

    const-string v11, "/system/framework/org.apache.http.legacy.boot.jar"

    const-string v0, "/system/framework/core-libart.jar"

    const-string v1, "/system/framework/conscrypt.jar"

    const-string v2, "/system/framework/okhttp.jar"

    const-string v3, "/system/framework/core-junit.jar"

    const-string v4, "/system/framework/bouncycastle.jar"

    const-string v5, "/system/framework/ext.jar"

    const-string v6, "/system/framework/framework.jar"

    const-string v7, "/system/framework/telephony-common.jar"

    const-string v8, "/system/framework/voip-common.jar"

    const-string v9, "/system/framework/ims-common.jar"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 360
    :cond_a
    const-string v11, "/system/framework/apache-xml.jar"

    const-string v12, "/system/framework/org.apache.http.legacy.boot.jar"

    const-string v0, "/system/framework/core-oj.jar"

    const-string v1, "/system/framework/core-libart.jar"

    const-string v2, "/system/framework/conscrypt.jar"

    const-string v3, "/system/framework/okhttp.jar"

    const-string v4, "/system/framework/core-junit.jar"

    const-string v5, "/system/framework/bouncycastle.jar"

    const-string v6, "/system/framework/ext.jar"

    const-string v7, "/system/framework/framework.jar"

    const-string v8, "/system/framework/telephony-common.jar"

    const-string v9, "/system/framework/voip-common.jar"

    const-string v10, "/system/framework/ims-common.jar"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private loadLocalClassPathEntry(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    invoke-virtual {v3, v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadEntry(Ljava/io/File;Z)V
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 168
    new-instance v3, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Couldn\'t load classpath entry %s"

    invoke-direct {v3, v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    return v2
.end method

.method private loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;,
            Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->loadLocalClassPathEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->splitDevicePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->classPathDirs:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 192
    invoke-static {v2, v6}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadEntry(Ljava/io/File;Z)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_4
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Could not find classpath entry %s"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static replaceElementsSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 387
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 388
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 389
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static splitDevicePath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 207
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getResolvedClassProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver;->pathEntryLoader:Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->getResolvedClassProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
