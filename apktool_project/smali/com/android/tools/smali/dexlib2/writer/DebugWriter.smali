.class public Lcom/android/tools/smali/dexlib2/writer/DebugWriter;
.super Ljava/lang/Object;
.source "DebugWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey::",
        "Ljava/lang/CharSequence;",
        "TypeKey::",
        "Ljava/lang/CharSequence;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIRST_SPECIAL:I = 0xa

.field private static final LINE_BASE:I = -0x4

.field private static final LINE_RANGE:I = 0xf


# instance fields
.field private currentAddress:I

.field private currentLine:I

.field private final stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "TStringKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "TStringKey;TTypeKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "TStringKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "TStringKey;TTypeKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    .line 51
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    .line 52
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    return-void
.end method

.method private writeAdvanceLine(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    sub-int v0, p1, v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 148
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeSleb128(I)V

    .line 149
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    :cond_0
    return-void
.end method

.method private writeAdvancePC(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 137
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 138
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    :cond_0
    return-void
.end method

.method private writeSpecialOpcode(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    mul-int/lit8 v1, p2, 0xf

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 159
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    .line 160
    iget p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    return-void
.end method


# virtual methods
.method reset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    .line 57
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    return-void
.end method

.method public writeEndLocal(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    .line 85
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 86
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeEpilogueBegin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    .line 102
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeLineNumber(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentLine:I

    sub-int v0, p2, v0

    .line 107
    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->currentAddress:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_5

    const/4 v3, -0x4

    if-lt v0, v3, :cond_0

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvanceLine(I)V

    const/4 v0, 0x0

    :cond_1
    const/4 p2, 0x2

    if-ge v0, p2, :cond_2

    const/16 p2, 0x10

    if-gt v1, p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    if-le v0, p2, :cond_4

    const/16 p2, 0xf

    if-le v1, p2, :cond_4

    .line 117
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    const/4 v1, 0x0

    .line 123
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeSpecialOpcode(II)V

    return-void

    .line 110
    :cond_5
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string p2, "debug info items must have non-decreasing code addresses"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public writePrologueEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    .line 97
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeRestartLocal(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    .line 91
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 92
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeSetSourceFile(ILjava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITStringKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    .line 128
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 129
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0, p2}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method

.method public writeStartLocal(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p3    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITStringKey;TTypeKey;TStringKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0, p3}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v0, p4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p4

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0, p5}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p5

    .line 68
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writeAdvancePC(I)V

    const/4 p1, -0x1

    if-ne p5, p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 p5, 0x3

    invoke-virtual {p1, p5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 72
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 73
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 76
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 77
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 78
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 79
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    add-int/lit8 p5, p5, 0x1

    invoke-virtual {p1, p5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method
