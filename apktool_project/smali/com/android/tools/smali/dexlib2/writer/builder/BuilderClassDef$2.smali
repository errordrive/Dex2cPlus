.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;
.super Ljava/util/AbstractCollection;
.source "BuilderClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getMethods()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
