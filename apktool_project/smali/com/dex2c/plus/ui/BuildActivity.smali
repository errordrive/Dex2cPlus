.class public Lcom/dex2c/plus/ui/BuildActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BuildActivity.java"

# interfaces
.implements Lcom/dex2c/plus/ConsoleLogger$Listener;


# static fields
.field public static final EXTRA_ONLINE_NDK_INSTALL:Ljava/lang/String; = "extra_online_ndk_install"

.field private static final cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isBuilding:Z = false


# instance fields
.field private binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

.field private buildThread:Ljava/lang/Thread;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$GfTtThR2zbO0BF6mjDZy63pKZgs(Lcom/dex2c/plus/ui/BuildActivity;Landroid/content/Context;Ljava/io/File;Ljava/util/List;ZZZZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startBuildPipeline$10(Landroid/content/Context;Ljava/io/File;Ljava/util/List;ZZZZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NdVZ9cP4-zcKNaCK95CCewHDQBs(Lcom/dex2c/plus/ui/BuildActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startBuildPipeline$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$RC8ZG-6bCnWEpyLKwnxNdyMGkQM(Lcom/dex2c/plus/ui/BuildActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ufzu7QmlElFkhsDwFoYomyOKBC4(Lcom/dex2c/plus/ui/BuildActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startOnlineNdkInstallInConsole$7(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X45hpL4-DZf9hFMJdGpn76CXZrA(Lcom/dex2c/plus/ui/BuildActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yht9sfSMYLkYq9NYLGqTKS56_tw(Lcom/dex2c/plus/ui/BuildActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startBuildPipeline$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YxExgKXj_GtueZGdZwKRG_OMgSw(Lcom/dex2c/plus/ui/BuildActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startOnlineNdkInstallInConsole$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$hRy_FO0pbdak0I1hc9r5NrUJHnE(Lcom/dex2c/plus/ui/BuildActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vYJ2QkGE52PGNTq7wvlZXVCxEL0(Lcom/dex2c/plus/ui/BuildActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->lambda$startOnlineNdkInstallInConsole$6(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAndReturnHome(Lcom/dex2c/plus/ui/BuildActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->cancelAndReturnHome()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelAndReturnHome()V
    .locals 3

    .line 86
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->cancelActiveProcesses()V

    .line 88
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->buildThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 92
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 94
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    return-void
.end method

.method private copyConsoleToClipboard()V
    .locals 3

    .line 272
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger;->getAllText()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/dex2c/plus/ui/BuildActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    .line 278
    const-string v2, "Dex2c Build Output"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 279
    const-string v0, "Copied"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$cancelAndReturnHome$3(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->cancelAndReturnHome()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->cancelAndReturnHome()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->copyConsoleToClipboard()V

    return-void
.end method

.method private synthetic lambda$startBuildPipeline$10(Landroid/content/Context;Ljava/io/File;Ljava/util/List;ZZZZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    .line 190
    const-string v2, "BUILD"

    .line 0
    const-string v3, "Build error: "

    .line 190
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "dex2c_work"

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 193
    :try_start_0
    invoke-static {v6}, Lcom/dex2c/plus/StorageHelper;->deleteRecursive(Ljava/io/File;)V

    .line 194
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 196
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dex2c/plus/ui/BuildActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 198
    :try_start_1
    invoke-static {v14, v15, v6, v4, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator;->translate(Ljava/io/File;Ljava/util/List;Ljava/io/File;ZZ)Lcom/dex2c/plus/engine/Dex2CTranslator$Result;

    move-result-object v5

    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto :goto_0

    .line 203
    :cond_1
    :try_start_2
    iget-object v4, v5, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, v5, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedMethods:I

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    move-object/from16 v4, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 208
    invoke-static/range {v4 .. v12}, Lcom/dex2c/plus/engine/NdkCompiler;->compileIfAvailable(Landroid/content/Context;Lcom/dex2c/plus/engine/Dex2CTranslator$Result;Ljava/io/File;ZZZZZLjava/lang/String;)Z

    move-result v7

    .line 211
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    .line 213
    :try_start_3
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    const-string v4, "NDK compilation failed."

    invoke-virtual {v0, v2, v4}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto :goto_0

    .line 217
    :cond_4
    :try_start_4
    iget-object v12, v5, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedClassDescriptors:Ljava/util/Set;

    move-object/from16 v4, p1

    move-object/from16 v10, p11

    move/from16 v9, p13

    move-object/from16 v11, p14

    move-object v8, v6

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, p12

    invoke-static/range {v4 .. v12}, Lcom/dex2c/plus/engine/DexRewriterEngine;->packageAndSaveToStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;

    move-result-object v5

    .line 228
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto/16 :goto_0

    .line 230
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v4

    iget-object v6, v5, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->bundleZip:Ljava/io/File;

    iput-object v6, v4, Lcom/dex2c/plus/model/ProjectState;->lastOutputBundleZip:Ljava/io/File;

    .line 231
    iget-object v4, v5, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->protectedApk:Ljava/io/File;

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    iget-object v4, v5, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->protectedApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 239
    :goto_1
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    if-eqz v2, :cond_7

    .line 240
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v13, 0x1

    :cond_7
    if-eqz v13, :cond_8

    .line 243
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanAllBuildAndOldCacheData(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->clearLoadedApkCacheState()V

    goto :goto_2

    .line 246
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    :goto_2
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto/16 :goto_0

    .line 204
    :cond_9
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    const-string v4, "DEX2C"

    const-string v5, "No translatable methods matched in selected classes."

    invoke-virtual {v0, v4, v5}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 235
    :try_start_7
    sget-object v4, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_a

    .line 236
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    :cond_a
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 239
    sput-boolean v13, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/dex2c/plus/StorageHelper;->cleanBuildWorkDir(Landroid/content/Context;)V

    .line 249
    new-instance v2, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v13}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    invoke-virtual {v1, v2}, Lcom/dex2c/plus/ui/BuildActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    throw v0
.end method

.method private synthetic lambda$startBuildPipeline$8()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startBuildPipeline$9(Z)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    return-void

    .line 255
    :cond_1
    const-string v0, "Output"

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dex2c/plus/ui/BuildActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOnlineNdkInstallInConsole$4(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    .line 114
    sget-object p1, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 115
    :cond_0
    const-string p1, "..."

    const-string v0, "%"

    const-string v1, "Downloading..."

    const-string v2, "NDK_DL"

    if-eqz p0, :cond_2

    const-string v3, "Downloading"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_0
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p0

    invoke-virtual {p0, v2, v1, p1}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_2
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p0

    const-string v3, "100%"

    invoke-virtual {p0, v2, v1, v3}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    goto :goto_1

    .line 120
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :goto_1
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object p0

    const-string p2, "NDK_INST"

    const-string p3, "Installing..."

    invoke-virtual {p0, p2, p3, p1}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startOnlineNdkInstallInConsole$5()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOnlineNdkInstallInConsole$6(Z)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dex2c/plus/ui/BuildActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    const-string v0, "Output"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string p1, "Download failed"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$startOnlineNdkInstallInConsole$7(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v2

    const-string v3, "NDK_DL"

    const-string v4, "Downloading..."

    const-string v5, "0%"

    invoke-virtual {v2, v3, v4, v5}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda9;-><init>()V

    .line 124
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->getOnlineNdkUrlNative()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/dex2c/plus/engine/NdkCompiler;->downloadAndInstallOnline(Landroid/content/Context;Ljava/lang/String;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    sget-object v3, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    .line 126
    invoke-static {p1}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object v4

    iget-boolean v4, v4, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-eqz v4, :cond_0

    .line 127
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v4

    const-string v5, "NDK_INST"

    const-string v6, "Installing..."

    const-string v7, "100%"

    invoke-virtual {v4, v5, v6, v7}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v4

    const-string v5, "NDK"

    const-string v6, "Download failed"

    invoke-virtual {v4, v5, v6}, Lcom/dex2c/plus/ConsoleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object p1

    iget-boolean p1, p1, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 135
    :goto_1
    new-instance p1, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    const/4 v2, 0x0

    .line 133
    :goto_2
    sput-boolean v1, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    if-eqz v2, :cond_3

    .line 134
    sget-object v2, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object p1

    iget-boolean p1, p1, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 135
    :goto_3
    new-instance p1, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/BuildActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    throw v3
.end method

.method private startBuildPipeline()V
    .locals 18

    move-object/from16 v1, p0

    .line 158
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger;->clear()V

    .line 159
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->resetCancellation()V

    .line 162
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getSelectedClasses()Ljava/util/List;

    move-result-object v4

    .line 164
    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v11, v0, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    .line 170
    iget-boolean v7, v0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    .line 171
    iget-boolean v8, v0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 172
    iget-boolean v9, v0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    .line 173
    iget-boolean v10, v0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    .line 174
    iget-object v12, v0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 175
    iget-object v15, v0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 176
    iget-boolean v5, v0, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    .line 177
    iget-boolean v6, v0, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    .line 178
    iget-boolean v14, v0, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    .line 179
    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    .line 180
    iget-object v13, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkName:Ljava/lang/String;

    .line 181
    invoke-virtual {v1}, Lcom/dex2c/plus/ui/BuildActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    .line 183
    sput-boolean v2, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 184
    iget-object v2, v1, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->setGlowActive(Z)V

    .line 185
    iget-object v2, v1, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    const-string v0, "Building..."

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v1, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 187
    iget-object v0, v1, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 189
    new-instance v0, Ljava/lang/Thread;

    move-object v2, v0

    new-instance v0, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda1;

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v15}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Landroid/content/Context;Ljava/io/File;Ljava/util/List;ZZZZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v2, v17

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/dex2c/plus/ui/BuildActivity;->buildThread:Ljava/lang/Thread;

    .line 268
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/dex2c/plus/ui/BuildActivity;->finish()V

    return-void
.end method

.method private startOnlineNdkInstallInConsole()V
    .locals 5

    .line 98
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger;->clear()V

    .line 99
    sget-object v0, Lcom/dex2c/plus/ui/BuildActivity;->cancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->resetCancellation()V

    .line 102
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    .line 103
    sput-boolean v2, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    .line 104
    iget-object v3, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v3, v3, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;

    invoke-virtual {v3, v1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->setGlowActive(Z)V

    .line 105
    iget-object v3, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v3, v3, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    const-string v4, "Installing..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v3, v3, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->buildThread:Ljava/lang/Thread;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->applyThemeMode(I)V

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    .line 41
    invoke-virtual {v0}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dex2c/plus/ui/BuildActivity;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->headerBuild:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->rootBuild:Landroid/widget/LinearLayout;

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_headerSurface:I

    sget v3, Lcom/dex2c/plus/R$color;->console_bg:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/dex2c/plus/ui/UiAnimator;->applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V

    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnBuildBack:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCopyConsole:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/dex2c/plus/ui/UiAnimator;->attachCompactIconPress([Landroid/view/View;)V

    .line 51
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/dex2c/plus/ui/UiAnimator;->attachPressAnimation([Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnBuildBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/BuildActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dex2c/plus/ui/BuildActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCopyConsole:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/BuildActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dex2c/plus/ui/BuildActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/dex2c/plus/ui/BuildActivity$1;

    invoke-direct {v1, p0, v3}, Lcom/dex2c/plus/ui/BuildActivity$1;-><init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 64
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dex2c/plus/ConsoleLogger;->addListener(Lcom/dex2c/plus/ConsoleLogger$Listener;)V

    .line 66
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/BuildActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_online_ndk_install"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 69
    sget-boolean p1, Lcom/dex2c/plus/ui/BuildActivity;->isBuilding:Z

    if-nez p1, :cond_2

    if-eqz v3, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->startOnlineNdkInstallInConsole()V

    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/dex2c/plus/ui/BuildActivity;->startBuildPipeline()V

    return-void

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;

    invoke-virtual {p1, v2}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->setGlowActive(Z)V

    .line 77
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dex2c/plus/ConsoleLogger;->removeListener(Lcom/dex2c/plus/ConsoleLogger$Listener;)V

    .line 293
    iput-object v1, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    .line 294
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onLogUpdated()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity;->binding:Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;

    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dex2c/plus/ConsoleLogger;->getGapBuffer()Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dex2c/plus/ui/GlowConsoleTextView;->onBufferUpdated(Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;)V

    return-void
.end method
