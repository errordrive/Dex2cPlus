.class public final Lcom/dex2c/plus/databinding/ItemDexClassBinding;
.super Ljava/lang/Object;
.source "ItemDexClassBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final ivExpandArrow:Landroid/widget/ImageView;

.field public final ivNodeIcon:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final treeRowRoot:Landroid/widget/LinearLayout;

.field public final tvClassName:Landroid/widget/TextView;

.field public final tvClassSub:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->cbClass:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 48
    iput-object p3, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivExpandArrow:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->ivNodeIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p5, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->treeRowRoot:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassName:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->tvClassSub:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ItemDexClassBinding;
    .locals 10

    .line 82
    sget v0, Lcom/dex2c/plus/R$id;->cbClass:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/dex2c/plus/R$id;->ivExpandArrow:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/dex2c/plus/R$id;->ivNodeIcon:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 100
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/dex2c/plus/R$id;->tvClassName:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 108
    sget v0, Lcom/dex2c/plus/R$id;->tvClassSub:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 114
    new-instance v2, Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v9}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ItemDexClassBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ItemDexClassBinding;
    .locals 2

    .line 69
    sget v0, Lcom/dex2c/plus/R$layout;->item_dex_class:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
