.class public abstract Lcom/android/tools/smali/dexlib2/builder/LocatedItems;
.super Ljava/lang/Object;
.source "LocatedItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->addItem(Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)V

    return-void
.end method

.method private addItem(Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract getAddLocatedItemError()Ljava/lang/String;
.end method

.method public getModifiableItems(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/builder/MethodLocation;",
            ")",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems$1;-><init>(Lcom/android/tools/smali/dexlib2/builder/LocatedItems;Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V

    return-object v0
.end method

.method public mergeItemsIntoNext(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/builder/MethodLocation;",
            "Lcom/android/tools/smali/dexlib2/builder/LocatedItems<",
            "TT;>;)V"
        }
    .end annotation

    if-ne p2, p0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;

    .line 121
    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;->setLocation(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    .line 124
    invoke-direct {p2}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iput-object p1, p2, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->items:Ljava/util/List;

    :cond_2
    :goto_1
    return-void
.end method
