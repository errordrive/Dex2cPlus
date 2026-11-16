.class public Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;
.super Lcom/android/tools/smali/util/ExceptionWithContext;
.source "DexFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/DexFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedOatVersionException"
.end annotation


# instance fields
.field public final oatFile:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 310
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unsupported oat version: %d"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;->oatFile:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    return-void
.end method
