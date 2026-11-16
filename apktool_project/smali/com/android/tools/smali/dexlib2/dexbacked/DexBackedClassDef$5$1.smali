.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.source "DexBackedClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private previousIndex:I

.field private previousMethod:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;
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
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 411
    :goto_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->count:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    return-object p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

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

    .line 420
    :goto_1
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousIndex:I

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v6, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->methodAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v7, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->parameterAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;ILcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;I)V

    .line 423
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousMethod:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 424
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object v0

    .line 426
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousMethod:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 427
    iget v2, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousIndex:I

    .line 429
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-boolean v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$skipDuplicates:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->equals(Ljava/lang/Object;)Z

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

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    move-result-object p1

    return-object p1
.end method
