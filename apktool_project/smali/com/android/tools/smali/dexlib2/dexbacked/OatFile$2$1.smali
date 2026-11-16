.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2$1;
.super Ljava/lang/Object;
.source "OatFile.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 209
    check-cast p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2$1;->apply(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 211
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->entryName:Ljava/lang/String;

    return-object p1
.end method
