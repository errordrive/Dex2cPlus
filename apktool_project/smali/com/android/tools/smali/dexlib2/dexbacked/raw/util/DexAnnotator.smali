.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
.super Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
.source "DexAnnotator.java"


# static fields
.field private static final sectionAnnotationOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;",
            ">;"
        }
    .end annotation
.end field

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    const/16 v0, 0x15

    .line 79
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 109
    sget-object v3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1000
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x8
        0x6
        0x2000
        0x2001
        0x2003
        0x1001
        0x1002
        0x1003
        0x2002
        0x2004
        0x2005
        0x2006
        0xf000
    .end array-data
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;-><init>(I)V

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    .line 116
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 118
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    .line 119
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v0

    const v1, 0xf000

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 184
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unrecognized item type: 0x%x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedArrayItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/DebugInfoItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/StringDataItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 157
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 154
    :pswitch_6
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 148
    :pswitch_8
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetRefList;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 145
    :pswitch_9
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 142
    :pswitch_a
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    :pswitch_b
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodHandleItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 175
    :pswitch_c
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CallSiteIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :pswitch_d
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 136
    :pswitch_e
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 133
    :pswitch_f
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    :pswitch_10
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ProtoIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    :pswitch_11
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    :pswitch_12
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/StringIdItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 121
    :pswitch_13
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getAnnotator(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    return-object p1
.end method

.method public writeAnnotations(Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItems()Ljava/util/List;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;)V

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    .line 199
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    instance-of v2, v1, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBaseDataOffset()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    check-cast v2, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;->getDebugInfoOffsetsPos()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->moveTo(I)V

    .line 205
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexDebugOffsetTable;->annotate(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V

    .line 208
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    .line 211
    invoke-virtual {v5, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 213
    :try_start_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "There was an error while dumping the %s section"

    .line 214
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ItemType;->getItemTypeName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    .line 213
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->getBuf()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->getBaseOffset()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->writeAnnotations(Ljava/io/Writer;[BI)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->getBuf()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->getBaseOffset()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->writeAnnotations(Ljava/io/Writer;[BI)V

    .line 220
    throw v0
.end method
