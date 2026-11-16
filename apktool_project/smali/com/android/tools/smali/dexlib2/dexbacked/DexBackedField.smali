.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "DexBackedField.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Field;


# instance fields
.field public final accessFlags:I

.field public final annotationSetOffset:I

.field public final classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private fieldIdItemOffset:I

.field public final fieldIndex:I

.field private final hiddenApiRestrictions:I

.field public final initialValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final initialValueOffset:I

.field private final startOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;ILcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            "I",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;",
            "I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 97
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 101
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->startOffset:I

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p1

    add-int/2addr p1, p4

    .line 103
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    .line 104
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    .line 106
    invoke-interface {p5, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValueOffset:I

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 109
    iput p6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->hiddenApiRestrictions:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;ILcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            "I",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;",
            "I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 75
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->startOffset:I

    .line 80
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p1

    add-int/2addr p1, p4

    .line 81
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    .line 82
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    .line 84
    invoke-interface {p6, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    .line 85
    invoke-virtual {p5}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getReaderOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValueOffset:I

    .line 86
    invoke-virtual {p5}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 87
    iput p7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->hiddenApiRestrictions:I

    return-void
.end method

.method private getFieldIdItemOffset()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    return v0
.end method

.method public static skipFields(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    .line 155
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 139
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->hiddenApiRestrictions:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 140
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 142
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->getAllFlags(I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 116
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->getFieldIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->startOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    .line 178
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 179
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->startOffset:I

    sub-int/2addr v1, v2

    .line 181
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x8

    .line 186
    :cond_0
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValueOffset:I

    if-lez v2, :cond_1

    .line 187
    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 188
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    if-eqz v2, :cond_1

    .line 189
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;->skipFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    .line 190
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->initialValueOffset:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 194
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-direct {v0, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    .line 195
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 123
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->getFieldIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
