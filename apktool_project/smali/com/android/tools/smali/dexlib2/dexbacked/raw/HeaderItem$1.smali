.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "HeaderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p2

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/smali/util/StringUtils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "magic: %s"

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const-string p2, "checksum"

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string p2, "signature"

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-virtual {p1, v3, p2, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "file_size: %d"

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result p2

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "header_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->access$000(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object v1, v4, p3

    const-string v1, "endian_tag: 0x%x (%s)"

    invoke-virtual {p1, v2, v1, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "link_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "link_offset: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "map_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "string_ids_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "string_ids_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "type_ids_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "type_ids_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "proto_ids_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "proto_ids_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "field_ids_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "field_ids_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "method_ids_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "method_ids_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "class_defs_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "class_defs_off: 0x%x"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "data_size: %d"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v1, p3, v0

    const-string v1, "data_off: 0x%x"

    invoke-virtual {p1, v2, v1, p3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->annotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;

    iget-object p3, p3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    instance-of p3, p3, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;

    if-eqz p3, :cond_1

    .line 218
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->annotateCdexHeaderFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V

    :cond_1
    const/16 p3, 0x70

    if-le p2, p3, :cond_2

    .line 222
    const-string p3, "header padding"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 167
    const-string v0, "header_item"

    return-object v0
.end method
