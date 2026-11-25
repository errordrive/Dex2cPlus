.class public Lcom/dex2c/plus/model/ProjectState;
.super Ljava/lang/Object;
.source "ProjectState.java"


# static fields
.field public static final DEFAULT_LIB_NAME:Ljava/lang/String; = "native-lib"

.field public static final DEFAULT_LOADER_CLASS:Ljava/lang/String; = "Loader"

.field private static final INSTANCE:Lcom/dex2c/plus/model/ProjectState;

.field private static final KEY_ARM32:Ljava/lang/String; = "opt_arm32"

.field private static final KEY_ARM64:Ljava/lang/String; = "opt_arm64"

.field private static final KEY_CUSTOM_LIB_NAME:Ljava/lang/String; = "opt_custom_lib_name"

.field private static final KEY_CUSTOM_LOADER_CLASS:Ljava/lang/String; = "opt_custom_loader_class"

.field private static final KEY_ENV_ENCRYPTION:Ljava/lang/String; = "opt_env_encryption"

.field private static final KEY_NDK_LOCAL_PATH:Ljava/lang/String; = "opt_ndk_local_path"

.field private static final KEY_OUTPUT_LOCATION:Ljava/lang/String; = "opt_output_location"

.field private static final KEY_PARALLEL:Ljava/lang/String; = "opt_parallel_build"

.field private static final KEY_REG_NATIVES:Ljava/lang/String; = "opt_reg_natives"

.field private static final KEY_REWRITE_DEX:Ljava/lang/String; = "opt_rewrite_dex"

.field private static final KEY_THEME_MODE:Ljava/lang/String; = "ui_theme_mode"

.field private static final KEY_TYPE_BRIDGE:Ljava/lang/String; = "opt_type_bridge"

.field private static final KEY_TYPE_PRIVATE:Ljava/lang/String; = "opt_type_private"

.field private static final KEY_TYPE_STATIC:Ljava/lang/String; = "opt_type_static"

.field private static final KEY_TYPE_SYNCHRONIZED:Ljava/lang/String; = "opt_type_synchronized"

.field private static final KEY_TYPE_SYNTHETIC:Ljava/lang/String; = "opt_type_synthetic"

.field private static final KEY_TYPE_VARARGS:Ljava/lang/String; = "opt_type_varargs"

.field private static final KEY_TYPE_VIRTUAL:Ljava/lang/String; = "opt_type_virtual"

.field private static final KEY_X86:Ljava/lang/String; = "opt_x86"

.field private static final KEY_X86_64:Ljava/lang/String; = "opt_x86_64"

.field public static final OUTPUT_DIR_APK_FOLDER:I = 0x1

.field public static final OUTPUT_DIR_DEFAULT:I = 0x0

.field private static final PREFS_NAME:Ljava/lang/String; = "dex2c_prefs"

.field public static final THEME_DARK:I = 0x1

.field public static final THEME_LIGHT:I = 0x0

.field public static final THEME_SYSTEM:I = 0x2


# instance fields
.field public final allClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation
.end field

.field public apkDisplayLabel:Ljava/lang/String;

.field public apkVersionCode:J

.field public apkVersionName:Ljava/lang/String;

.field public arm32:Z

.field public arm64:Z

.field public cachedApkFile:Ljava/io/File;

.field public customLibName:Ljava/lang/String;

.field public customLoaderClass:Ljava/lang/String;

.field public dexCount:I

.field public envEncryption:Z

.field public lastOutputBundleZip:Ljava/io/File;

.field public ndkLocalPath:Ljava/lang/String;

.field public outputLocationMode:I

.field public parallelBuild:Z

.field public promptedNdkStartup:Z

.field public registerNatives:Z

.field public rewriteDex:Z

.field public selectedApkName:Ljava/lang/String;

.field public selectedApkSourceFile:Ljava/io/File;

.field public selectedApkUri:Landroid/net/Uri;

.field public typeBridge:Z

.field public typePrivate:Z

.field public typeStatic:Z

.field public typeSynchronized:Z

.field public typeSynthetic:Z

.field public customKeyPath:Ljava/lang/String;

.field public remoteControlUrl:Ljava/lang/String;

.field public signV1:Z

.field public signV2:Z

.field public signV3:Z

