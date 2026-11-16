.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "MethodHandleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 49
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

    .line 56
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result p2

    .line 57
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/MethodHandleType;->toString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x2

    const-string v3, "type = %s"

    invoke-virtual {p1, p3, v3, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "unused"

    invoke-virtual {p1, p3, v3, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    packed-switch p2, :pswitch_data_0

    .line 77
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "Invalid method handle type: %d"

    invoke-direct {p1, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 74
    :pswitch_0
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    .line 80
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "field_or_method_id = %s"

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v3, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    const-string v0, "method_handle_item"

    return-object v0
.end method
