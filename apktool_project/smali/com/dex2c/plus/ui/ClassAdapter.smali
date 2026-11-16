.class public Lcom/dex2c/plus/ui/ClassAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ClassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;,
        Lcom/dex2c/plus/ui/ClassAdapter$NodeType;,
        Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;,
        Lcom/dex2c/plus/ui/ClassAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/dex2c/plus/ui/ClassAdapter$VH;",
        ">;"
    }
.end annotation


# instance fields
.field private final onSelectionChanged:Ljava/lang/Runnable;

.field private final rootNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final visibleNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Zmj0uPJS9hksEJjPRWrzs_MSqU4(Lcom/dex2c/plus/ui/ClassAdapter;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$VH;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/ClassAdapter;->lambda$onBindViewHolder$2(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$VH;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tSO5GAdPFf9w27xcnF_lZfz4Zag(Lcom/dex2c/plus/ui/ClassAdapter;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/ClassAdapter;->lambda$onBindViewHolder$1(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter;->onSelectionChanged:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/ClassAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private static addNodeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 273
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v2, p1}, Lcom/dex2c/plus/ui/ClassAdapter;->addNodeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static compactSingleChildPackagesStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;I)V
    .locals 8

    .line 195
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 197
    iget-object v3, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    .line 198
    iput p1, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->depth:I

    .line 199
    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 200
    :goto_1
    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v5, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    .line 201
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    .line 202
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    iget-object v4, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v6, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v4, v6, :cond_2

    .line 203
    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    .line 204
    iget-object v6, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    .line 206
    iget-object v6, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->id:Ljava/lang/String;

    iput-object v6, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->id:Ljava/lang/String;

    .line 207
    iget-boolean v6, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    if-nez v6, :cond_1

    iget-boolean v6, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_2
    iput-boolean v5, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    .line 208
    iget-object v5, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 209
    iget-object v5, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    iget-object v4, v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 211
    :cond_2
    iget-object v4, v3, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v5, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, p1, 0x1

    .line 212
    invoke-static {v3, v4}, Lcom/dex2c/plus/ui/ClassAdapter;->compactSingleChildPackagesStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static computeSelectedCountRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->CLASS_LEAF:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->classItem:Lcom/dex2c/plus/model/DexClassItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->classItem:Lcom/dex2c/plus/model/DexClassItem;

    iget-boolean v0, v0, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 240
    :cond_0
    iput v2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    return v2

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v0, v1, :cond_4

    .line 245
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 247
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dex2c/plus/model/DexClassItem;

    iget-boolean v4, v4, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_3
    iput v3, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    return v3

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v4}, Lcom/dex2c/plus/ui/ClassAdapter;->computeSelectedCountRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_5
    iput v3, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    return v3
.end method

.method private static insertIntoPackageTreeStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/model/DexClassItem;Ljava/lang/String;IZ)V
    .locals 14

    .line 163
    iget-object v0, p1, Lcom/dex2c/plus/model/DexClassItem;->displayName:Ljava/lang/String;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v2, p2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2e

    .line 171
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v6, -0x1

    const/16 v7, 0x2f

    if-eq v4, v6, :cond_1

    .line 172
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 173
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    if-nez v2, :cond_0

    .line 176
    new-instance v8, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    add-int v12, p3, v3

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dex2c/plus/ui/ClassAdapter$NodeType;ILcom/dex2c/plus/model/DexClassItem;)V

    move/from16 v6, p4

    .line 177
    iput-boolean v6, v8, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    .line 178
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v8

    goto :goto_1

    :cond_0
    move/from16 v6, p4

    move-object p0, v2

    .line 181
    :goto_1
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    move v4, v3

    sget-object v3, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->CLASS_LEAF:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    add-int v4, p3, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dex2c/plus/ui/ClassAdapter$NodeType;ILcom/dex2c/plus/model/DexClassItem;)V

    .line 190
    iget-object v1, v0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p3}, Lcom/dex2c/plus/ui/ClassAdapter;->setNodeSelected(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ClassAdapter;->refreshAllSelectionCounts()V

    .line 325
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ClassAdapter;->notifyDataSetChanged()V

    .line 326
    iget-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter;->onSelectionChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 327
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$VH;Landroid/view/View;)V
    .locals 1

    .line 332
    iget-object p3, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne p3, v0, :cond_0

    .line 333
    iget-boolean p2, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    .line 334
    invoke-direct {p0}, Lcom/dex2c/plus/ui/ClassAdapter;->rebuildVisibleList()V

    .line 335
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ClassAdapter;->notifyDataSetChanged()V

    return-void

    .line 337
    :cond_0
    iget-object p1, p2, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->toggle()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$3(Lcom/dex2c/plus/ui/ClassAdapter$VH;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 343
    iget-object p0, p0, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object p0, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->toggle()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$sortTreeRecursiveStatic$0(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v4, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    return v3

    .line 224
    :cond_3
    iget-object p0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static prepareTreeOffThread(Ljava/util/List;Ljava/lang/String;Z)Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 83
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/16 v5, 0x100

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_2
    if-ge v7, v6, :cond_5

    .line 91
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dex2c/plus/model/DexClassItem;

    if-nez v2, :cond_3

    .line 92
    iget-object v10, v9, Lcom/dex2c/plus/model/DexClassItem;->lowerDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v9, Lcom/dex2c/plus/model/DexClassItem;->lowerDexEntryName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 93
    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-boolean v9, v9, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-nez v9, :cond_4

    const/4 v8, 0x0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 99
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v8, 0x0

    .line 104
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz p2, :cond_a

    .line 109
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_d

    .line 111
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dex2c/plus/model/DexClassItem;

    .line 112
    iget-object v10, v9, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    if-nez v10, :cond_8

    .line 114
    new-instance v11, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "dex:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    sget-object v14, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dex2c/plus/ui/ClassAdapter$NodeType;ILcom/dex2c/plus/model/DexClassItem;)V

    .line 115
    iget-object v10, v9, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    .line 118
    :cond_8
    iget-object v11, v10, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-boolean v9, v9, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    if-eqz v9, :cond_9

    .line 120
    iget v9, v10, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    add-int/2addr v9, v5

    iput v9, v10, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    if-nez v2, :cond_b

    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0x190

    if-gt v2, v6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 127
    :goto_4
    new-instance v9, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    sget-object v12, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-string v10, "virtual"

    const-string v11, ""

    invoke-direct/range {v9 .. v14}, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dex2c/plus/ui/ClassAdapter$NodeType;ILcom/dex2c/plus/model/DexClassItem;)V

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_c

    .line 129
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dex2c/plus/model/DexClassItem;

    const-string v10, "cls"

    invoke-static {v9, v7, v10, v4, v5}, Lcom/dex2c/plus/ui/ClassAdapter;->insertIntoPackageTreeStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/model/DexClassItem;Ljava/lang/String;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 131
    :cond_c
    invoke-static {v9, v4}, Lcom/dex2c/plus/ui/ClassAdapter;->compactSingleChildPackagesStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;I)V

    .line 132
    invoke-static {v9}, Lcom/dex2c/plus/ui/ClassAdapter;->sortTreeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)V

    .line 133
    iget-object v2, v9, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_e

    .line 137
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v6}, Lcom/dex2c/plus/ui/ClassAdapter;->computeSelectedCountRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 139
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v4, v2, :cond_f

    .line 140
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v5, v1}, Lcom/dex2c/plus/ui/ClassAdapter;->addNodeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 144
    :cond_f
    new-instance v2, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;

    invoke-direct {v2, v0, v1, v3, v8}, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2
