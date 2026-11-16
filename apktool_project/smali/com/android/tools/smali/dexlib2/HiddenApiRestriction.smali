.class public final enum Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;
.super Ljava/lang/Enum;
.source "HiddenApiRestriction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum BLACKLIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum CORE_PLATFORM_API:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum GREYLIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum GREYLIST_MAX_O:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum GREYLIST_MAX_P:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum GREYLIST_MAX_Q:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum GREYLIST_MAX_R:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field private static final HIDDENAPI_FLAG_MASK:I = 0x7

.field public static final enum TEST_API:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field public static final enum WHITELIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field private static final domainSpecificApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field private static final hiddenApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

.field private static final hiddenApiRestrictionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isDomainSpecificApiFlag:Z

.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 42
    new-instance v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v4, "whitelist"

    const/4 v5, 0x0

    const-string v1, "WHITELIST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->WHITELIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 43
    new-instance v1, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v5, "greylist"

    const/4 v6, 0x0

    const-string v2, "GREYLIST"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->GREYLIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 44
    new-instance v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v6, "blacklist"

    const/4 v7, 0x0

    const-string v3, "BLACKLIST"

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->BLACKLIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 45
    new-instance v3, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v7, "greylist-max-o"

    const/4 v8, 0x0

    const-string v4, "GREYLIST_MAX_O"

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->GREYLIST_MAX_O:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 46
    new-instance v4, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v8, "greylist-max-p"

    const/4 v9, 0x0

    const-string v5, "GREYLIST_MAX_P"

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v4, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->GREYLIST_MAX_P:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 47
    new-instance v5, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v9, "greylist-max-q"

    const/4 v10, 0x0

    const-string v6, "GREYLIST_MAX_Q"

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v5, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->GREYLIST_MAX_Q:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 48
    new-instance v6, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v10, "greylist-max-r"

    const/4 v11, 0x0

    const-string v7, "GREYLIST_MAX_R"

    const/4 v8, 0x6

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->GREYLIST_MAX_R:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 49
    new-instance v7, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v11, "core-platform-api"

    const/4 v12, 0x1

    const-string v8, "CORE_PLATFORM_API"

    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-direct/range {v7 .. v12}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v7, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->CORE_PLATFORM_API:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 50
    new-instance v8, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const-string v12, "test-api"

    const/4 v13, 0x1

    const-string v9, "TEST_API"

    const/16 v11, 0x10

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v8, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->TEST_API:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const/16 v9, 0x9

    .line 41
    new-array v9, v9, [Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    const/4 v12, 0x2

    aput-object v2, v9, v12

    const/4 v13, 0x3

    aput-object v3, v9, v13

    const/4 v14, 0x4

    aput-object v4, v9, v14

    const/4 v15, 0x5

    aput-object v5, v9, v15

    const/16 v16, 0x6

    aput-object v6, v9, v16

    const/16 v17, 0x0

    const/4 v10, 0x7

    aput-object v7, v9, v10

    const/16 v18, 0x8

    aput-object v8, v9, v18

    sput-object v9, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->$VALUES:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 52
    new-array v9, v10, [Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    aput-object v0, v9, v17

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    aput-object v4, v9, v14

    aput-object v5, v9, v15

    aput-object v6, v9, v16

    sput-object v9, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->hiddenApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 62
    new-array v0, v12, [Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    aput-object v7, v0, v17

    aput-object v8, v0, v11

    sput-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->domainSpecificApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->hiddenApiRestrictionsByName:Ljava/util/Map;

    .line 71
    invoke-static {}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->values()[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    move-result-object v0

    array-length v1, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v2, v0, v10

    .line 72
    sget-object v3, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->hiddenApiRestrictionsByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    .line 84
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->name:Ljava/lang/String;

    .line 85
    iput-boolean p5, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->isDomainSpecificApiFlag:Z

    return-void
.end method

.method public static combineFlags(Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;)I"
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 140
    iget-boolean v3, v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->isDomainSpecificApiFlag:Z

    if-eqz v3, :cond_0

    .line 141
    iget v2, v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 148
    iget v1, v2, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot combine multiple flags for hidden api restrictions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v0
.end method

.method public static forName(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->hiddenApiRestrictionsByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    return-object p0
.end method

.method public static formatHiddenRestrictions(I)Ljava/lang/String;
    .locals 2

    .line 127
    const-string v0, "|"

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 128
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->getAllFlags(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    .line 129
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/StringJoiner;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllFlags(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->hiddenApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    and-int/lit8 v1, p0, 0x7

    aget-object v0, v0, v1

    .line 110
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    and-int/lit8 v2, p0, -0x8

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->domainSpecificApiFlags:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 119
    invoke-virtual {v4, p0}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;
    .locals 1

    .line 41
    const-class v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->$VALUES:[Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    invoke-virtual {v0}, [Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    return v0
.end method

.method public isDomainSpecificApiFlag()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->isDomainSpecificApiFlag:Z

    return v0
.end method

.method public isSet(I)Z
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->isDomainSpecificApiFlag:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    and-int/lit8 p1, p1, 0x7

    .line 100
    iget v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->value:I

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->name:Ljava/lang/String;

    return-object v0
.end method
