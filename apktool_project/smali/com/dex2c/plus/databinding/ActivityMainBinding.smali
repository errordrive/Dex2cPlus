.class public final Lcom/dex2c/plus/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBuild:Landroid/widget/ImageButton;

.field public final btnHeaderApkPicker:Landroid/widget/ImageButton;

.field public final btnHeaderTelegram:Landroid/widget/ImageButton;

.field public final btnMoreMenu:Landroid/widget/ImageButton;

.field public final cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final etFilter:Landroid/widget/EditText;

.field public final filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

.field public final filterBarContent:Landroid/widget/LinearLayout;

.field public final headerContainer:Landroid/widget/LinearLayout;

.field public final rootContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final rvClasses:Landroidx/recyclerview/widget/RecyclerView;

.field public final shimmerFilterLoading:Landroid/widget/LinearLayout;

.field public final shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

.field public final swTreeMode:Landroidx/appcompat/widget/SwitchCompat;

.field public final tvHeaderTitle:Landroid/widget/TextView;

.field public final tvSelectedCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/EditText;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    .line 87
    iput-object p2, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnBuild:Landroid/widget/ImageButton;

    .line 88
    iput-object p3, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderApkPicker:Landroid/widget/ImageButton;

    .line 89
    iput-object p4, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnHeaderTelegram:Landroid/widget/ImageButton;

    .line 90
    iput-object p5, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->btnMoreMenu:Landroid/widget/ImageButton;

    .line 91
    iput-object p6, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->cbSelectAll:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 92
    iput-object p7, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->etFilter:Landroid/widget/EditText;

    .line 93
    iput-object p8, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContainer:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    .line 94
    iput-object p9, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->filterBarContent:Landroid/widget/LinearLayout;

    .line 95
    iput-object p10, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->headerContainer:Landroid/widget/LinearLayout;

    .line 96
    iput-object p11, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rootContainer:Landroid/widget/FrameLayout;

    .line 97
    iput-object p12, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rvClasses:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    iput-object p13, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerFilterLoading:Landroid/widget/LinearLayout;

    .line 99
    iput-object p14, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->shimmerTreeLoading:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    .line 100
    iput-object p15, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->swTreeMode:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 p1, p16

    .line 101
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->tvHeaderTitle:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 102
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->tvSelectedCount:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityMainBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 132
    sget v1, Lcom/dex2c/plus/R$id;->btnBuild:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 138
    sget v1, Lcom/dex2c/plus/R$id;->btnHeaderApkPicker:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 144
    sget v1, Lcom/dex2c/plus/R$id;->btnHeaderTelegram:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_0

    .line 150
    sget v1, Lcom/dex2c/plus/R$id;->btnMoreMenu:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    if-eqz v8, :cond_0

    .line 156
    sget v1, Lcom/dex2c/plus/R$id;->cbSelectAll:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz v9, :cond_0

    .line 162
    sget v1, Lcom/dex2c/plus/R$id;->etFilter:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 168
    sget v1, Lcom/dex2c/plus/R$id;->filterBarContainer:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    if-eqz v11, :cond_0

    .line 174
    sget v1, Lcom/dex2c/plus/R$id;->filterBarContent:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 180
    sget v1, Lcom/dex2c/plus/R$id;->headerContainer:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 186
    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    .line 188
    sget v1, Lcom/dex2c/plus/R$id;->rvClasses:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    .line 194
    sget v1, Lcom/dex2c/plus/R$id;->shimmerFilterLoading:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    .line 200
    sget v1, Lcom/dex2c/plus/R$id;->shimmerTreeLoading:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    if-eqz v17, :cond_0

    .line 206
    sget v1, Lcom/dex2c/plus/R$id;->swTreeMode:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v18, :cond_0

    .line 212
    sget v1, Lcom/dex2c/plus/R$id;->tvHeaderTitle:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 218
    sget v1, Lcom/dex2c/plus/R$id;->tvSelectedCount:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 224
    new-instance v3, Lcom/dex2c/plus/databinding/ActivityMainBinding;

    move-object v14, v4

    invoke-direct/range {v3 .. v20}, Lcom/dex2c/plus/databinding/ActivityMainBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/EditText;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityMainBinding;
    .locals 2

    .line 119
    sget v0, Lcom/dex2c/plus/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/ActivityMainBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/dex2c/plus/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