.field public typeVarargs:Z

.field public typeVirtual:Z

.field public x86:Z

.field public x86_64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/dex2c/plus/model/ProjectState;

    invoke-direct {v0}, Lcom/dex2c/plus/model/ProjectState;-><init>()V

    sput-object v0, Lcom/dex2c/plus/model/ProjectState;->INSTANCE:Lcom/dex2c/plus/model/ProjectState;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "target"

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->selectedApkName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->apkDisplayLabel:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->apkVersionName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcom/dex2c/plus/model/ProjectState;->apkVersionCode:J

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/dex2c/plus/model/ProjectState;->dexCount:I

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    .line 60
    iput v1, p0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    .line 62
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    .line 63
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 64
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    .line 65
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    .line 66
    const-string v3, "native-lib"

    iput-object v3, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 67
    const-string v3, "Loader"

    iput-object v3, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    .line 70
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    .line 71
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    .line 74
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    .line 75
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    .line 76
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    .line 77
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    .line 78
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    .line 79
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    .line 80
    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    .line 82
    iput-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->promptedNdkStartup:Z

    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->signV1:Z

    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->signV2:Z

    iput-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->signV3:Z

    const-string v3, "/storage/emulated/0/MT2/keys/signature.key"

    iput-object v3, p0, Lcom/dex2c/plus/model/ProjectState;->customKeyPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;

    return-void
.end method

.method public static applyThemeMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 273
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    .line 275
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_1
    const/4 p0, -0x1

    .line 277
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method public static get()Lcom/dex2c/plus/model/ProjectState;
    .locals 1

    .line 85
    sget-object v0, Lcom/dex2c/plus/model/ProjectState;->INSTANCE:Lcom/dex2c/plus/model/ProjectState;

    return-object v0
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "dex2c_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 262
    const-string v0, "ui_theme_mode"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 3

    .line 282
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 285
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 163
    const-string v0, "native-lib"

    if-nez p0, :cond_0

    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 165
    const-string v1, ".so"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 168
    :cond_1
    const-string v1, "lib"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 171
    :cond_2
    const-string v1, "[^a-zA-Z0-9_\\-]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 177
    const-string v0, "Loader"

    if-nez p0, :cond_0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 179
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 182
    :cond_1
    const-string v1, ".class"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-le v1, v4, :cond_2

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 185
    :cond_2
    const-string v1, ".java"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_3

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/16 v1, 0x2f

    const/16 v4, 0x2e

    .line 188
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 189
    :goto_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 190
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    .line 193
    :cond_6
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    array-length v2, p0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_a

    aget-object v6, p0, v5

    .line 196
    const-string v7, "[^a-zA-Z0-9_$]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 198
    :cond_7
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 204
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setThemeMode(Landroid/content/Context;I)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "dex2c_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 267
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ui_theme_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    invoke-static {p1}, Lcom/dex2c/plus/model/ProjectState;->applyThemeMode(I)V

    return-void
.end method


# virtual methods
.method public clearLoadedApkCacheState()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->selectedApkUri:Landroid/net/Uri;

    .line 90
    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->cachedApkFile:Ljava/io/File;

    .line 91
    const-string v0, "target"

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->selectedApkName:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->apkDisplayLabel:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->apkVersionName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/dex2c/plus/model/ProjectState;->apkVersionCode:J

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/dex2c/plus/model/ProjectState;->dexCount:I

    .line 96
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAbisSummary()Ljava/lang/String;
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "all"

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    if-eqz v1, :cond_1

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    const-string v2, "arm64-v8a"

    if-eqz v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    if-eqz v1, :cond_3

    const-string v1, "x86"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    if-eqz v1, :cond_4

    const-string v1, "x86_64"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v2

    .line 228
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 229
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    if-lez v2, :cond_6

    .line 230
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderClassDescriptor()Ljava/lang/String;
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodTypesSummary()Ljava/lang/String;
    .locals 4

    .line 237
    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "all (synthetic, bridge, static, virtual, private, synchronized, varargs)"

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    if-eqz v1, :cond_1

    const-string v1, "synthetic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    if-eqz v1, :cond_2

    const-string v1, "bridge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    if-eqz v1, :cond_3

    const-string v1, "static"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    if-eqz v1, :cond_4

    const-string v1, "virtual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    if-eqz v1, :cond_5

    const-string v1, "private"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_5
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    if-eqz v1, :cond_6

    const-string v1, "synchronized"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_6
    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    if-eqz v1, :cond_7

    const-string v1, "varargs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    const-string v0, "none"

    return-object v0

    .line 252
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 253
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    if-lez v2, :cond_9

    .line 254
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSelectionSummary()Ljava/lang/String;
    .locals 2

    .line 157
    iget v0, p0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    const-string v0, "Selected APK Folder"

    return-object v0

    .line 159
    :cond_0
    const-string v0, "Default (Dex2cPlus Folder)"

    return-object v0
