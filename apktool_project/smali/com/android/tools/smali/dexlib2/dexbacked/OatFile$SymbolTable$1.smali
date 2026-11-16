.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;
.super Ljava/util/AbstractList;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->getSymbols()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;
    .locals 4

    if-ltz p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$600(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$300(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$700(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$800(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v3

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-object v0

    .line 475
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol32;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$700(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$800(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v3

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol32;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-object v0

    .line 470
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->get(I)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$600(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v0

    return v0
.end method
