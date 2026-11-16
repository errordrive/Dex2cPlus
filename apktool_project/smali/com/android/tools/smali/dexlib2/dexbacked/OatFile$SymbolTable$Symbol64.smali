.class public Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;
.super Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Symbol64"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;I)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->access$900(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIndex()I
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method
