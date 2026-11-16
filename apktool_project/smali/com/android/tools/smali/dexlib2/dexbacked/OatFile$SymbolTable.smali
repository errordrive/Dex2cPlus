.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;
.super Ljava/lang/Object;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymbolTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol32;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;
    }
.end annotation


# instance fields
.field private final entryCount:I

.field private final entrySize:I

.field private final offset:I

.field private final stringTable:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 450
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    :try_start_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$500(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;->getLink()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->stringTable:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->offset:I

    .line 457
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;->getEntrySize()I

    move-result v1

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    .line 458
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;->getSize()I

    move-result p2

    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->entryCount:I

    mul-int p2, p2, v1

    add-int/2addr v0, p2

    .line 460
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    array-length p1, p1

    if-gt v0, p1, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Symbol table extends past end of file"

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :catch_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "String table section index is invalid"

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$600(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .locals 0

    .line 444
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->entryCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .locals 0

    .line 444
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->offset:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .locals 0

    .line 444
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->stringTable:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;

    return-object p0
.end method


# virtual methods
.method public getSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 467
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;)V

    return-object v0
.end method
