.class public final Lcom/dex2c/plus/databinding/ActivityBuildBinding;
.super Ljava/lang/Object;
.source "ActivityBuildBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBuildBack:Landroid/widget/ImageButton;

.field public final btnCancelBuild:Landroid/widget/ImageButton;

.field public final btnCopyConsole:Landroid/widget/LinearLayout;

.field public final headerBuild:Landroid/widget/LinearLayout;

.field public final rootBuild:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvBuildTitle:Landroid/widget/TextView;

.field public final tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/dex2c/plus/ui/GlowConsoleTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnBuildBack:Landroid/widget/ImageButton;

    .line 51
    iput-object p3, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCancelBuild:Landroid/widget/ImageButton;

    .line 52
    iput-object p4, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->btnCopyConsole:Landroid/widget/LinearLayout;

    .line 53
    iput-object p5, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->headerBuild:Landroid/widget/LinearLayout;

    .line 54
    iput-object p6, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->rootBuild:Landroid/widget/LinearLayout;

    .line 55
    iput-object p7, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvBuildTitle:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->tvConsoleOutput:Lcom/dex2c/plus/ui/GlowConsoleTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityBuildBinding;
    .locals 11

    .line 86
    sget v0, Lcom/dex2c/plus/R$id;->btnBuildBack:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Lcom/dex2c/plus/R$id;->btnCancelBuild:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/dex2c/plus/R$id;->btnCopyConsole:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 104
    sget v0, Lcom/dex2c/plus/R$id;->headerBuild:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 110
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/dex2c/plus/R$id;->tvBuildTitle:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    sget v0, Lcom/dex2c/plus/R$id;->tvConsoleOutput:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/dex2c/plus/ui/GlowConsoleTextView;

    if-eqz v10, :cond_0

    .line 124
    new-instance v2, Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    move-object v8, v3

    invoke-direct/range {v2 .. v10}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/dex2c/plus/ui/GlowConsoleTextView;)V

    return-object v2

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityBuildBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityBuildBinding;
    .locals 2

    .line 73
    sget v0, Lcom/dex2c/plus/R$layout;->activity_build:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityBuildBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dex2c/plus/databinding/ActivityBuildBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
