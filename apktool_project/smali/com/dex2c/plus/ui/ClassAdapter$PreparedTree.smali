.class public Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;
.super Ljava/lang/Object;
.source "ClassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/ClassAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreparedTree"
.end annotation


# instance fields
.field public final allChecked:Z

.field public final matchedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation
.end field

.field public final rootNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->rootNodes:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->visibleNodes:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->matchedItems:Ljava/util/List;

    .line 58
    iput-boolean p4, p0, Lcom/dex2c/plus/ui/ClassAdapter$PreparedTree;->allChecked:Z

    return-void
.end method