.end method

.method private rebuildVisibleList()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 264
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    iget-object v3, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/dex2c/plus/ui/ClassAdapter;->addNodeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setNodeSelected(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Z)V
    .locals 3

    .line 349
    iget-object p1, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/model/DexClassItem;

    iput-boolean p2, v2, Lcom/dex2c/plus/model/DexClassItem;->selected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static sortTreeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    new-instance v1, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v2}, Lcom/dex2c/plus/ui/ClassAdapter;->sortTreeRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public applyPreparedTree(Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    iget-object v1, p1, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->rootNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    iget-object p1, p1, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->visibleNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/ClassAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public buildTree(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;ZZ)V"
        }
    .end annotation

    .line 158
    const-string p3, ""

    invoke-static {p1, p3, p2}, Lcom/dex2c/plus/ui/ClassAdapter;->prepareTreeOffThread(Ljava/util/List;Ljava/lang/String;Z)Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/ClassAdapter;->applyPreparedTree(Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    iget-object p1, p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/dex2c/plus/ui/ClassAdapter;->onBindViewHolder(Lcom/dex2c/plus/ui/ClassAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dex2c/plus/ui/ClassAdapter$VH;I)V
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->visibleNodes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    .line 288
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 290
    iget v1, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->depth:I

    mul-int/lit8 v1, v1, 0x12

    add-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 292
    iget-object v2, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v2, v2, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->treeRowRoot:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 294
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 297
    iget v1, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    if-lez v0, :cond_0

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 300
    :goto_0
    iget-object v4, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v4, v4, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivNodeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 302
    iget-object v4, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v5, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/16 v6, 0x8

    if-ne v4, v5, :cond_1

    .line 303
    iget-object v4, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v4, v4, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivExpandArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v4, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v4, v4, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivNodeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/dex2c/plus/R$drawable;->ic_dex_file:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v4, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v4, v4, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassSub:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v3, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v3, v3, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassSub:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " classes"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 307
    :cond_1
    iget-object v0, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    if-ne v0, v1, :cond_3

    .line 308
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivExpandArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivExpandArrow:Landroid/widget/ImageView;

    .line 310
    iget-boolean v1, p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->expanded:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/dex2c/plus/R$drawable;->ic_chevron_down:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/dex2c/plus/R$drawable;->ic_chevron_right:I

    .line 309
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivNodeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/dex2c/plus/R$drawable;->ic_tree_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassSub:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 315
    :cond_3
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivExpandArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivNodeIcon:Landroid/widget/ImageView;

    sget v1, Lcom/dex2c/plus/R$drawable;->ic_class_node:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassSub:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_2
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 321
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 322
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v1, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/ui/ClassAdapter;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 331
    iget-object v0, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->itemView:Landroid/view/View;

    new-instance v1, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/ClassAdapter;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$VH;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p2, p1, Lcom/dex2c/plus/ui/ClassAdapter$VH;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/ClassAdapter$VH;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/dex2c/plus/ui/ClassAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dex2c/plus/ui/ClassAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dex2c/plus/ui/ClassAdapter$VH;
    .locals 1

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    move-result-object p1

    .line 282
    new-instance p2, Lcom/dex2c/plus/ui/ClassAdapter$VH;

    invoke-direct {p2, p1}, Lcom/dex2c/plus/ui/ClassAdapter$VH;-><init>(Lcom/dex2c/plus/databinding/ItemDexClassBinding;)V

    return-object p2
.end method

.method public refreshAllSelectionCounts()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/dex2c/plus/ui/ClassAdapter;->rootNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {v2}, Lcom/dex2c/plus/ui/ClassAdapter;->computeSelectedCountRecursiveStatic(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
