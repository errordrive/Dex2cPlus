.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 909
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 910
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 914
    iget-boolean v2, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    if-nez v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iput-boolean v1, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v0

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 923
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$500(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    .line 927
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getDirectInterfaces()Ljava/lang/Iterable;

    move-result-object v2

    .line 928
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 929
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 930
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 931
    new-instance v7, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;

    iget-object v8, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v8, v8, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;-><init>(Lcom/android/tools/smali/dexlib2/iface/Method;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 933
    :cond_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v3, v5, v0, v1, v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$500(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 903
    :catch_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 904
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$7;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iput-boolean v1, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v0
.end method
