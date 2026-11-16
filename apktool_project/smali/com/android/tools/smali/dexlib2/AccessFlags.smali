.class public final enum Lcom/android/tools/smali/dexlib2/AccessFlags;
.super Ljava/lang/Enum;
.source "AccessFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/smali/dexlib2/AccessFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum ANNOTATION:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum BRIDGE:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum DECLARED_SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum ENUM:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum FINAL:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum INTERFACE:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum NATIVE:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum PROTECTED:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum STRICTFP:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum SYNTHETIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum TRANSIENT:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum VARARGS:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field public static final enum VOLATILE:Lcom/android/tools/smali/dexlib2/AccessFlags;

.field private static accessFlagsByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/AccessFlags;",
            ">;"
        }
    .end annotation
.end field

.field private static final allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;


# instance fields
.field private accessFlagName:Ljava/lang/String;

.field private validForClass:Z

.field private validForField:Z

.field private validForMethod:Z

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 37
    new-instance v0, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "public"

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 38
    new-instance v1, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v8, 0x1

    const-string v2, "PRIVATE"

    const/4 v4, 0x2

    const-string v5, "private"

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 39
    new-instance v2, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v9, 0x1

    const-string v3, "PROTECTED"

    const/4 v5, 0x4

    const-string v6, "protected"

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->PROTECTED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 40
    new-instance v3, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v10, 0x1

    const-string v4, "STATIC"

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "static"

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 41
    new-instance v4, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v11, 0x1

    const-string v5, "FINAL"

    const/4 v6, 0x4

    const/16 v7, 0x10

    const-string v8, "final"

    invoke-direct/range {v4 .. v11}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v4, Lcom/android/tools/smali/dexlib2/AccessFlags;->FINAL:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 42
    new-instance v5, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v12, 0x0

    const-string v6, "SYNCHRONIZED"

    const/4 v7, 0x5

    const/16 v8, 0x20

    const-string v9, "synchronized"

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 43
    new-instance v6, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v13, 0x1

    const-string v7, "VOLATILE"

    const/4 v8, 0x6

    const/16 v9, 0x40

    const-string v10, "volatile"

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v6, Lcom/android/tools/smali/dexlib2/AccessFlags;->VOLATILE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 44
    new-instance v7, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v14, 0x0

    const-string v8, "BRIDGE"

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "bridge"

    invoke-direct/range {v7 .. v14}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v7, Lcom/android/tools/smali/dexlib2/AccessFlags;->BRIDGE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 45
    new-instance v8, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/4 v15, 0x1

    const-string v9, "TRANSIENT"

    const/16 v10, 0x8

    const/16 v11, 0x80

    const-string v12, "transient"

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v8, Lcom/android/tools/smali/dexlib2/AccessFlags;->TRANSIENT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 46
    new-instance v9, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v16, 0x0

    const-string v10, "VARARGS"

    const/16 v11, 0x9

    const/16 v12, 0x80

    const-string v13, "varargs"

    invoke-direct/range {v9 .. v16}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v9, Lcom/android/tools/smali/dexlib2/AccessFlags;->VARARGS:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 47
    new-instance v10, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v11, "NATIVE"

    const/16 v12, 0xa

    const/16 v13, 0x100

    const-string v14, "native"

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v10, Lcom/android/tools/smali/dexlib2/AccessFlags;->NATIVE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 48
    new-instance v11, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v18, 0x0

    const-string v12, "INTERFACE"

    const/16 v13, 0xb

    const/16 v14, 0x200

    const-string v15, "interface"

    invoke-direct/range {v11 .. v18}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v11, Lcom/android/tools/smali/dexlib2/AccessFlags;->INTERFACE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 49
    new-instance v12, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v13, "ABSTRACT"

    const/16 v14, 0xc

    const/16 v15, 0x400

    const-string v16, "abstract"

    const/16 v17, 0x1

    invoke-direct/range {v12 .. v19}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v12, Lcom/android/tools/smali/dexlib2/AccessFlags;->ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 50
    new-instance v13, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v14, "STRICTFP"

    const/16 v15, 0xd

    const/16 v16, 0x800

    const-string v17, "strictfp"

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v13, Lcom/android/tools/smali/dexlib2/AccessFlags;->STRICTFP:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 51
    new-instance v14, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const-string v15, "SYNTHETIC"

    const/16 v16, 0xe

    const/16 v17, 0x1000

    const-string v18, "synthetic"

    invoke-direct/range {v14 .. v21}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v14, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNTHETIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 52
    new-instance v15, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v16, "ANNOTATION"

    const/16 v17, 0xf

    const/16 v18, 0x2000

    const-string v19, "annotation"

    invoke-direct/range {v15 .. v22}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v15, Lcom/android/tools/smali/dexlib2/AccessFlags;->ANNOTATION:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 53
    new-instance v16, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v23, 0x1

    const-string v17, "ENUM"

    const/16 v18, 0x10

    const/16 v19, 0x4000

    const-string v20, "enum"

    const/16 v21, 0x1

    invoke-direct/range {v16 .. v23}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v16, Lcom/android/tools/smali/dexlib2/AccessFlags;->ENUM:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 54
    new-instance v17, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v24, 0x0

    const-string v18, "CONSTRUCTOR"

    const/16 v19, 0x11

    const/high16 v20, 0x10000

    const-string v21, "constructor"

    invoke-direct/range {v17 .. v24}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v17, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 55
    new-instance v18, Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-string v19, "DECLARED_SYNCHRONIZED"

    const/16 v20, 0x12

    const/high16 v21, 0x20000

    const-string v22, "declared-synchronized"

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v25}, Lcom/android/tools/smali/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v18, Lcom/android/tools/smali/dexlib2/AccessFlags;->DECLARED_SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-object/from16 v19, v0

    const/16 v0, 0x13

    .line 35
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/AccessFlags;

    const/16 v20, 0x0

    aput-object v19, v0, v20

    const/16 v19, 0x1

    aput-object v1, v0, v19

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    aput-object v7, v0, v1

    const/16 v1, 0x8

    aput-object v8, v0, v1

    const/16 v1, 0x9

    aput-object v9, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v11, v0, v1

    const/16 v1, 0xc

    aput-object v12, v0, v1

    const/16 v1, 0xd

    aput-object v13, v0, v1

    const/16 v1, 0xe

    aput-object v14, v0, v1

    const/16 v1, 0xf

    aput-object v15, v0, v1

    const/16 v1, 0x10

    aput-object v16, v0, v1

    const/16 v1, 0x11

    aput-object v17, v0, v1

    const/16 v1, 0x12

    aput-object v18, v0, v1

    sput-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->$VALUES:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 69
    invoke-static {}, Lcom/android/tools/smali/dexlib2/AccessFlags;->values()[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 73
    sget-object v4, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    .line 80
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    .line 81
    iput-boolean p5, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForClass:Z

    .line 82
    iput-boolean p6, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForMethod:Z

    .line 83
    iput-boolean p7, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForField:Z

    return-void
.end method

.method private static formatAccessFlags([Lcom/android/tools/smali/dexlib2/AccessFlags;)Ljava/lang/String;
    .locals 5

    .line 110
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 111
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 116
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_1
    array-length p0, p0

    if-lez p0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 122
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForClass(I)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForClass(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->formatAccessFlags([Lcom/android/tools/smali/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForField(I)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->formatAccessFlags([Lcom/android/tools/smali/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForMethod(I)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForMethod(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->formatAccessFlags([Lcom/android/tools/smali/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccessFlag(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 1

    .line 174
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/AccessFlags;

    return-object p0
.end method

.method public static getAccessFlagsForClass(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 7

    .line 92
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 93
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForClass:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    new-array v0, v4, [Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 100
    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 101
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForClass:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 102
    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getAccessFlagsForField(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 7

    .line 153
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 154
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForField:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    new-array v0, v4, [Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 161
    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 162
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForField:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 163
    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getAccessFlagsForMethod(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 7

    .line 131
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 132
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForMethod:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    new-array v0, v4, [Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 139
    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->allFlags:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 140
    iget-boolean v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->validForMethod:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    .line 141
    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 1

    .line 35
    const-class v0, Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/AccessFlags;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/smali/dexlib2/AccessFlags;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->$VALUES:[Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v0}, [Lcom/android/tools/smali/dexlib2/AccessFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/smali/dexlib2/AccessFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    return v0
.end method

.method public isSet(I)Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    return-object v0
.end method
