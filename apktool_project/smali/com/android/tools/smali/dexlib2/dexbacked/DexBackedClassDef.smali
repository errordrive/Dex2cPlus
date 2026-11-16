.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "DexBackedClassDef.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;
    }
.end annotation


# static fields
.field static final NO_HIDDEN_API_RESTRICTIONS:I = 0x7


# instance fields
.field private annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final classDefOffset:I

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final directMethodCount:I

.field private directMethodsOffset:I

.field private final hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final instanceFieldCount:I

.field private instanceFieldsOffset:I

.field private final staticFieldCount:I

.field private final staticFieldsOffset:I

.field private final virtualMethodCount:I

.field private virtualMethodsOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    .line 66
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    .line 67
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    .line 79
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 80
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    .line 82
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    add-int/lit8 p2, p2, 0x18

    invoke-virtual {v1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    .line 84
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    .line 85
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    .line 86
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    .line 87
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    .line 88
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    .line 93
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    :goto_0
    if-eqz p3, :cond_1

    .line 99
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    return-void
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    return p1
.end method

.method private getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 458
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-object v0
.end method

.method private getDirectMethodsOffset()I
    .locals 2

    .line 475
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    if-lez v0, :cond_0

    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFieldsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 479
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->skipFields(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    .line 480
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    return v0
.end method

.method private getInstanceFieldsOffset()I
    .locals 2

    .line 465
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    if-lez v0, :cond_0

    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 469
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->skipFields(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    .line 470
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    return v0
.end method

.method private getVirtualMethodsOffset()I
    .locals 2

    .line 485
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    if-lez v0, :cond_0

    return v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 489
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->skipMethods(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    .line 490
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    return v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 1
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

    .line 155
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getClassAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods(Z)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 316
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    if-lez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 319
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v3

    .line 320
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    .line 322
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->access$600(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 325
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V

    return-object v1

    :cond_1
    move-object v2, p0

    .line 374
    iget p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    if-lez p1, :cond_2

    .line 375
    iput p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    .line 377
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method public getFields()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 305
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields(Z)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 240
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFieldsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v3

    .line 244
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    .line 246
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->access$300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 249
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V

    return-object v1

    :cond_1
    move-object v2, p0

    .line 295
    iget p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    if-lez p1, :cond_2

    .line 296
    iput p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    .line 298
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method public getInterfaces()Ljava/util/List;
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

    .line 134
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 135
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 138
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;II)V

    return-object v2

    .line 149
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getMethods()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 452
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .line 508
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x28

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x24

    .line 516
    :goto_0
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v0

    .line 517
    sget-object v2, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x10

    .line 519
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getClassAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x14

    .line 522
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 528
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 529
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->peekSmallUleb128Size()I

    move-result v0

    add-int/2addr v1, v0

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 538
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 540
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 541
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 542
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    .line 543
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 546
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getFields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;

    .line 547
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    .line 551
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_6
    return v1
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 128
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readOptionalUint(I)I

    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getStaticFields(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields(Z)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 166
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v3

    .line 170
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 171
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v4

    .line 172
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    .line 175
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->access$000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 178
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;IILjava/util/Iterator;Z)V

    return-object v1

    :cond_1
    move-object v2, p0

    .line 227
    iget p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    iput p1, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    .line 228
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 116
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readOptionalUint(I)I

    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 109
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods(Z)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 383
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    if-lez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 386
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v3

    .line 387
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    .line 389
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->hiddenApiRestrictionsReader:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :cond_0
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->access$900(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 392
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V

    return-object v1

    .line 439
    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method
