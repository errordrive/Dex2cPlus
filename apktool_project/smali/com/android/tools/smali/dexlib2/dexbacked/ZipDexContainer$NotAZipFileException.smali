.class public Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;
.super Ljava/lang/RuntimeException;
.source "ZipDexContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAZipFileException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
