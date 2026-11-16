.class Lcom/dex2c/plus/ui/TelegramProfileDialog$1;
.super Ljava/lang/Object;
.source "TelegramProfileDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/TelegramProfileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/ui/TelegramProfileDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetdialog(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramRoot:Lcom/dex2c/plus/ui/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/dex2c/plus/ui/ShimmerFrameLayout;->stopShimmer()V

    .line 43
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->shimmerTelegramLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 45
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/dex2c/plus/ui/TelegramProfileDialog$1;->this$0:Lcom/dex2c/plus/ui/TelegramProfileDialog;

    invoke-static {v0}, Lcom/dex2c/plus/ui/TelegramProfileDialog;->-$$Nest$fgetbinding(Lcom/dex2c/plus/ui/TelegramProfileDialog;)Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogTelegramProfileBinding;->telegramProfileContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
