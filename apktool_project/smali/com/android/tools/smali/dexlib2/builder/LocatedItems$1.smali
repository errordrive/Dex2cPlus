.class Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;
.super Ljava/util/AbstractSet;
.source "LocatedItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getModifiableItems(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

.field final synthetic val$newItemsLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->val$newItemsLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)Z
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;->isPlaced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->val$newItemsLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;->setLocation(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V

    .line 100
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->access$100(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)V

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getAddLocatedItemError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 58
    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->add(Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->access$000(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1$1;-><init>(Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->access$000(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
