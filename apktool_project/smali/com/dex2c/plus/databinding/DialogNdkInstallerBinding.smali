.class public final Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;
.super Ljava/lang/Object;
.source "DialogNdkInstallerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnNdkBrowseFile:Landroid/widget/ImageButton;

.field public final btnNdkDialogClose:Landroid/widget/TextView;

.field public final btnNdkLocalInstall:Landroid/widget/TextView;

.field public final btnNdkOnlineInstall:Landroid/widget/TextView;

.field public final btnNdkUninstall:Landroid/widget/TextView;

.field public final containerNdkInstallOptions:Landroid/widget/LinearLayout;

.field public final containerNdkLiveProgress:Landroid/widget/LinearLayout;

.field public final etNdkLocalPath:Landroid/widget/EditText;

.field public final pbNdkLiveProgress:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvNdkDialogStatusBadge:Landroid/widget/TextView;

.field public final tvNdkDialogTitle:Landroid/widget/TextView;

.field public final tvNdkLiveDetail:Landroid/widget/TextView;

.field public final tvNdkLivePercent:Landroid/widget/TextView;

.field public final tvNdkLiveStage:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 76
    iput-object p2, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkBrowseFile:Landroid/widget/ImageButton;

    .line 77
    iput-object p3, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkDialogClose:Landroid/widget/TextView;

    .line 78
    iput-object p4, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkLocalInstall:Landroid/widget/TextView;

    .line 79
    iput-object p5, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkOnlineInstall:Landroid/widget/TextView;

    .line 80
    iput-object p6, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkUninstall:Landroid/widget/TextView;

    .line 81
    iput-object p7, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkInstallOptions:Landroid/widget/LinearLayout;

    .line 82
    iput-object p8, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkLiveProgress:Landroid/widget/LinearLayout;

    .line 83
    iput-object p9, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    .line 84
    iput-object p10, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->pbNdkLiveProgress:Landroid/widget/ProgressBar;

    .line 85
    iput-object p11, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkDialogStatusBadge:Landroid/widget/TextView;

    .line 86
    iput-object p12, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkDialogTitle:Landroid/widget/TextView;

    .line 87
    iput-object p13, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveDetail:Landroid/widget/TextView;

    .line 88
    iput-object p14, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLivePercent:Landroid/widget/TextView;

    .line 89
    iput-object p15, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveStage:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 119
    sget v1, Lcom/dex2c/plus/R$id;->btnNdkBrowseFile:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 125
    sget v1, Lcom/dex2c/plus/R$id;->btnNdkDialogClose:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 131
    sget v1, Lcom/dex2c/plus/R$id;->btnNdkLocalInstall:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 137
    sget v1, Lcom/dex2c/plus/R$id;->btnNdkOnlineInstall:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 143
    sget v1, Lcom/dex2c/plus/R$id;->btnNdkUninstall:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 149
    sget v1, Lcom/dex2c/plus/R$id;->containerNdkInstallOptions:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 155
    sget v1, Lcom/dex2c/plus/R$id;->containerNdkLiveProgress:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 161
    sget v1, Lcom/dex2c/plus/R$id;->etNdkLocalPath:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    .line 167
    sget v1, Lcom/dex2c/plus/R$id;->pbNdkLiveProgress:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ProgressBar;

    if-eqz v13, :cond_0

    .line 173
    sget v1, Lcom/dex2c/plus/R$id;->tvNdkDialogStatusBadge:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 179
    sget v1, Lcom/dex2c/plus/R$id;->tvNdkDialogTitle:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 185
    sget v1, Lcom/dex2c/plus/R$id;->tvNdkLiveDetail:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 191
    sget v1, Lcom/dex2c/plus/R$id;->tvNdkLivePercent:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 197
    sget v1, Lcom/dex2c/plus/R$id;->tvNdkLiveStage:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 203
    new-instance v3, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v18}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;
    .locals 2

    .line 106
    sget v0, Lcom/dex2c/plus/R$layout;->dialog_ndk_installer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
