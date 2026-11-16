.class public final Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;
.super Ljava/lang/Object;
.source "DialogAbisConfigBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAbisCancel:Landroid/widget/TextView;

.field public final btnAbisOk:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rowAbiArm32:Landroid/widget/LinearLayout;

.field public final rowAbiArm64:Landroid/widget/LinearLayout;

.field public final rowAbiX86:Landroid/widget/LinearLayout;

.field public final rowAbiX8664:Landroid/widget/LinearLayout;

.field public final swAbiArm32:Landroidx/appcompat/widget/SwitchCompat;

.field public final swAbiArm64:Landroidx/appcompat/widget/SwitchCompat;

.field public final swAbiX86:Landroidx/appcompat/widget/SwitchCompat;

.field public final swAbiX8664:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->btnAbisCancel:Landroid/widget/TextView;

    .line 61
    iput-object p3, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->btnAbisOk:Landroid/widget/TextView;

    .line 62
    iput-object p4, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiArm32:Landroid/widget/LinearLayout;

    .line 63
    iput-object p5, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiArm64:Landroid/widget/LinearLayout;

    .line 64
    iput-object p6, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiX86:Landroid/widget/LinearLayout;

    .line 65
    iput-object p7, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiX8664:Landroid/widget/LinearLayout;

    .line 66
    iput-object p8, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm32:Landroidx/appcompat/widget/SwitchCompat;

    .line 67
    iput-object p9, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm64:Landroidx/appcompat/widget/SwitchCompat;

    .line 68
    iput-object p10, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX86:Landroidx/appcompat/widget/SwitchCompat;

    .line 69
    iput-object p11, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX8664:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;
    .locals 14

    .line 99
    sget v0, Lcom/dex2c/plus/R$id;->btnAbisCancel:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lcom/dex2c/plus/R$id;->btnAbisOk:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lcom/dex2c/plus/R$id;->rowAbiArm32:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lcom/dex2c/plus/R$id;->rowAbiArm64:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lcom/dex2c/plus/R$id;->rowAbiX86:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lcom/dex2c/plus/R$id;->rowAbiX8664:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lcom/dex2c/plus/R$id;->swAbiArm32:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lcom/dex2c/plus/R$id;->swAbiArm64:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lcom/dex2c/plus/R$id;->swAbiX86:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v12, :cond_0

    .line 153
    sget v0, Lcom/dex2c/plus/R$id;->swAbiX8664:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v13, :cond_0

    .line 159
    new-instance v2, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v13}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    return-object v2

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;
    .locals 2

    .line 86
    sget v0, Lcom/dex2c/plus/R$layout;->dialog_abis_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
