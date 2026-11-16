.class public final synthetic Lcom/dex2c/plus/ui/ClassAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    check-cast p2, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;

    invoke-static {p1, p2}, Lcom/dex2c/plus/ui/ClassAdapter;->lambda$sortTreeRecursiveStatic$0(Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;)I

    move-result p1

    return p1
.end method
