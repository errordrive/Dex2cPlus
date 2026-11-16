.class public Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatCDexFile;
.super Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OatCDexFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;[BI)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatCDexFile;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    .line 243
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BI)V

    return-void
.end method


# virtual methods
.method public supportsOptimizedOpcodes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
