.class public final Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;
.super Ljava/lang/Object;
.source "ActivityAcknowledgementBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAckBack:Landroid/widget/ImageButton;

.field public final cardAckArchitect:Landroid/widget/LinearLayout;

.field public final cardAckClang:Landroid/widget/LinearLayout;

.field public final cardAckMaterial:Landroid/widget/LinearLayout;

.field public final cardAckNdk:Landroid/widget/LinearLayout;

.field public final cardAckSmali:Landroid/widget/LinearLayout;

.field public final headerAcknowledgement:Landroid/widget/LinearLayout;

.field public final rootAcknowledgement:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->btnAckBack:Landroid/widget/ImageButton;

    .line 53
    iput-object p3, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->cardAckArchitect:Landroid/widget/LinearLayout;

    .line 54
    iput-object p4, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->cardAckClang:Landroid/widget/LinearLayout;

    .line 55
    iput-object p5, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->cardAckMaterial:Landroid/widget/LinearLayout;

    .line 56
    iput-object p6, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->cardAckNdk:Landroid/widget/LinearLayout;

    .line 57
    iput-object p7, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->cardAckSmali:Landroid/widget/LinearLayout;

    .line 58
    iput-object p8, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->headerAcknowledgement:Landroid/widget/LinearLayout;

    .line 59
    iput-object p9, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->rootAcknowledgement:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;
    .locals 12

    .line 89
    sget v0, Lcom/dex2c/plus/R$id;->btnAckBack:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lcom/dex2c/plus/R$id;->cardAckArchitect:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 101
    sget v0, Lcom/dex2c/plus/R$id;->cardAckClang:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 107
    sget v0, Lcom/dex2c/plus/R$id;->cardAckMaterial:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 113
    sget v0, Lcom/dex2c/plus/R$id;->cardAckNdk:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 119
    sget v0, Lcom/dex2c/plus/R$id;->cardAckSmali:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 125
    sget v0, Lcom/dex2c/plus/R$id;->headerAcknowledgement:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 131
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 133
    new-instance v2, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    move-object v11, v3

    invoke-direct/range {v2 .. v11}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;
    .locals 2

    .line 76
    sget v0, Lcom/dex2c/plus/R$layout;->activity_acknowledgement:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->bind(Landroid/view/View;)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
