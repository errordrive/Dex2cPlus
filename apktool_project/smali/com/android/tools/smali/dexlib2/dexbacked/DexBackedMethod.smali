.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "DexBackedMethod.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# instance fields
.field public final accessFlags:I

.field public final classDef:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final codeOffset:I

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final hiddenApiRestrictions:I

.field private final methodAnnotationSetOffset:I

.field private methodIdItemOffset:I

.field public final methodIndex:I

.field private final parameterAnnotationSetListOffset:I

.field private parametersOffset:I

.field private protoIdItemOffset:I

.field private final startOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;II)V
    .locals 1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            "II)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    .line 82
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 83
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->classDef:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->startOffset:I

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p1

    add-int/2addr p1, p4

    .line 89
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    .line 90
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    .line 92
    iput p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->hiddenApiRestrictions:I

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    .line 95
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;ILcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;I)V
    .locals 1
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
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;",
            "I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    .line 105
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 106
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->classDef:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    .line 107
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->startOffset:I

    .line 111
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p1

    add-int/2addr p1, p4

    .line 112
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    .line 113
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    .line 114
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    .line 115
    iput p7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->hiddenApiRestrictions:I

    .line 117
    invoke-interface {p5, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    .line 118
    invoke-interface {p6, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    return-void
.end method

.method private getMethodIdItemOffset()I
    .locals 2

    .line 220
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    .line 223
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    return v0
.end method

.method private getParametersOffset()I
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    .line 237
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getProtoIdItemOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    return v0
.end method

.method private getProtoIdItemOffset()I
    .locals 2

    .line 227
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getMethodIdItemOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getProtoSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    .line 231
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    return v0
.end method

.method public static skipMethods(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
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

    .line 250
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    .line 251
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    .line 252
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->skipUleb128()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->classDef:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getType()Ljava/lang/String;

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

    .line 203
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->hiddenApiRestrictions:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 204
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 206
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->getAllFlags(I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 213
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    if-lez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1, v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->createMethodImplementation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getMethodIndex()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 129
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getMethodIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getParametersOffset()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 182
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;II)V

    return-object v2

    .line 191
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getParametersOffset()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;Ljava/util/List;)V

    return-object v1

    .line 158
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 136
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getProtoIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->startOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    .line 269
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 270
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 271
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->startOffset:I

    sub-int/2addr v0, v1

    .line 273
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-direct {v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    .line 279
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
