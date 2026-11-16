.class public Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;
.super Ljava/lang/Object;
.source "ClassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/ClassAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeNode"
.end annotation


# instance fields
.field public cachedSelectedCount:I

.field public final childMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final classItem:Lcom/dex2c/plus/model/DexClassItem;

.field public depth:I

.field public final descendantClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;"
        }
    .end annotation
.end field

.field public expanded:Z

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public final type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dex2c/plus/ui/ClassAdapter$NodeType;ILcom/dex2c/plus/model/DexClassItem;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->children:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->childMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->descendantClasses:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->cachedSelectedCount:I

    .line 39
    iput-object p1, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->title:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->type:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    .line 42
    iput p4, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->depth:I

    .line 43
    iput-object p5, p0, Lcom/dex2c/plus/ui/ClassAdapter$TreeNode;->classItem:Lcom/dex2c/plus/model/DexClassItem;

    return-void
.end method
