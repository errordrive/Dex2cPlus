.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.source "DexBackedClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private previousField:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private previousIndex:I

.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

.field final synthetic val$annotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

.field final synthetic val$staticInitialValueIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;ILcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$staticInitialValueIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$annotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 197
    :goto_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->count:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$202(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)I

    .line 199
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;

    return-object p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    const/4 v8, 0x7

    .line 207
    :goto_1
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousIndex:I

    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$staticInitialValueIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$annotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;ILcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;I)V

    .line 210
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousField:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 211
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object v0

    .line 213
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousField:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 214
    iget v2, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousIndex:I

    .line 216
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-boolean v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2;->val$skipDuplicates:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$2$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;

    move-result-object p1

    return-object p1
.end method
