.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/tools/smali/util/SparseArray<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->getFieldSortOrder(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result p0

    return p0
.end method

.method private addFieldGap(IILjava/util/PriorityQueue;)V
    .locals 3
    .param p3    # Ljava/util/PriorityQueue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;",
            ">;)V"
        }
    .end annotation

    :goto_0
    if-ge p1, p2, :cond_2

    sub-int v0, p2, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 769
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    invoke-static {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 772
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    invoke-static {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->oatVersion:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFieldSize(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 836
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$400(C)I

    move-result p1

    return p1
.end method

.method private getFieldSortOrder(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 806
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x53

    if-eq v0, v2, :cond_3

    const/16 v2, 0x49

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4a

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 832
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Invalid field type: %s"

    invoke-direct {v0, p1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    const/4 p1, 0x5

    return p1

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :cond_0
    const/4 p1, 0x7

    return p1

    :cond_1
    return v3

    :cond_2
    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x6

    return p1

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x4

    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 784
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 785
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public get()Lcom/android/tools/smali/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/util/SparseArray<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 716
    new-instance v1, Lcom/android/tools/smali/util/SparseArray;

    invoke-direct {v1}, Lcom/android/tools/smali/util/SparseArray;-><init>()V

    .line 717
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;

    move-result-object v2

    .line 720
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 723
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v5, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 724
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInstanceFields()Lcom/android/tools/smali/util/SparseArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 727
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/smali/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 728
    invoke-virtual {v3, v6}, Lcom/android/tools/smali/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 729
    invoke-virtual {v3, v6}, Lcom/android/tools/smali/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 730
    invoke-virtual {v1, v7, v5}, Lcom/android/tools/smali/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 734
    invoke-direct {p0, v5}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->getFieldSize(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result v3

    add-int v4, v7, v3

    .line 738
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/Field;

    .line 739
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->getFieldSize(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result v5

    .line 741
    invoke-static {v4, v5}, Lcom/android/tools/smali/dexlib2/util/AlignmentUtils;->isAligned(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 743
    invoke-static {v4, v5}, Lcom/android/tools/smali/dexlib2/util/AlignmentUtils;->alignOffset(II)I

    move-result v6

    .line 744
    invoke-direct {p0, v4, v6, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->addFieldGap(IILjava/util/PriorityQueue;)V

    move v4, v6

    .line 747
    :cond_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;

    if-eqz v6, :cond_4

    .line 748
    iget v7, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->size:I

    if-lt v7, v5, :cond_4

    .line 749
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 750
    iget v7, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    invoke-virtual {v1, v7, v3}, Lcom/android/tools/smali/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    iget v3, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->size:I

    if-le v3, v5, :cond_2

    .line 752
    iget v3, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    add-int/2addr v3, v5

    iget v5, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    iget v6, v6, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->size:I

    add-int/2addr v5, v6

    invoke-direct {p0, v3, v5, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->addFieldGap(IILjava/util/PriorityQueue;)V

    goto :goto_1

    .line 755
    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/android/tools/smali/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/2addr v4, v5

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->get()Lcom/android/tools/smali/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
