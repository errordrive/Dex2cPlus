.class Lcom/dex2c/plus/ui/ClassAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ClassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/ClassAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VH"
.end annotation


# instance fields
.field final binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/databinding/ItemDexClassBinding;)V
    .locals 1

    .line 364
    invoke-virtual {p1}, Lcom/dex2c/plus/databinding/ItemDexClassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 365
    iput-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter$VH;->binding:Lcom/dex2c/plus/databinding/ItemDexClassBinding;

    return-void
.end method
