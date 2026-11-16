.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;
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

    .line 945
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 952
    :try_start_0
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 960
    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v4, v4, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 961
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget-boolean v3, v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    if-nez v3, :cond_0

    .line 966
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iput-boolean v2, v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v1

    .line 973
    :cond_0
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v3

    if-nez v3, :cond_f

    .line 974
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5, v5}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$500(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    .line 976
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getInterfaces()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 978
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 979
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 980
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 982
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 984
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_0
    if-ltz v9, :cond_e

    .line 985
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 986
    iget-object v11, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v11, v11, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v11, v10}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v10

    .line 988
    invoke-interface {v10}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 990
    iget-object v12, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v12, v1, v11}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$600(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result v12

    if-ltz v12, :cond_1

    .line 993
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/smali/dexlib2/iface/Method;

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x0

    .line 996
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 997
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 998
    invoke-static {v15, v11}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->methodSignaturesMatch(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 999
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->shouldCheckPackagePrivateAccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .line 1000
    invoke-static {v2, v15, v5, v3, v3}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;Lcom/android/tools/smali/dexlib2/iface/Method;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_2
    move-object/from16 v17, v3

    .line 1001
    :goto_4
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v2, v11, v15}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$700(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1002
    invoke-interface {v1, v14, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_3
    move-object/from16 v17, v3

    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v17, v3

    if-ltz v12, :cond_6

    .line 1009
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-static {v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$800(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    .line 1014
    :cond_6
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v2, v4, v11}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$900(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 1017
    sget-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v12

    invoke-virtual {v3, v12}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1018
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 1019
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v12}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v12

    .line 1018
    invoke-virtual {v3, v12}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 1020
    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1021
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 1022
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_6
    move-object/from16 v3, v17

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1028
    :cond_8
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v2, v6, v11}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$900(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result v2

    if-ltz v2, :cond_9

    goto :goto_6

    .line 1036
    :cond_9
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v2, v7, v11}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$900(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Ljava/util/List;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 1039
    sget-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v12

    invoke-virtual {v3, v12}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1041
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 1042
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v12}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v12

    .line 1041
    invoke-virtual {v3, v12}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    .line 1043
    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1044
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 1045
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1046
    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1053
    :cond_a
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {v11}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v13, :cond_b

    .line 1055
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-static {v2, v11, v13}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->access$700(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_6

    .line 1059
    :cond_b
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    if-nez v13, :cond_7

    .line 1064
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_d
    move-object/from16 v17, v3

    add-int/lit8 v9, v9, -0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1071
    :cond_e
    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8$1;

    invoke-direct {v2, v0, v8}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;Ljava/util/HashMap;)V

    .line 1080
    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1081
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1082
    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1084
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1085
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1086
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-object v1

    .line 954
    :catch_0
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 955
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$8;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v1
.end method
