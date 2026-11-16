.class public final synthetic Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/dex2c/plus/ui/ClassAdapter$VH;


# direct methods
.method public synthetic constructor <init>(Lcom/dex2c/plus/ui/ClassAdapter$VH;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/dex2c/plus/ui/ClassAdapter$VH;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/dex2c/plus/ui/ClassAdapter$VH;

    invoke-static {v0, p1}, Lcom/dex2c/plus/ui/ClassAdapter;->lambda$onBindViewHolder$3(Lcom/dex2c/plus/ui/ClassAdapter$VH;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
