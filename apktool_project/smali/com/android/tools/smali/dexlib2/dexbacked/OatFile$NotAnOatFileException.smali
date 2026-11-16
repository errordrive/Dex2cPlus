.class public Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;
.super Ljava/lang/RuntimeException;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAnOatFileException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 703
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
