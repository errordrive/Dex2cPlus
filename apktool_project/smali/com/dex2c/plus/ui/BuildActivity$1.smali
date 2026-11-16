.class Lcom/dex2c/plus/ui/BuildActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "BuildActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/ui/BuildActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dex2c/plus/ui/BuildActivity;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/ui/BuildActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/dex2c/plus/ui/BuildActivity$1;->this$0:Lcom/dex2c/plus/ui/BuildActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildActivity$1;->this$0:Lcom/dex2c/plus/ui/BuildActivity;

    invoke-static {v0}, Lcom/dex2c/plus/ui/BuildActivity;->-$$Nest$mcancelAndReturnHome(Lcom/dex2c/plus/ui/BuildActivity;)V

    return-void
.end method
