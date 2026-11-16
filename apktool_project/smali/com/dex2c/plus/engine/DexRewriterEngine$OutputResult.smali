.class public Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;
.super Ljava/lang/Object;
.source "DexRewriterEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/DexRewriterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputResult"
.end annotation


# instance fields
.field public bundleZip:Ljava/io/File;

.field public outputFolder:Ljava/io/File;

.field public protectedApk:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
