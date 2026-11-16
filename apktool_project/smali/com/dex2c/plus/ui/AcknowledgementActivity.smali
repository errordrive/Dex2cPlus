.class public Lcom/dex2c/plus/ui/AcknowledgementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AcknowledgementActivity.java"


# instance fields
.field private binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;


# direct methods
.method public static synthetic $r8$lambda$N6w7aU2uXBV04OQuksCl7kGmy30(Lcom/dex2c/plus/ui/AcknowledgementActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/AcknowledgementActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/AcknowledgementActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 14
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->applyThemeMode(I)V

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/AcknowledgementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    .line 18
    invoke-virtual {p1}, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/AcknowledgementActivity;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object p1, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->headerAcknowledgement:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->rootAcknowledgement:Landroid/widget/LinearLayout;

    sget v1, Lcom/dex2c/plus/R$color;->md_theme_headerSurface:I

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_surfaceContainer:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/dex2c/plus/ui/UiAnimator;->applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x1

    .line 27
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->btnAckBack:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/dex2c/plus/ui/UiAnimator;->attachPersistentDrawablePress([Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;->btnAckBack:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/ui/AcknowledgementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/AcknowledgementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/ui/AcknowledgementActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/dex2c/plus/ui/AcknowledgementActivity;->binding:Lcom/dex2c/plus/databinding/ActivityAcknowledgementBinding;

    .line 35
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
