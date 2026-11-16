.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1$1;
.super Ljava/lang/Object;
.source "OatFile.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 194
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 192
    check-cast p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1$1;->apply(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    return-object p1
.end method
