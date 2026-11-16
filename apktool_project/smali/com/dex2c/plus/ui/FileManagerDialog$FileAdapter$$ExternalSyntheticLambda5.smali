.class public final synthetic Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    iput-object p2, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;

    iget-object v1, p0, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;->$r8$lambda$Z9jLRf3nKMpH4l2OLItnvw-J2Ww(Lcom/dex2c/plus/ui/FileManagerDialog$FileAdapter;Ljava/io/File;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
