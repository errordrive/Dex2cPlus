.class public Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexFile;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OatDexFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;[BI)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 232
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexFile;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    .line 233
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BI)V

    return-void
.end method


# virtual methods
.method public supportsOptimizedOpcodes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
