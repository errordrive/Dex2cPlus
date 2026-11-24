.class public final Lcom/dex2c/plus/ui/TelegramProfileDialog;
.super Ljava/lang/Object;
.source "TelegramProfileDialog.java"


# static fields
.field public static final LINK_CONTACT_US:I = 0x0

.field public static final LINK_JOIN_CHANNEL:I = 0x1

.field private static final SHIMMER_LOAD_DURATION_MS:J = 0x7d0L


# instance fields
.field private final binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

.field private final dialog:Landroid/app/Dialog;

.field private final mainHandler:Landroid/os/Handler;

.field private final revealProfileRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$4goV3iUYdby5v3fy9bDDoqJ7ues(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->lambda$new$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aqf0OpJgh_g4wU9S3gHQD6FgH54(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->lambda$new$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUzCmZduaQUuMVBvnNXf15sgYu4(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x8LxwT0fAhxk2o7WR-Lt-3NafWQ(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->mainHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->revealProfileRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v2

    iput-object v2, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    .line 61
    invoke-virtual {v2}, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->getRoot()Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f59999a    # 0.85f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 73
    :cond_0
    new-instance v0, Lcom/dex2c/plus/ui/TelegramProfileDialog$2;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog$2;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;)V

    .line 80
    iget-object v3, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->avatarCircleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 81
    iget-object v3, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->avatarCircleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 82
    iget-object v3, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->ivProfileAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 83
    iget-object v0, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->ivProfileAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 88
    :try_start_0
    invoke-static {}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->getEncryptedProfileMetaNative()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 89
    array-length v5, v4

    const/4 v6, 0x7

    if-lt v5, v6, :cond_1

    .line 90
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvProfileHandle:Landroid/widget/TextView;

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvProfileSubtitle:Landroid/widget/TextView;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvContactUsTitle:Landroid/widget/TextView;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvContactUsSub:Landroid/widget/TextView;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvJoinTelegramTitle:Landroid/widget/TextView;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v5, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->tvJoinTelegramSub:Landroid/widget/TextView;

    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v2, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->btnTelegramClose:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    :cond_1
    new-array v2, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v3, v3, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardContactUs:Landroid/widget/LinearLayout;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardJoinTelegram:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/dex2c/plus/ui/UiAnimator;->attachPressAnimation([Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardContactUs:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->cardJoinTelegram:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->btnTelegramClose:Landroid/widget/TextView;

    new-instance v0, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static getArchitectUrlNative()Ljava/lang/String;
    .locals 1

    const-string v0, "https://t.me/errordrive"

    return-object v0
.end method

.method private static getEncryptedProfileMetaNative()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@errordrive"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Official Developer & Community"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Contact Us"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@errordrive"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Join Telegram"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@errordrive"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CLOSE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dismiss()V

    const/4 p2, 0x0

    .line 104
    invoke-static {p1, p2}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->openEncryptedTelegramLinkNative(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dismiss()V

    const/4 p2, 0x1

    .line 109
    invoke-static {p1, p2}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->openEncryptedTelegramLinkNative(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->revealProfileRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 117
    iget-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->stopShimmer()V

    return-void
.end method

.method public static openEncryptedTelegramLinkNative(Landroid/content/Context;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "https://t.me/errordrive"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->revealProfileRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 137
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->stopShimmer()V

    .line 139
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->revealProfileRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 125
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 126
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramLoading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->binding:Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->startShimmer()V

    .line 130
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog;->revealProfileRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
