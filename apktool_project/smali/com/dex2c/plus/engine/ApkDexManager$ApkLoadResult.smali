.class public Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;
.super Ljava/lang/Object;
.source "ApkDexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/ApkDexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLoadResult"
.end annotation


# instance fields
.field public appLabel:Ljava/lang/String;

.field public cachedApk:Ljava/io/File;

.field public final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation
.end field

.field public dexCount:I

.field public displayName:Ljava/lang/String;

.field public versionCode:J

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/engine/ApkDexManager$ApkLoadResult;->classes:Ljava/util/List;

    return-void
.end method
