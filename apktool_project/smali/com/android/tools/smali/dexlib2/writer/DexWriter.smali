.class public abstract Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.super Ljava/lang/Object;
.source "DexWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;,
        Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;,
        Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;,
        Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey::",
        "Ljava/lang/CharSequence;",
        "StringRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;",
        "TypeKey::",
        "Ljava/lang/CharSequence;",
        "TypeRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        "ProtoRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        "FieldRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "MethodRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "ClassKey::",
        "Ljava/lang/Comparable<",
        "-TClassKey;>;CallSiteKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        "MethodHandleKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "AnnotationKey::",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        "AnnotationSetKey:",
        "Ljava/lang/Object;",
        "Type",
        "ListKey:Ljava/lang/Object;",
        "FieldKey:",
        "Ljava/lang/Object;",
        "MethodKey:",
        "Ljava/lang/Object;",
        "EncodedArrayKey:",
        "Ljava/lang/Object;",
        "EncodedValue:",
        "Ljava/lang/Object;",
        "AnnotationElement::",
        "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
        "StringSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
        "TStringKey;TStringRef;>;TypeSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
        "TStringKey;TTypeKey;TTypeRef;>;ProtoSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
        "TStringKey;TTypeKey;TProtoRefKey;TType",
        "ListKey;",
        ">;FieldSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
        "TStringKey;TTypeKey;TFieldRefKey;TFieldKey;>;MethodSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
        "TStringKey;TTypeKey;TProtoRefKey;TMethodRefKey;TMethodKey;>;ClassSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/ClassSection<",
        "TStringKey;TTypeKey;TType",
        "ListKey;",
        "TClassKey;TFieldKey;TMethodKey;TAnnotationSetKey;TEncodedArrayKey;>;CallSiteSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
        "TCallSiteKey;TEncodedArrayKey;>;MethodHandleSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
        "TMethodHandleKey;TFieldRefKey;TMethodRefKey;>;Type",
        "ListSectionType::Lcom/android/tools/smali/dexlib2/writer/TypeListSection<",
        "TTypeKey;TType",
        "ListKey;",
        ">;AnnotationSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/AnnotationSection<",
        "TStringKey;TTypeKey;TAnnotationKey;TAnnotationElement;TEncodedValue;>;AnnotationSetSectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection<",
        "TAnnotationKey;TAnnotationSetKey;>;EncodedArraySectionType::",
        "Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection<",
        "TEncodedArrayKey;TEncodedValue;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_POOL_SIZE:I = 0x10000

.field public static final NO_INDEX:I = -0x1

.field public static final NO_OFFSET:I

.field private static toStringKeyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected annotationDirectorySectionOffset:I

.field public final annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAnnotationSectionType;"
        }
    .end annotation
.end field

.field protected annotationSectionOffset:I

.field protected annotationSetRefSectionOffset:I

.field public final annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAnnotationSetSectionType;"
        }
    .end annotation
.end field

.field protected annotationSetSectionOffset:I

.field private callSiteComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "+TCallSiteKey;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallSiteSectionType;"
        }
    .end annotation
.end field

.field protected callSiteSectionOffset:I

.field protected classDataSectionOffset:I

.field protected classIndexSectionOffset:I

.field public final classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TClassSectionType;"
        }
    .end annotation
.end field

.field protected codeSectionOffset:I

.field private final debugInfoCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected debugSectionOffset:I

.field public final encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEncodedArraySectionType;"
        }
    .end annotation
.end field

.field protected encodedArraySectionOffset:I

.field public final fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFieldSectionType;"
        }
    .end annotation
.end field

.field protected fieldSectionOffset:I

.field protected hasHiddenApiRestrictions:Z

.field protected hiddenApiRestrictionsOffset:I

.field protected mapSectionOffset:I

.field public final methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMethodHandleSectionType;"
        }
    .end annotation
.end field

.field protected methodHandleSectionOffset:I

.field public final methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMethodSectionType;"
        }
    .end annotation
.end field

.field protected methodSectionOffset:I

.field protected numAnnotationDirectoryItems:I

.field protected numAnnotationSetRefItems:I

.field protected numClassDataItems:I

.field protected numCodeItemItems:I

.field protected numDebugInfoItems:I

.field protected final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