.end method

.method public getSelectedClassCount()I
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 292
    iget-object v3, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dex2c/plus/model/DexClassItem;

    iget-boolean v3, v3, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getSelectedClasses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 300
    iget-object v3, p0, Lcom/dex2c/plus/model/ProjectState;->allClasses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dex2c/plus/model/DexClassItem;

    .line 301
    iget-boolean v4, v3, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSoFileName()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    invoke-static {v1}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPrefs(Landroid/content/Context;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "dex2c_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 101
    const-string v0, "opt_output_location"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    .line 102
    const-string v0, "opt_parallel_build"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    .line 103
    const-string v0, "opt_arm32"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    .line 104
    const-string v0, "opt_arm64"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 105
    const-string v0, "opt_x86"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    .line 106
    const-string v0, "opt_x86_64"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    .line 107
    iget-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 110
    :cond_0
    const-string v0, "opt_custom_lib_name"

    const-string v2, "native-lib"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 111
    const-string v0, "opt_custom_loader_class"

    const-string v2, "Loader"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 112
    const-string v0, "opt_ndk_local_path"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    .line 113
    const-string v0, "opt_reg_natives"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    .line 114
    const-string v0, "opt_env_encryption"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    .line 115
    const-string v0, "opt_rewrite_dex"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    .line 117
    const-string v0, "opt_type_synthetic"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    .line 118
    const-string v0, "opt_type_bridge"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    .line 119
    const-string v0, "opt_type_static"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    .line 120
    const-string v0, "opt_type_virtual"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    .line 121
    const-string v0, "opt_type_private"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    .line 122
    const-string v0, "opt_type_synchronized"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    .line 123
    const-string v0, "opt_type_varargs"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    const-string v0, "opt_sign_v1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->signV1:Z

    const-string v0, "opt_sign_v2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->signV2:Z

    const-string v0, "opt_sign_v3"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->signV3:Z

    const-string v0, "opt_custom_key_path"

    const-string v2, "/storage/emulated/0/MT2/keys/signature.key"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customKeyPath:Ljava/lang/String;

    const-string v0, "opt_remote_control_url"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;

    return-void
.end method

.method public savePrefs(Landroid/content/Context;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 129
    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "dex2c_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_output_location"

    iget v1, p0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    .line 134
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_parallel_build"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    .line 135
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_arm32"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    .line 136
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_arm64"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 137
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_x86"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    .line 138
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_x86_64"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    .line 139
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_custom_lib_name"

    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 140
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_custom_loader_class"

    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 141
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "opt_ndk_local_path"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_reg_natives"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    .line 143
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_env_encryption"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    .line 144
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_rewrite_dex"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    .line 145
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_synthetic"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    .line 146
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_bridge"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    .line 147
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_static"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    .line 148
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_virtual"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    .line 149
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_private"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    .line 150
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_synchronized"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    .line 151
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_type_varargs"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    .line 152
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_sign_v1"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->signV1:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_sign_v2"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->signV2:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_sign_v3"

    iget-boolean v1, p0, Lcom/dex2c/plus/model/ProjectState;->signV3:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_custom_key_path"

    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->customKeyPath:Ljava/lang/String;

    if-eqz v1, :cond_custom_key_null

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_custom_key

    :cond_custom_key_null
    const-string v1, ""

    :goto_custom_key
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "opt_remote_control_url"

    iget-object v1, p0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;

    if-eqz v1, :cond_remote_url_null

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_remote_url

    :cond_remote_url_null
    const-string v1, ""

    :goto_remote_url
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getRemoteControlUrl()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
