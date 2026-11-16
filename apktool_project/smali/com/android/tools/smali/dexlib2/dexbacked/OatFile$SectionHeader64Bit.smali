.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;
.super Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionHeader64Bit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;I)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;I)V

    return-void
.end method


# virtual methods
.method public getAddress()J
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntrySize()I
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->offset:I

    add-int/lit8 v1, v1, 0x38

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getLink()I
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->offset:I

    add-int/lit8 v1, v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->offset:I

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;->offset:I

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    return v0
.end method