.field private final overflowableSections:[Lcom/android/tools/smali/dexlib2/writer/IndexSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/tools/smali/dexlib2/writer/IndexSection<",
            "*>;"
        }
    .end annotation
.end field

.field public final protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TProtoSectionType;"
        }
    .end annotation
.end field

.field protected protoSectionOffset:I

.field protected stringDataSectionOffset:I

.field protected stringIndexSectionOffset:I

.field public final stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStringSectionType;"
        }
    .end annotation
.end field

.field public final typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType",
            "ListSectionType;"
        }
    .end annotation
.end field

.field protected typeListSectionOffset:I

.field public final typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeSectionType;"
        }
    .end annotation
.end field

.field protected typeSectionOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 271
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V
    .locals 8

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    .line 176
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSectionOffset:I

    .line 177
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSectionOffset:I

    .line 178
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    .line 179
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSectionOffset:I

    .line 180
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    .line 181
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSectionOffset:I

    .line 182
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSectionOffset:I

    .line 184
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    .line 185
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    .line 186
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    .line 187
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    .line 188
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    .line 189
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    .line 190
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    .line 191
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    .line 192
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugSectionOffset:I

    .line 193
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->codeSectionOffset:I

    .line 194
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hiddenApiRestrictionsOffset:I

    .line 195
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->mapSectionOffset:I

    .line 197
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hasHiddenApiRestrictions:Z

    .line 199
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    .line 200
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    .line 201
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    .line 202
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numCodeItemItems:I

    .line 203
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numClassDataItems:I

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugInfoCaches:Ljava/util/Map;

    .line 261
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;)V

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteComparator:Ljava/util/Comparator;

    .line 228
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    .line 230
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->getSectionProvider()Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getStringSection()Lcom/android/tools/smali/dexlib2/writer/StringSection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    .line 232
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getTypeSection()Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    .line 233
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getProtoSection()Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    .line 234
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getFieldSection()Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    .line 235
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getMethodSection()Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 236
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getClassSection()Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 237
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    .line 238
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    move-result-object v6

    iput-object v6, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 239
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    .line 240
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    .line 241
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    .line 242
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    const/4 p1, 0x6

    .line 244
    new-array p1, p1, [Lcom/android/tools/smali/dexlib2/writer/IndexSection;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const/4 v0, 0x2

    aput-object v3, p1, v0

    const/4 v0, 0x3

    aput-object v4, p1, v0

    const/4 v0, 0x4

    aput-object v5, p1, v0

    const/4 v0, 0x5

    aput-object v6, p1, v0

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->overflowableSections:[Lcom/android/tools/smali/dexlib2/writer/IndexSection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object p0

    return-object p0
.end method

.method private calcNumItems()I
    .locals 3

    .line 1480
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1483
    :goto_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1486
    :cond_1
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1489
    :cond_2
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 1492
    :cond_3
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1495
    :cond_4
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 1498
    :cond_5
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 1501
    :cond_6
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 1504
    :cond_7
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 1507
    :cond_8
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 1510
    :cond_9
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_a

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 1513
    :cond_b
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    if-lez v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 1516
    :cond_c
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    if-lez v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 1519
    :cond_d
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    if-lez v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 1522
    :cond_e
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numCodeItemItems:I

    if-lez v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 1525
    :cond_f
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 1528
    :cond_10
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numClassDataItems:I

    if-lez v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 1531
    :cond_11
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldWriteHiddenApiRestrictions()Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method private static comparableKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "+TT;*>;>;"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$3;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$3;-><init>()V

    return-object v0
.end method

.method private static comparableValueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "*+TT;>;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$4;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$4;-><init>()V

    return-object v0
.end method

.method private fixInstructions(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1123
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1125
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1126
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 1128
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->CONST_STRING:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v3, v4, :cond_0

    .line 1129
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    move-object v4, v2

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1130
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    .line 1129
    invoke-interface {v3, v5}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)I

    move-result v3

    const/high16 v5, 0x10000

    if-lt v3, v5, :cond_0

    .line 1131
    new-instance v3, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;

    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->CONST_STRING_JUMBO:Lcom/android/tools/smali/dexlib2/Opcode;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    .line 1132
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 1133
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 1131
    invoke-virtual {p1, v1, v3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->replaceInstruction(ILcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDataSectionOffset()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    .line 308
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x70

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    .line 309
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    .line 310
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    .line 311
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 312
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 313
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    .line 314
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 315
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private static outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private shouldCreateEmptyAnnotationSet()Z
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldWriteHiddenApiRestrictions()Z
    .locals 2

    .line 599
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hasHiddenApiRestrictions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateChecksum(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0x1000

    .line 452
    new-array v1, v1, [B

    const/16 v2, 0xc

    .line 453
    invoke-interface {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->readAt(I)Ljava/io/InputStream;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 456
    invoke-virtual {v0, v1, v4, v3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 457
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 461
    invoke-interface {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p1

    .line 462
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 463
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private updateSignature(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1000

    .line 430
    new-array v1, v1, [B

    const/16 v2, 0x20

    .line 431
    invoke-interface {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->readAt(I)Ljava/io/InputStream;

    move-result-object v2

    .line 432
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 434
    invoke-virtual {v0, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 435
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 439
    array-length v1, v0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc

    .line 444
    invoke-interface {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 446
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    .line 440
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected digest write: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeAnnotationDirectories(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 12
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 956
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    .line 957
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/high16 v1, 0x10000

    .line 959
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 960
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 962
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 966
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 967
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v5, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 970
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x8

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    .line 971
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 972
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 973
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 976
    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 982
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 983
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v9, v8}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getFieldAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 986
    iget-object v10, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v10, v8}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getFieldIndex(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 987
    iget-object v8, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v8, v9}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 991
    :cond_3
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 992
    iget-object v10, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v10, v9}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 995
    iget-object v11, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v11, v9}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 996
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v9, v10}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 1000
    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1001
    iget-object v10, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v10, v9}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getAnnotationSetRefListOffset(Ljava/lang/Object;)I

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 1004
    iget-object v11, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v11, v9}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1005
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 1011
    :cond_7
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getClassAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-nez v5, :cond_9

    if-eqz v4, :cond_0

    .line 1015
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    .line 1017
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->setAnnotationDirectoryOffset(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1020
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_9
    iget v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    .line 1029
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v10

    invoke-interface {v9, v3, v10}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->setAnnotationDirectoryOffset(Ljava/lang/Object;I)V

    .line 1031
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1032
    invoke-virtual {p1, v7}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1033
    invoke-virtual {p1, v8}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1034
    invoke-virtual {p1, v5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1035
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write([BII)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private writeAnnotationSetRefs(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 920
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    .line 921
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 924
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 925
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getParameterAnnotations(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 927
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 929
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->setAnnotationSetRefListOffset(Ljava/lang/Object;I)V

    goto :goto_0

    .line 931
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 932
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v5

    .line 933
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v6, v3, v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->setAnnotationSetRefListOffset(Ljava/lang/Object;I)V

    .line 934
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    .line 938
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 939
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 940
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 941
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_1

    .line 942
    :cond_3
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 943
    iget v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    invoke-virtual {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 945
    invoke-virtual {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private writeAnnotationSets(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 901
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    .line 902
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 903
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 906
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    .line 907
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;->BY_TYPE:Ljava/util/Comparator;

    .line 906
    invoke-static {v2, v3}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 909
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 910
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 912
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    .line 913
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeAnnotations(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexWriter$1;)V

    .line 878
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    .line 879
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 880
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    .line 884
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getVisibility(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    .line 885
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v4, v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 887
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    .line 888
    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getElements(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;->BY_NAME:Ljava/util/Comparator;

    .line 887
    invoke-static {v2, v3}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 890
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 892
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 893
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v5, v3}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getElementName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 894
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getElementValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeCallSites(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSectionOffset:I

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    .line 769
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 770
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 774
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 775
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v4, v2}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getItemOffset(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeClass(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "I",
            "Ljava/util/Map$Entry<",
            "+TClassKey;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    return p3

    .line 697
    :cond_1
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 704
    invoke-interface {v2, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSuperclass(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 705
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeClass(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result p3

    .line 708
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v3, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 709
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 710
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeClass(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result p3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p3, 0x1

    .line 714
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getType(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 719
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getAccessFlags(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 720
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSuperclass(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 721
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 722
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSourceFile(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 723
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getAnnotationDirectoryOffset(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 725
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedStaticFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    .line 726
    iget-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedInstanceFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p4

    .line 727
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v3, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 728
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 729
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_4

    .line 730
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 731
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 732
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_5

    .line 735
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_4

    .line 737
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 740
    :goto_4
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v7, v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getStaticInitializers(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 742
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    invoke-interface {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getItemOffset(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_5

    .line 744
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    :goto_5
    if-eqz v5, :cond_7

    .line 749
    iget p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numClassDataItems:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numClassDataItems:I

    .line 751
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 752
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 753
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 754
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 756
    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedFields(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    .line 757
    invoke-direct {p0, p2, p4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedFields(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    .line 758
    invoke-direct {p0, p2, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedMethods(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    .line 759
    invoke-direct {p0, p2, v4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedMethods(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    :cond_7
    return v2
.end method

.method private writeClasses(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    .line 551
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 554
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 558
    invoke-direct {p0, p2, p3, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeClass(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result v1

    goto :goto_0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldWriteHiddenApiRestrictions()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 565
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 566
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hiddenApiRestrictionsOffset:I

    .line 568
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 569
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->comparableValueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/Comparator;)V

    .line 570
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, p3, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;I)V

    .line 573
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 575
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p3, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedStaticFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getFieldHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestriction(Ljava/util/Set;)V

    goto :goto_2

    .line 579
    :cond_2
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p3, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedInstanceFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 580
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getFieldHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestriction(Ljava/util/Set;)V

    goto :goto_3

    .line 583
    :cond_3
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p3, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 584
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestriction(Ljava/util/Set;)V

    goto :goto_4

    .line 587
    :cond_4
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p3, p2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 588
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v1, p3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestriction(Ljava/util/Set;)V

    goto :goto_5

    .line 591
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->finishClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 594
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->close()V

    .line 595
    throw p1
.end method

.method private writeCodeItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Iterable;I)I
    .locals 16
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/io/ByteArrayOutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Ljava/io/ByteArrayOutputStream;",
            "TMethodKey;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v4, p6

    if-nez p5, :cond_0

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1225
    :cond_0
    iget v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numCodeItemItems:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numCodeItemItems:I

    .line 1227
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 1229
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v12

    .line 1231
    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v5, v2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getRegisterCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1233
    sget-object v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    iget-object v6, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v6, v2}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodAccessFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v5

    .line 1234
    iget-object v6, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    iget-object v7, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    iget-object v8, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 1235
    invoke-interface {v8, v2}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getPrototype(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getParameters(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1234
    invoke-interface {v6, v2}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 1237
    invoke-static {v2, v5}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getParameterRegisterCount(Ljava/util/Collection;Z)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    const/4 v13, 0x0

    if-eqz p5, :cond_f

    .line 1240
    invoke-static/range {p4 .. p4}, Lcom/android/tools/smali/dexlib2/writer/util/TryListBuilder;->massageTryBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 1244
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v15, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 1245
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v7

    add-int/2addr v15, v7

    .line 1247
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v7

    iget v7, v7, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 1260
    :cond_2
    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result v6

    goto :goto_1

    .line 1249
    :cond_3
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1250
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 1251
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v8

    .line 1252
    invoke-static {v8}, Lcom/android/tools/smali/dexlib2/util/InstructionUtil;->isInvokePolymorphic(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1253
    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result v6

    goto :goto_1

    .line 1255
    :cond_4
    invoke-static {v8}, Lcom/android/tools/smali/dexlib2/util/InstructionUtil;->isInvokeStatic(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v6

    invoke-static {v7, v6}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getParameterRegisterCount(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)I

    move-result v6

    :goto_1
    if-le v6, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 1268
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1269
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1270
    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1272
    iget-object v2, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    iget-object v4, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v6, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    iget-object v7, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    iget-object v8, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    iget-object v9, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    iget-object v10, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    .line 1273
    invoke-static/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->makeInstructionWriter(Lcom/android/tools/smali/dexlib2/Opcodes;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;)Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;

    move-result-object v2

    .line 1276
    invoke-virtual {v3, v15}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1278
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 1280
    :try_start_0
    sget-object v7, Lcom/android/tools/smali/dexlib2/writer/DexWriter$5;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1390
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    goto/16 :goto_4

    .line 1387
    :pswitch_0
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V

    goto/16 :goto_3

    .line 1384
    :pswitch_1
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V

    goto/16 :goto_3

    .line 1381
    :pswitch_2
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)V

    goto/16 :goto_3

    .line 1378
    :pswitch_3
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)V

    goto/16 :goto_3

    .line 1375
    :pswitch_4
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)V

    goto/16 :goto_3

    .line 1372
    :pswitch_5
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction45cc;)V

    goto/16 :goto_3

    .line 1369
    :pswitch_6
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;)V

    goto/16 :goto_3

    .line 1366
    :pswitch_7
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rmi;)V

    goto/16 :goto_3

    .line 1363
    :pswitch_8
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V

    goto/16 :goto_3

    .line 1360
    :pswitch_9
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35ms;)V

    goto/16 :goto_3

    .line 1357
    :pswitch_a
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;)V

    goto/16 :goto_3

    .line 1354
    :pswitch_b
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V

    goto/16 :goto_3

    .line 1351
    :pswitch_c
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction32x;)V

    goto/16 :goto_3

    .line 1348
    :pswitch_d
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)V

    goto/16 :goto_3

    .line 1345
    :pswitch_e
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31i;)V

    goto/16 :goto_3

    .line 1342
    :pswitch_f
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31c;)V

    goto/16 :goto_3

    .line 1339
    :pswitch_10
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction30t;)V

    goto/16 :goto_3

    .line 1336
    :pswitch_11
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction23x;)V

    goto/16 :goto_3

    .line 1333
    :pswitch_12
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22x;)V

    goto/16 :goto_3

    .line 1330
    :pswitch_13
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;)V

    goto/16 :goto_3

    .line 1327
    :pswitch_14
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22s;)V

    goto/16 :goto_3

    .line 1324
    :pswitch_15
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22cs;)V

    goto :goto_3

    .line 1321
    :pswitch_16
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)V

    goto :goto_3

    .line 1318
    :pswitch_17
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22b;)V

    goto :goto_3

    .line 1315
    :pswitch_18
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21t;)V

    goto :goto_3

    .line 1312
    :pswitch_19
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21s;)V

    goto :goto_3

    .line 1309
    :pswitch_1a
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21lh;)V

    goto :goto_3

    .line 1306
    :pswitch_1b
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;)V

    goto :goto_3

    .line 1303
    :pswitch_1c
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21c;)V

    goto :goto_3

    .line 1300
    :pswitch_1d
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)V

    goto :goto_3

    .line 1297
    :pswitch_1e
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;)V

    goto :goto_3

    .line 1294
    :pswitch_1f
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;)V

    goto :goto_3

    .line 1291
    :pswitch_20
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11x;)V

    goto :goto_3

    .line 1288
    :pswitch_21
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;)V

    goto :goto_3

    .line 1285
    :pswitch_22
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)V

    goto :goto_3

    .line 1282
    :pswitch_23
    move-object v7, v6

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-virtual {v2, v7}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;->write(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_3
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 1390
    :goto_4
    :try_start_1
    const-string v2, "Unsupported instruction format: %s"

    .line 1391
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v13

    invoke-direct {v0, v2, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 1394
    new-instance v2, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v13

    const-string v3, "Error while writing instruction at code offset 0x%x"

    invoke-direct {v2, v0, v3, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 1399
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1400
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 1403
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1404
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 1405
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1407
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    .line 1409
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 1410
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v6

    .line 1411
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v6

    .line 1415
    invoke-virtual {v3, v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1416
    invoke-virtual {v3, v7}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1418
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_c

    .line 1422
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1423
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_9

    .line 1425
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    goto :goto_6

    .line 1428
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1429
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1430
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1434
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 1435
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    mul-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v11

    .line 1440
    :cond_a
    invoke-static {v0, v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeSleb128(Ljava/io/OutputStream;I)V

    .line 1441
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 1442
    iget-object v7, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v7, v6}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getExceptionType(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1444
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v6

    if-eqz v7, :cond_b

    .line 1448
    iget-object v8, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v8, v7}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    .line 1449
    invoke-static {v0, v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    goto :goto_7

    .line 1452
    :cond_b
    invoke-static {v0, v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    goto :goto_7

    .line 1419
    :cond_c
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string v2, "No exception handlers for the try block!"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1458
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1459
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1460
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_e
    return v12

    .line 1465
    :cond_f
    invoke-virtual {v3, v13}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1466
    invoke-virtual {v3, v13}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1467
    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1468
    invoke-virtual {v3, v13}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDebugAndCodeItems(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;)V
    .locals 18
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 1051
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1052
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v2

    iput v2, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugSectionOffset:I

    .line 1054
    new-instance v2, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;I)V

    .line 1056
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    iget-object v4, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 1059
    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 1060
    iget-object v6, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v6, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 1062
    new-instance v6, Lcom/android/tools/smali/util/ChainedIterable;

    invoke-direct {v6, v5, v4}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 1065
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1066
    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 1067
    invoke-interface {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getTryBlocks(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1068
    iget-object v6, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v6, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getInstructions(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v6

    .line 1069
    iget-object v7, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v7, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getDebugItems(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v7

    if-eqz v6, :cond_2

    .line 1071
    iget-object v13, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v13}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->hasJumboIndexes()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1073
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 1074
    invoke-interface {v14}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->CONST_STRING:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v15, v9, :cond_1

    .line 1075
    iget-object v9, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v14, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 1076
    invoke-interface {v14}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v14

    check-cast v14, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    .line 1075
    invoke-interface {v9, v14}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)I

    move-result v9

    const/high16 v14, 0x10000

    if-lt v9, v14, :cond_1

    .line 1084
    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 1085
    invoke-interface {v5, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->makeMutableMethodImplementation(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    move-result-object v5

    .line 1086
    invoke-direct {v1, v5}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fixInstructions(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;)V

    .line 1088
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v6

    .line 1089
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v7

    .line 1090
    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v5

    move-object/from16 v17, v7

    move-object v7, v5

    move-object/from16 v5, v17

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 1094
    :goto_2
    iget-object v9, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v9, v4}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getParameterNames(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-direct {v1, v0, v9, v7}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeDebugItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v7

    .line 1097
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeCodeItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Iterable;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1105
    new-instance v6, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;-><init>(Ljava/lang/Object;ILcom/android/tools/smali/dexlib2/writer/DexWriter$1;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 1100
    new-instance v2, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget-object v3, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 1101
    invoke-interface {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getMethodReference(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v16

    const-string v3, "Exception occurred while writing code_item for method %s"

    invoke-direct {v2, v0, v3, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 1110
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 1111
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    iput v3, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->codeSectionOffset:I

    .line 1113
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    .line 1114
    invoke-virtual {v8, v0}, Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1115
    invoke-virtual {v8}, Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;->close()V

    .line 1117
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;

    .line 1118
    iget-object v3, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    iget-object v4, v2, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;->method:Ljava/lang/Object;

    iget v5, v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->codeSectionOffset:I

    iget v2, v2, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;->codeOffset:I

    add-int/2addr v5, v2

    invoke-interface {v3, v4, v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->setCodeItemOffset(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private writeDebugItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 11
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Ljava/lang/Iterable<",
            "+TStringKey;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 1145
    invoke-static {p2}, Lcom/android/tools/smali/util/IteratorUtils;->size(Ljava/lang/Iterable;)I

    move-result v2

    .line 1147
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, -0x1

    :cond_2
    if-ne v4, v1, :cond_4

    if-eqz p3, :cond_3

    .line 1157
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    return v0

    .line 1161
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    if-eqz p3, :cond_6

    .line 1165
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    .line 1166
    instance-of v6, v5, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    if-eqz v6, :cond_5

    .line 1167
    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;

    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 1173
    :goto_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1174
    new-instance v6, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v7, 0x40

    invoke-direct {v6, v5, v0, v7}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;II)V

    .line 1175
    new-instance v7, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;

    iget-object v8, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-direct {v7, v8, v9, v6}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 1177
    invoke-virtual {v6, v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 1179
    invoke-virtual {v6, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    if-eqz p2, :cond_8

    .line 1182
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    if-ne v8, v2, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 1187
    iget-object v10, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v10, v9}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    .line 1192
    invoke-virtual {v7, v4}, Lcom/android/tools/smali/dexlib2/writer/DebugWriter;->reset(I)V

    .line 1194
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    .line 1195
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v2, v7, p3}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->writeDebugItem(Lcom/android/tools/smali/dexlib2/writer/DebugWriter;Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)V

    goto :goto_4

    .line 1199
    :cond_9
    invoke-virtual {v6, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    .line 1201
    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->flush()V

    .line 1202
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 1203
    new-instance p3, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;

    invoke-direct {p3, p2}, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;-><init>([B)V

    .line 1204
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugInfoCaches:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p3, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_a

    return v0

    .line 1208
    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write([B)V

    .line 1209
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugInfoCaches:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    return v3
.end method

.method private writeEncodedArrays(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexWriter$1;)V

    .line 863
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    .line 865
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 866
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getEncodedValueList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 868
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 869
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 870
    invoke-virtual {p0, v0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeEncodedFields(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Ljava/util/Collection<",
            "+TFieldKey;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 821
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getFieldIndex(Ljava/lang/Object;)I

    move-result v2

    .line 822
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v3, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getFieldHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 823
    iput-boolean v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hasHiddenApiRestrictions:Z

    :cond_0
    sub-int v0, v2, v0

    .line 825
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 826
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getFieldAccessFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeEncodedMethods(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Ljava/util/Collection<",
            "+TMethodKey;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v2

    .line 836
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v3, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodHiddenApiRestrictions(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 837
    iput-boolean v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hasHiddenApiRestrictions:Z

    :cond_0
    sub-int v0, v2, v0

    .line 839
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 840
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getMethodAccessFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 841
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getCodeItemOffset(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeFields(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 521
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 526
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 527
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 528
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getName(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeHeader(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->getMagicForApi(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write([B)V

    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/16 v1, 0x14

    .line 1599
    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write([B)V

    .line 1601
    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/16 v1, 0x70

    .line 1602
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const v1, 0x12345678

    .line 1603
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1606
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1607
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1610
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->mapSectionOffset:I

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    .line 1615
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    .line 1616
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    .line 1617
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    .line 1618
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    .line 1619
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V

    sub-int/2addr p3, p2

    .line 1622
    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1623
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void
.end method

.method private writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1541
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 1542
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->mapSectionOffset:I

    .line 1543
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->calcNumItems()I

    move-result v0

    .line 1545
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1548
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1549
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1550
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSectionOffset:I

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1551
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSectionOffset:I

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1552
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    const/4 v3, 0x4

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1553
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSectionOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1554
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    const/4 v3, 0x6

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1555
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSectionOffset:I

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1556
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSectionOffset:I

    const/16 v3, 0x8

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1560
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    const/16 v3, 0x2002

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1561
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    const/16 v3, 0x1001

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1562
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    const/16 v3, 0x2005

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1564
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    const/16 v3, 0x2004

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1565
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    .line 1566
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    const/16 v3, 0x1003

    .line 1565
    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1568
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    const/16 v3, 0x1002

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1569
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    const/16 v3, 0x2006

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1571
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->debugSectionOffset:I

    const/16 v3, 0x2003

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1572
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numCodeItemItems:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->codeSectionOffset:I

    const/16 v3, 0x2001

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1573
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->numClassDataItems:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    const/16 v3, 0x2000

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    .line 1575
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->shouldWriteHiddenApiRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xf000

    .line 1576
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hiddenApiRestrictionsOffset:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    :cond_0
    const/16 v0, 0x1000

    .line 1579
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->mapSectionOffset:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V

    return-void
.end method

.method private writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;III)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_0

    .line 1584
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    const/4 p2, 0x0

    .line 1585
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 1586
    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 1587
    invoke-virtual {p1, p4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    :cond_0
    return-void
.end method

.method private writeMethodHandles(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSectionOffset:I

    .line 785
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    .line 786
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    .line 788
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 789
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 791
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 808
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 809
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Invalid method handle type: %d"

    invoke-direct {p1, v0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 804
    :pswitch_0
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 805
    invoke-interface {v5, v2}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object v2

    .line 804
    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    .line 796
    :pswitch_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 797
    invoke-interface {v5, v2}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getFieldReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object v2

    .line 796
    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    .line 812
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 813
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeMethods(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSectionOffset:I

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 542
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 543
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getPrototype(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    .line 544
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getName(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeProtos(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSectionOffset:I

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 505
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    .line 510
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getShorty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 511
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 512
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getParameters(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeSectionInfo(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1627
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    if-lez p2, :cond_0

    .line 1629
    invoke-virtual {p1, p3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 1631
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void
.end method

.method private writeStrings(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    .line 472
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    sget-object v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 480
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 482
    invoke-virtual {p2, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeString(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTypeLists(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 848
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    .line 849
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 850
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->align()V

    .line 851
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/tools/smali/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 854
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 855
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 856
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v3, v2}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeTypes(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSectionOffset:I

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    sget-object v1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldReferences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    sget-object v3, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMethodReferences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 322
    sget-object v3, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {v3, v2}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract getSectionProvider()Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
            "TStringKey;TStringRef;TTypeKey;TTypeRef;TProtoRefKey;TFieldRefKey;TMethodRefKey;TClassKey;TCallSiteKey;TMethodHandleKey;TAnnotationKey;TAnnotationSetKey;TType",
            "ListKey;",
            "TFieldKey;TMethodKey;TEncodedArrayKey;TEncodedValue;TAnnotationElement;TStringSectionType;TTypeSectionType;TProtoSectionType;TFieldSectionType;TMethodSectionType;TClassSectionType;TCallSiteSectionType;TMethodHandleSectionType;TType",
            "ListSectionType;",
            "TAnnotationSectionType;TAnnotationSetSectionType;TEncodedArraySectionType;>.SectionProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public getTypeReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasOverflowed()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->hasOverflowed(I)Z

    move-result v0

    return v0
.end method

.method public hasOverflowed(I)Z
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->overflowableSections:[Lcom/android/tools/smali/dexlib2/writer/IndexSection;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 365
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/writer/IndexSection;->getItemCount()I

    move-result v4

    if-le v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected abstract writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
            "TStringKey;TStringRef;TTypeKey;TTypeRef;TProtoRefKey;TFieldRefKey;TMethodRefKey;TClassKey;TCallSiteKey;TMethodHandleKey;TAnnotationKey;TAnnotationSetKey;TType",
            "ListKey;",
            "TFieldKey;TMethodKey;TEncodedArrayKey;TEncodedValue;TAnnotationElement;TStringSectionType;TTypeSectionType;TProtoSectionType;TFieldSectionType;TMethodSectionType;TClassSectionType;TCallSiteSectionType;TMethodHandleSectionType;TType",
            "ListSectionType;",
            "TAnnotationSectionType;TAnnotationSetSectionType;TEncodedArraySectionType;>.InternalEncodedValueWriter;TEncodedValue;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->getFactory()Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;)V

    return-void
.end method

.method public writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->getDataSectionOffset()I

    move-result v0

    const/4 v1, 0x0

    .line 379
    invoke-static {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/16 v2, 0x70

    .line 380
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 381
    :try_start_2
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 382
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeStrings(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 383
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeTypes(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 384
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeTypeLists(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 385
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeProtos(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 386
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeFields(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 387
    invoke-direct {p0, v2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMethods(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 390
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 391
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItemCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    .line 392
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;->getItemCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    .line 390
    invoke-static {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 393
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMethodHandles(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_0

    .line 394
    :try_start_5
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    .line 397
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedArrays(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 400
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    .line 401
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/writer/ClassSection;->getItemCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v4, v5

    .line 400
    invoke-static {p1, v4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->outputAt(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 402
    :try_start_6
    invoke-direct {p0, v4}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeCallSites(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_1

    .line 403
    :try_start_7
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    .line 405
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeAnnotations(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 406
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeAnnotationSets(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 407
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeAnnotationSetRefs(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 408
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeAnnotationDirectories(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 409
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;->makeDeferredOutputStream()Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeDebugAndCodeItems(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;)V

    .line 410
    invoke-direct {p0, p1, v2, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeClasses(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 412
    invoke-direct {p0, v3}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeMapItem(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    .line 413
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p2

    invoke-direct {p0, v1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeHeader(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_2

    .line 414
    :try_start_8
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_2
    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :cond_3
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    .line 415
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->updateSignature(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V

    .line 416
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->updateChecksum(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 418
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->close()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz v4, :cond_5

    .line 400
    :try_start_b
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_2
    move-exception p2

    if-eqz v4, :cond_6

    .line 390
    :try_start_d
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_e
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz v3, :cond_7

    .line 379
    :try_start_f
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p2

    if-eqz v2, :cond_8

    :try_start_11
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    :try_start_12
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception p2

    if-eqz v1, :cond_9

    :try_start_13
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_4

    :catchall_9
    move-exception v0

    :try_start_14
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception p2

    .line 418
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;->close()V

    .line 419
    throw p2
.end method
