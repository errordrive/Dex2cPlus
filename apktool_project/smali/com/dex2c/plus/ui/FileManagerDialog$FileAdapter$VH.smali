.class Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FileManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field final binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

.field boundPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Lcom/dex2c/plus/databinding/ItemFileEntryBinding;)V
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

    .line 301
    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->this$1:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    .line 302
    invoke-virtual {p2}, Lcom/dex2c/plus/databinding/ItemFileEntryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 303
    iput-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemFileEntryBinding;

    return-void
.end method
