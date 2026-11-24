.class public Lcom/dex2c/plus/engine/NdkCompiler;
.super Ljava/lang/Object;
.source "NdkCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;,
        Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_PROCESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field

.field private static final CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildExecPrefix(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 653
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/File;

    const-string v1, "/system/bin/linker64"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 655
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static cancelActiveProcesses()V
    .locals 2

    .line 49
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Process;

    .line 52
    :try_start_0
    invoke-static {v1}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;
    .locals 4

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mini_ndk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/io/File;

    const-string v2, "sysroot/usr/include/jni.h"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-static {p0, v0}, Lcom/dex2c/plus/engine/NdkCompiler;->findClangBinary(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 79
    new-instance v0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ready: sysroot + clang ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 81
    :cond_1
    new-instance p0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    const-string v0, "Install/Uninstall native code (C/C++) build support!"

    invoke-direct {p0, v2, v0}, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method private static compileAndLinkAbi(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 25

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v2, p11

    .line 412
    sget-object v3, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    return v5

    .line 414
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lib/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 416
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "obj/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 418
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 423
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    const-string v10, "clang_res"

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "usr/lib/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/21"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 425
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    new-instance v11, Ljava/io/File;

    const-string v13, "libc.so"

    invoke-direct {v11, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 428
    :goto_0
    iget-object v11, v0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 429
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ABI_"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 430
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 431
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Compiling "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    const-string v15, "..."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v13, v12, v1}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v5, 0x2

    .line 434
    div-int/2addr v1, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v5, 0x3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p10, :cond_3

    .line 435
    iget-object v5, v0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_3

    iget-object v2, v0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 437
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v12, v11

    move-object v11, v1

    .line 438
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v17, v15

    .line 440
    const-string v15, "/"

    const/4 v5, 0x1

    if-le v2, v5, :cond_7

    .line 441
    new-instance v5, Lcom/dex2c/plus/engine/NdkCompiler$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/dex2c/plus/engine/NdkCompiler$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 446
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v1

    .line 447
    iget-object v1, v0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 448
    new-instance v0, Lcom/dex2c/plus/engine/NdkCompiler$$ExternalSyntheticLambda3;

    move-object/from16 p5, v8

    move-object v8, v6

    move-object/from16 v6, p5

    move-object/from16 p5, v2

    move-object/from16 v23, v9

    move-object/from16 v22, v15

    const/16 v24, 0x0

    move-object/from16 v2, p0

    move-object v15, v5

    move-object v9, v7

    move-object v7, v1

    move-object v5, v3

    move-object/from16 v1, v20

    move-object/from16 v3, p1

    move-object/from16 v20, v10

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Lcom/dex2c/plus/engine/NdkCompiler$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;I)V

    move-object v9, v1

    move-object v4, v6

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v4

    move-object v3, v5

    move-object v5, v15

    move-object/from16 v10, v20

    move-object/from16 v15, v22

    move-object/from16 v4, p3

    move-object/from16 v20, v9

    move-object/from16 v9, v23

    goto :goto_2

    :cond_4
    move-object v1, v2

    move-object v4, v8

    move-object/from16 v23, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v20

    const/16 v24, 0x0

    move-object v15, v5

    move-object/from16 v20, v10

    move-object v5, v3

    .line 462
    :try_start_0
    invoke-interface {v1, v15}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 464
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    const/4 v10, 0x1

    .line 467
    :catch_1
    :try_start_2
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :goto_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    goto/16 :goto_8

    :goto_5
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 470
    throw v0

    :cond_7
    move-object v5, v3

    move-object v4, v8

    move-object/from16 v23, v9

    move-object/from16 v20, v10

    move-object/from16 v22, v15

    const/4 v10, 0x1

    const/16 v24, 0x0

    move-object v15, v0

    move-object v9, v1

    .line 472
    iget-object v0, v15, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 473
    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 474
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_7

    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v3, v5

    move-object v5, v0

    move-object/from16 v0, p0

    .line 477
    invoke-static/range {v0 .. v8}, Lcom/dex2c/plus/engine/NdkCompiler;->compileSingleSource(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v1, v4

    move-object v4, v2

    if-nez v5, :cond_9

    .line 479
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    move-object/from16 v2, v22

    const/16 p5, 0x1

    goto :goto_9

    .line 482
    :cond_9
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 484
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v17

    const/16 p5, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v13, v7, v9}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    move-object v5, v3

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    :goto_8
    move-object/from16 v6, p6

    move-object v1, v4

    move-object v3, v5

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    move-object/from16 v2, v22

    const/16 p5, 0x1

    move-object/from16 v4, p3

    :goto_9
    move-object/from16 v17, v9

    .line 488
    sget-object v5, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    iget-object v7, v15, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v5, v7, :cond_b

    goto/16 :goto_f

    .line 492
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v7, v15, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 494
    new-instance v11, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, ".cpp"

    const-string v15, ".o"

    invoke-virtual {v9, v12, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 497
    :cond_c
    const-string v1, ")"

    const-string v7, " (code "

    const-string v9, "Linker failed for "

    const-string v11, "NDK"

    const-string v12, "-llog"

    const-string v15, "-o"

    move-object/from16 p7, v5

    const-string v5, "-shared"

    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 p10, v1

    move-object/from16 p4, v11

    move-object/from16 v11, p2

    .line 498
    invoke-static {v0, v11}, Lcom/dex2c/plus/engine/NdkCompiler;->buildExecPrefix(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 499
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v7

    const-string v7, "lld"

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "ld.lld"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 500
    const-string v7, "-flavor"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v7, "gnu"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v5, "-soname"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p11

    .line 505
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v5, "-z"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    const-string v7, "now"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const-string v7, "relro"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    const-string v5, "max-page-size=16384"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const-string v5, "-m"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p9

    .line 513
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_11

    .line 516
    const-string v5, "--no-undefined"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v5, Ljava/io/File;

    const-string v7, "crtbegin_so.o"

    move-object/from16 v11, v23

    invoke-direct {v5, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_e
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 521
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "-L"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v9

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v5, Ljava/io/File;

    const-string v9, "lib/linux"

    invoke-direct {v5, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_10
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v3, "-lc"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v3, "-lm"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    const-string v3, "-ldl"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v3, Ljava/io/File;

    const-string v5, "crtend_so.o"

    invoke-direct {v3, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    move-object/from16 v18, v9

    .line 534
    const-string v3, "--unresolved-symbols=ignore-all"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v3, "--allow-shlib-undefined"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 539
    :cond_12
    :goto_d
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->runProcess(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_13

    .line 543
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_13

    .line 544
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v1, v2}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p5

    .line 547
    :cond_13
    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_14

    .line 548
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, p10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p4

    invoke-virtual {v1, v11, v0}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return v24

    :cond_15
    move-object v3, v9

    move-object v9, v1

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p4, v11

    .line 554
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v11, "-target"

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p8

    .line 556
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 p10, v9

    const-string v9, "--sysroot="

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v16, :cond_16

    .line 560
    const-string v5, "-Wl,--unresolved-symbols=ignore-all"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v5, "-Wl,--allow-shlib-undefined"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    const-string v5, "-nostdlib"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_16
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    if-eqz v16, :cond_18

    .line 566
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_18
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->runProcess(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_19

    .line 571
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_19

    .line 572
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v1, v2}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p5

    .line 575
    :cond_19
    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 576
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, p10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p4

    invoke-virtual {v1, v11, v0}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_f
    return v24
.end method

.method public static compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZ)Z
    .locals 10

    .line 335
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 336
    iget-boolean v6, v0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    iget-boolean v7, v0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    iget-boolean v8, v0, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    iget-object v9, v0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v4, p4

    invoke-static/range {v1 .. v9}, Lcom/dex2c/plus/engine/NdkCompiler;->compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZZZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZZ)Z
    .locals 10

    .line 342
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 343
    iget-boolean v6, v0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    iget-boolean v7, v0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    iget-object v9, v0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v4, p4

    move v8, p5

    invoke-static/range {v1 .. v9}, Lcom/dex2c/plus/engine/NdkCompiler;->compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZZZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZZZZLjava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 350
    sget-object v12, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    return v13

    .line 352
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "mini_ndk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    new-instance v3, Ljava/io/File;

    const-string v2, "sysroot"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/io/File;

    const-string v4, "usr/include/jni.h"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/dex2c/plus/engine/NdkCompiler;->hasMiniNdkAsset(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-static {v0}, Lcom/dex2c/plus/engine/NdkCompiler;->extractMiniNdk(Landroid/content/Context;)Z

    .line 358
    :cond_1
    invoke-static {v0, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->findClangBinary(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 359
    invoke-static {v0, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->findLldBinary(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 361
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 366
    :cond_2
    invoke-static/range {p8 .. p8}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    if-nez p3, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    if-nez p6, :cond_3

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    move/from16 v15, p4

    :goto_0
    if-eqz p3, :cond_5

    .line 376
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_5

    .line 377
    const-string v8, "armv7a-linux-androideabi21"

    const-string v9, "armelf_linux_eabi"

    const-string v6, "armeabi-v7a"

    const-string v7, "arm-linux-androideabi"

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/dex2c/plus/engine/NdkCompiler;->compileAndLinkAbi(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    const/16 v16, 0x0

    :goto_1
    const/16 v17, 0x1

    :goto_2
    if-eqz v15, :cond_7

    .line 383
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 384
    const-string v8, "aarch64-linux-android21"

    const-string v9, "aarch64linux"

    const-string v6, "arm64-v8a"

    const-string v7, "aarch64-linux-android"

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/dex2c/plus/engine/NdkCompiler;->compileAndLinkAbi(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_6
    const/16 v17, 0x0

    :cond_7
    :goto_3
    if-eqz p5, :cond_9

    .line 390
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 391
    const-string v8, "i686-linux-android21"

    const-string v9, "elf_i386"

    const-string v6, "x86"

    const-string v7, "i686-linux-android"

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/dex2c/plus/engine/NdkCompiler;->compileAndLinkAbi(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    :cond_9
    :goto_4
    if-eqz p6, :cond_b

    .line 397
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 398
    const-string v8, "x86_64-linux-android21"

    const-string v9, "elf_x86_64"

    const-string v6, "x86_64"

    const-string v7, "x86_64-linux-android"

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/dex2c/plus/engine/NdkCompiler;->compileAndLinkAbi(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    .line 405
    :cond_b
    :goto_5
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    if-lez v16, :cond_c

    if-eqz v17, :cond_c

    return v14

    :cond_c
    return v13

    .line 362
    :cond_d
    :goto_6
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    const-string v1, "NDK"

    const-string v2, "Android NDK toolchain is not installed."

    invoke-virtual {v0, v1, v2}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v13
.end method

.method private static compileSingleSource(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 586
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 588
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".cpp"

    const-string v5, ".o"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 591
    :cond_1
    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/NdkCompiler;->buildExecPrefix(Landroid/content/Context;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 592
    const-string p4, "-cc1"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string p4, "-triple"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    const-string p4, "-emit-obj"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    const-string p4, "-pic-level"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-string p4, "2"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-string p4, "-O2"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    const-string p4, "-std=c++17"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    const-string p4, "-fgnuc-version=4.2.1"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    const-string p4, "-isysroot"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance p4, Ljava/io/File;

    const-string p8, "usr/include/c++/v1"

    invoke-direct {p4, p2, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p8

    const-string v3, "-internal-isystem"

    if-eqz p8, :cond_2

    .line 606
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 610
    const-string p4, "-resource-dir"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance p4, Ljava/io/File;

    const-string p8, "include"

    invoke-direct {p4, p3, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 614
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_3
    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p8, "usr/include/"

    invoke-direct {p4, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    const-string p7, "-internal-externc-isystem"

    if-eqz p4, :cond_4

    .line 620
    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    :cond_4
    new-instance p3, Ljava/io/File;

    const-string p4, "usr/include/aarch64-linux-android"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_5

    .line 625
    new-instance p3, Ljava/io/File;

    const-string p4, "usr/include/arm-linux-androideabi"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 627
    :cond_5
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 628
    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_6
    :goto_0
    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance p3, Ljava/io/File;

    const-string p4, "usr/include"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    const-string p3, "-I"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    const-string p3, "-o"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    const-string p3, "-x"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    const-string p3, "c++"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static {p0, p2, p1}, Lcom/dex2c/plus/engine/NdkCompiler;->runProcess(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)I

    move-result p0

    .line 643
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v2

    :cond_7
    if-nez p0, :cond_9

    .line 644
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    return-object v1

    .line 645
    :cond_9
    :goto_1
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Compile failed on "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NDK"

    invoke-virtual {p0, p2, p1}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getPersistentNdkArchive(Landroid/content/Context;)Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/32 v1, 0x4c4b40

    :try_start_7
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->getDex2cPlusOutputDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_29

    new-instance v3, Ljava/io/File;

    const-string v4, "mini_ndk.zip"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2a

    cmp-long p0, v4, v1

    if-lez p0, :cond_29

    return-object v3

    :cond_29
    goto :goto_2b

    :catchall_2a
    move-exception p0

    :goto_2b
    :try_start_2b
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Dex2cPlus/mini_ndk.zip"

    invoke-direct {p0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_4c

    cmp-long v5, v3, v1

    if-lez v5, :cond_4b

    return-object p0

    :cond_4b
    goto :goto_4d

    :catchall_4c
    move-exception p0

    :goto_4d
    return-object v0
.end method

.method public static savePersistentNdkArchive(Landroid/content/Context;Ljava/io/File;)V
    .registers 7

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x4c4b40

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    goto :goto_3d

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->getDex2cPlusOutputDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_28
    new-instance v0, Ljava/io/File;

    const-string v1, "mini_ndk.zip"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/FastZipModifier;->copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3b

    :cond_3a
    goto :goto_3c

    :catchall_3b
    move-exception p0

    :goto_3c
    return-void

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static downloadAndInstallOnline(Landroid/content/Context;Ljava/lang/String;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z
    .locals 28

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/dex2c/plus/engine/NdkCompiler;->getPersistentNdkArchive(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_check_ndk_online

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_check_ndk_online

    if-eqz v1, :cond_skip_ndk_cb

    const-string v2, "Installing..."

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_skip_ndk_cb
    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->installFromLocalFile(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z

    move-result v0

    return v0

    :cond_check_ndk_online
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->getOnlineNdkUrlNative()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "online_mini_ndk.zip"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 180
    :cond_1
    const-string v3, "Extracting package..."

    const-string v4, "Installing..."

    const-string v5, "Downloading..."

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 181
    :try_start_0
    const-string v8, "0%"

    invoke-interface {v1, v5, v8, v6, v6}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 183
    :cond_2
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x6

    const/4 v10, 0x1

    if-ge v0, v9, :cond_6

    .line 186
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const/16 v7, 0x3a98

    .line 187
    :try_start_1
    invoke-virtual {v9, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x7530

    .line 188
    invoke-virtual {v9, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 189
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 190
    const-string v7, "User-Agent"

    const-string v11, "Dex2cPlus-NDK-Installer/1.0"

    invoke-virtual {v9, v7, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v11, 0x12d

    if-eq v7, v11, :cond_3

    const/16 v11, 0x12e

    if-eq v7, v11, :cond_3

    const/16 v11, 0x12f

    if-eq v7, v11, :cond_3

    const/16 v11, 0x133

    if-eq v7, v11, :cond_3

    const/16 v11, 0x134

    if-ne v7, v11, :cond_5

    .line 196
    :cond_3
    const-string v7, "Location"

    invoke-virtual {v9, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_5

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 199
    :cond_4
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v8, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v9

    move-object v8, v10

    goto :goto_1

    :cond_5
    :goto_2
    move-object v7, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto/16 :goto_15

    :catch_0
    move-object/from16 v5, p0

    move-object v7, v9

    goto/16 :goto_12

    .line 206
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xc8

    if-lt v0, v8, :cond_11

    const/16 v8, 0x12c

    if-lt v0, v8, :cond_7

    goto/16 :goto_f

    .line 221
    :cond_7
    invoke-static {v7}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/net/HttpURLConnection;)J

    move-result-wide v11

    const v0, 0x8000

    .line 223
    new-array v8, v0, [B

    .line 225
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 226
    :try_start_3
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    .line 229
    :goto_4
    :try_start_4
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-lez v0, :cond_d

    .line 230
    :try_start_5
    sget-object v21, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v21, :cond_a

    .line 247
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-eqz v7, :cond_8

    .line 263
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 265
    :cond_8
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_9
    return v6

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    move-object v6, v0

    move-object/from16 v22, v7

    move-object/from16 v26, v13

    goto/16 :goto_d

    .line 231
    :cond_a
    :try_start_9
    invoke-virtual {v14, v8, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/16 p1, 0x1

    int-to-long v9, v0

    add-long v9, v17, v9

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_c

    sub-long v22, v17, v19

    const-wide/16 v24, 0x50

    cmp-long v0, v22, v24

    if-ltz v0, :cond_c

    const-wide/high16 v19, 0x4130000000000000L    # 1048576.0

    cmp-long v0, v11, v15

    if-lez v0, :cond_b

    move-object/from16 v22, v7

    const/16 v23, 0x0

    const-wide/16 v6, 0x64

    mul-long v24, v9, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 237
    :try_start_a
    div-long v13, v24, v11

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .line 238
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f MB / %.1f MB"

    long-to-double v13, v9

    div-double v13, v13, v19

    .line 239
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v24, v13

    long-to-double v13, v11

    div-double v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v24, v14, v23

    aput-object v13, v14, p1

    .line 238
    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 240
    invoke-interface {v1, v5, v6, v0, v7}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v22, v7

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 242
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f MB"

    long-to-double v13, v9

    div-double v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v0, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-interface {v1, v5, v0, v15, v13}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_6
    move-wide/from16 v19, v17

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_c
    move-object/from16 v22, v7

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/4 v13, 0x1

    :goto_7
    move-wide/from16 v17, v9

    move-object/from16 v7, v22

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    const/4 v6, 0x0

    const/4 v10, 0x1

    const-wide/16 v15, 0x0

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    :goto_8
    move-object/from16 v5, p0

    goto :goto_a

    :cond_d
    move-object/from16 v22, v7

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 247
    :try_start_b
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_e

    .line 250
    const-string v0, "100%"

    const/16 v6, 0x64

    const/4 v15, 0x0

    invoke-interface {v1, v5, v0, v6, v15}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :cond_e
    move-object/from16 v5, p0

    invoke-static {v5, v2}, Lcom/dex2c/plus/engine/NdkCompiler;->savePersistentNdkArchive(Landroid/content/Context;Ljava/io/File;)V

    .line 252
    :try_start_d
    invoke-static {v5, v2, v1}, Lcom/dex2c/plus/engine/NdkCompiler;->installFromLocalFile(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v22, :cond_f

    .line 263
    :try_start_e
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_9

    :catch_2
    nop

    .line 265
    :cond_f
    :goto_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_10
    return v0

    :catch_3
    move-object/from16 v5, p0

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v22, v7

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    :goto_a
    move-object v6, v0

    .line 225
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    :try_start_10
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v22, v7

    move-object/from16 v26, v13

    :goto_c
    move-object v6, v0

    :goto_d
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    :try_start_12
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v6

    :cond_11
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v22, v7

    .line 208
    invoke-static {v5}, Lcom/dex2c/plus/engine/NdkCompiler;->hasMiniNdkAsset(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz v1, :cond_12

    const/16 v0, 0x19

    const/4 v15, 0x0

    .line 210
    invoke-interface {v1, v4, v3, v0, v15}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 212
    :cond_12
    invoke-static {v5}, Lcom/dex2c/plus/engine/NdkCompiler;->extractMiniNdk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    .line 214
    const-string v6, "Completed"

    const/16 v7, 0x64

    const/4 v15, 0x0

    invoke-interface {v1, v4, v6, v7, v15}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :cond_13
    if-eqz v22, :cond_14

    .line 263
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_10

    :catch_4
    nop

    .line 265
    :cond_14
    :goto_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_15
    return v0

    .line 218
    :cond_16
    :try_start_14
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception v0

    move-object/from16 v7, v22

    goto :goto_15

    :catch_5
    :goto_11
    move-object/from16 v7, v22

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object/from16 v22, v7

    goto :goto_15

    :catch_6
    move-object/from16 v5, p0

    move-object/from16 v22, v7

    goto :goto_12

    :catchall_c
    move-exception v0

    goto :goto_15

    :catch_7
    move-object/from16 v5, p0

    .line 254
    :goto_12
    :try_start_15
    invoke-static {v5}, Lcom/dex2c/plus/engine/NdkCompiler;->hasMiniNdkAsset(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_17

    const/16 v0, 0x32

    const/4 v15, 0x0

    .line 256
    invoke-interface {v1, v4, v3, v0, v15}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 258
    :cond_17
    invoke-static {v5}, Lcom/dex2c/plus/engine/NdkCompiler;->extractMiniNdk(Landroid/content/Context;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    if-eqz v7, :cond_18

    .line 263
    :try_start_16
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_13

    :catch_8
    nop

    .line 265
    :cond_18
    :goto_13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_19
    return v0

    :cond_1a
    if-eqz v7, :cond_1b

    .line 263
    :try_start_17
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_14

    :catch_9
    nop

    .line 265
    :cond_1b
    :goto_14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1c
    const/16 v23, 0x0

    return v23

    :goto_15
    if-eqz v7, :cond_1d

    .line 263
    :try_start_18
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_16

    :catch_a
    nop

    .line 265
    :cond_1d
    :goto_16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 268
    :cond_1e
    throw v0
.end method

.method public static extractMiniNdk(Landroid/content/Context;)Z
    .locals 10

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mini_ndk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "mini_ndk.zip"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v3, 0x2000

    .line 277
    :try_start_2
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 278
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 279
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 281
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 286
    :goto_1
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8, v3, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 287
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 288
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bin/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "lib/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    :cond_3
    invoke-virtual {v7, v6, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 290
    invoke-virtual {v7, v6, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 284
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-lez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 296
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p0, :cond_7

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    return v6

    :catchall_2
    move-exception v0

    .line 273
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_8

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return v1
.end method

.method private static findClangBinary(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 302
    new-instance v0, Ljava/io/File;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "libclang.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v1, "bin/clang++"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "bin/clang"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr/bin/clang++"

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 p0, 0x2

    aput-object v1, v3, p0

    const/4 p0, 0x3

    aput-object p1, v3, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_1

    .line 308
    aget-object p1, v3, p0

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p1, v0, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    return-object p1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findLldBinary(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 318
    new-instance v0, Ljava/io/File;

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "liblld.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v1, "bin/ld.lld"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "bin/lld"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr/bin/ld.lld"

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 p0, 0x2

    aput-object v1, v3, p0

    const/4 p0, 0x3

    aput-object p1, v3, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_1

    .line 324
    aget-object p1, v3, p0

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p1, v0, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    return-object p1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOnlineNdkUrlNative()Ljava/lang/String;
    .locals 1

    const-string v0, "https://github.com/iAmINCoder/Dex2cPlus/releases/download/Dex2cPlus/dex2cPlus.NDK.zip"

    return-object v0
.end method

.method private static hasMiniNdkAsset(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 89
    const-string v4, "mini_ndk.zip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public static installFromLocalFile(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 104
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "mini_ndk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    const-string v4, "Installing..."

    if-eqz v1, :cond_1

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v2, v2}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const v7, 0x8000

    .line 112
    new-array v8, v7, [B

    .line 114
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v10, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v0, 0x0

    const-wide/16 v13, 0x0

    .line 117
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v15, " files"

    const-wide/16 p0, 0x0

    if-eqz v7, :cond_d

    .line 118
    :try_start_3
    sget-object v12, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v12, :cond_2

    .line 158
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return v2

    .line 119
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 120
    const-string v11, "mini_ndk/"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x9

    .line 121
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 123
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_0

    .line 125
    :cond_4
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 127
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v18, v3

    move-wide/from16 v19, v5

    goto/16 :goto_4

    .line 129
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v18, v3

    .line 132
    :goto_1
    :try_start_7
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_7

    move-wide/from16 v19, v5

    const/4 v5, 0x0

    .line 133
    invoke-virtual {v2, v8, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v5, v19

    goto :goto_1

    :cond_7
    move-wide/from16 v19, v5

    .line 135
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 136
    const-string v2, "bin/"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "lib/"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "clang"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "clang++"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "lld"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 137
    invoke-virtual {v11, v2, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 138
    invoke-virtual {v11, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v5, v2, p0

    if-lez v5, :cond_a

    :goto_2
    add-long/2addr v13, v2

    goto :goto_3

    :cond_a
    const-wide/16 v2, 0xc8

    .line 145
    div-long v5, v19, v2

    const-wide/16 v2, 0x4000

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_2

    :goto_3
    const-wide/16 v2, 0x64

    mul-long v2, v2, v13

    .line 147
    div-long v2, v2, v19

    const-wide/16 v5, 0x63

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    if-eqz v1, :cond_c

    .line 148
    rem-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_b

    const/16 v2, 0x5f

    if-lt v3, v2, :cond_c

    .line 149
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_c
    :goto_4
    move-object/from16 v3, v18

    move-wide/from16 v5, v19

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 130
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 158
    :cond_d
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    if-nez v0, :cond_e

    const/16 v17, 0x0

    return v17

    :cond_e
    if-eqz v1, :cond_f

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    const/4 v5, 0x0

    invoke-interface {v1, v4, v0, v2, v5}, Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;->onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_f
    const/16 v16, 0x1

    return v16

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 114
    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    const/16 v17, 0x0

    return v17

    :cond_10
    :goto_8
    const/16 v17, 0x0

    return v17
.end method

.method public static isCancelRequested()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$compileAndLinkAbi$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Dex2c-ClangWorker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 443
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method static synthetic lambda$compileAndLinkAbi$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_2

    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-static/range {p1 .. p9}, Lcom/dex2c/plus/engine/NdkCompiler;->compileSingleSource(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 452
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v1

    .line 455
    :cond_1
    invoke-interface {p10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {p11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    .line 457
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Compiling "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "..."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p12, p3, p0}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static resetCancellation()V
    .locals 2

    .line 41
    sget-object v0, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static runProcess(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, ":"

    .line 662
    sget-object v1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 665
    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, p2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 666
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v4, "lib"

    invoke-direct {p2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p2

    const-string v0, "LD_LIBRARY_PATH"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p1

    const-string p2, "TMPDIR"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 671
    invoke-virtual {v3, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 672
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 673
    sget-object p0, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 675
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 676
    sget-object p1, Lcom/dex2c/plus/engine/NdkCompiler;->CANCEL_REQUESTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 677
    invoke-static {v1}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 682
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_4

    .line 687
    sget-object p1, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    return p0

    :catchall_0
    move-exception p1

    .line 674
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_5

    .line 687
    sget-object p1, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 689
    :cond_5
    throw p0

    :catch_0
    nop

    if-eqz v1, :cond_6

    .line 687
    sget-object p0, Lcom/dex2c/plus/engine/NdkCompiler;->ACTIVE_PROCESSES:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    return v2
.end method
