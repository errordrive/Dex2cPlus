.class public final Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;
.super Ljava/lang/Object;
.source "DialogTelegramProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarCircleContainer:Landroid/widget/FrameLayout;

.field public final btnTelegramClose:Landroid/widget/TextView;

.field public final cardContactUs:Landroid/widget/LinearLayout;

.field public final cardJoinTelegram:Landroid/widget/LinearLayout;

.field public final ivProfileAvatar:Landroid/widget/ImageView;

.field private final rootView:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

.field public final shimmerTelegramLoading:Landroid/widget/LinearLayout;

.field public final shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

.field public final telegramProfileContent:Landroid/widget/LinearLayout;

.field public final tvContactUsSub:Landroid/widget/TextView;

.field public final tvContactUsTitle:Landroid/widget/TextView;

.field public final tvJoinTelegramSub:Landroid/widget/TextView;

.field public final tvJoinTelegramTitle:Landroid/widget/TextView;

.field public final tvProfileHandle:Landroid/widget/TextView;

.field public final tvProfileSubtitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->rootView:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    .line 76
    iput-object p2, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->avatarCircleContainer:Landroid/widget/FrameLayout;

    .line 77
    iput-object p3, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->btnTelegramClose:Landroid/widget/TextView;

    .line 78
    iput-object p4, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardContactUs:Landroid/widget/LinearLayout;

    .line 79
    iput-object p5, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardJoinTelegram:Landroid/widget/LinearLayout;

    .line 80
    iput-object p6, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->ivProfileAvatar:Landroid/widget/ImageView;

    .line 81
    iput-object p7, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramLoading:Landroid/widget/LinearLayout;

    .line 82
    iput-object p8, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    .line 83
    iput-object p9, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    .line 84
    iput-object p10, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvContactUsSub:Landroid/widget/TextView;

    .line 85
    iput-object p11, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvContactUsTitle:Landroid/widget/TextView;

    .line 86
    iput-object p12, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvJoinTelegramSub:Landroid/widget/TextView;

    .line 87
    iput-object p13, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvJoinTelegramTitle:Landroid/widget/TextView;

    .line 88
    iput-object p14, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvProfileHandle:Landroid/widget/TextView;

    .line 89
    iput-object p15, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvProfileSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 119
    sget v1, Lcom/dex2c/plus/R$id;->avatarCircleContainer:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 125
    sget v1, Lcom/dex2c/plus/R$id;->btnTelegramClose:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 131
    sget v1, Lcom/dex2c/plus/R$id;->cardContactUs:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 137
    sget v1, Lcom/dex2c/plus/R$id;->cardJoinTelegram:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 143
    sget v1, Lcom/dex2c/plus/R$id;->ivProfileAvatar:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 149
    sget v1, Lcom/dex2c/plus/R$id;->shimmerTelegramLoading:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 155
    move-object v4, v0

    check-cast v4, Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    .line 157
    sget v1, Lcom/dex2c/plus/R$id;->telegramProfileContent:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 163
    sget v1, Lcom/dex2c/plus/R$id;->tvContactUsSub:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 169
    sget v1, Lcom/dex2c/plus/R$id;->tvContactUsTitle:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 175
    sget v1, Lcom/dex2c/plus/R$id;->tvJoinTelegramSub:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 181
    sget v1, Lcom/dex2c/plus/R$id;->tvJoinTelegramTitle:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 187
    sget v1, Lcom/dex2c/plus/R$id;->tvProfileHandle:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 193
    sget v1, Lcom/dex2c/plus/R$id;->tvProfileSubtitle:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 199
    new-instance v3, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-object v11, v4

    invoke-direct/range {v3 .. v18}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;-><init>(Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/dex2c/plus/ui/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;
    .locals 2

    .line 106
    sget v0, Lcom/dex2c/plus/R$layout;->dialog_telegram_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->getRoot()Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/dex2c/plus/ui/ShimmerFrameLayout;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->rootView:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    return-object v0
.end method
