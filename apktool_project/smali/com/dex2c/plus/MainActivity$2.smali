.class Lcom/dex2c/plus/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dex2c/plus/MainActivity;->configureOverflowDropDownListView(Landroidx/appcompat/widget/PopupMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dex2c/plus/MainActivity;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/dex2c/plus/MainActivity$2;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 296
    iget-object p1, p0, Lcom/dex2c/plus/MainActivity$2;->this$0:Lcom/dex2c/plus/MainActivity;

    invoke-static {p1, p2}, Lcom/dex2c/plus/MainActivity;->-$$Nest$mprepareDropdownChildView(Lcom/dex2c/plus/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
