.class public Lcom/android/tools/smali/dexlib2/Opcodes;
.super Ljava/lang/Object;
.source "Opcodes.java"


# instance fields
.field public final api:I

.field public final artVersion:I

.field private final opcodeValues:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodesByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodesByValue:[Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .locals 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 51
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/Opcode;

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByValue:[Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 85
    iput p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    .line 86
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/VersionMap;->mapApiToArtVersion(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->artVersion:I

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x27

    if-ge p2, v0, :cond_1

    .line 88
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/VersionMap;->mapArtVersionToApi(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    .line 89
    iput p2, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->artVersion:I

    goto :goto_0

    .line 91
    :cond_1
    iput p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    .line 92
    iput p2, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->artVersion:I

    .line 95
    :goto_0
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/Opcodes;->isArt()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    iget p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->artVersion:I

    goto :goto_1

    .line 102
    :cond_2
    iget p1, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->api:I

    .line 105
    :goto_1
    invoke-static {}, Lcom/android/tools/smali/dexlib2/Opcode;->values()[Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 108
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/Opcodes;->isArt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, v2, Lcom/android/tools/smali/dexlib2/Opcode;->artVersionToValueMap:Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    goto :goto_3

    .line 111
    :cond_3
    iget-object v3, v2, Lcom/android/tools/smali/dexlib2/Opcode;->apiToValueMap:Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    .line 114
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    if-eqz v3, :cond_5

    .line 116
    iget-object v4, v2, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    iget-boolean v4, v4, Lcom/android/tools/smali/dexlib2/Format;->isPayloadFormat:Z

    if-nez v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByValue:[Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    aput-object v2, v4, v5

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static forApi(I)Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    new-instance v0, Lcom/android/tools/smali/dexlib2/Opcodes;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/Opcodes;-><init>(II)V

    return-object v0
.end method

.method public static forArtVersion(I)Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    new-instance v0, Lcom/android/tools/smali/dexlib2/Opcodes;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/Opcodes;-><init>(II)V

    return-object v0
.end method

.method public static forDexVersion(I)Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/VersionMap;->mapDexVersionToApi(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    new-instance p0, Lcom/android/tools/smali/dexlib2/Opcodes;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/dexlib2/Opcodes;-><init>(II)V

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported dex version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x14

    .line 80
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/Opcodes;->forApi(I)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOpcodeByName(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/Opcode;

    return-object p1
.end method

.method public getOpcodeByValue(I)Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x300

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodesByValue:[Lcom/android/tools/smali/dexlib2/Opcode;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 141
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_1
    sget-object p1, Lcom/android/tools/smali/dexlib2/Opcode;->ARRAY_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object p1

    .line 136
    :cond_2
    sget-object p1, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object p1

    .line 134
    :cond_3
    sget-object p1, Lcom/android/tools/smali/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object p1
.end method

.method public getOpcodeValue(Lcom/android/tools/smali/dexlib2/Opcode;)Ljava/lang/Short;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public isArt()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/tools/smali/dexlib2/Opcodes;->artVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
