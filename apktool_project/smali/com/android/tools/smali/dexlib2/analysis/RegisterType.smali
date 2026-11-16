.class public Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
.super Ljava/lang/Object;
.source "RegisterType.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BOOLEAN:B = 0x4t

.field public static final BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final BYTE:B = 0x5t

.field public static final BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final CATEGORY_NAMES:[Ljava/lang/String;

.field public static final CHAR:B = 0x9t

.field public static final CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final CONFLICTED:B = 0x13t

.field public static final CONFLICTED_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final DOUBLE_HI:B = 0xft

.field public static final DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final DOUBLE_LO:B = 0xet

.field public static final DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final FLOAT:B = 0xbt

.field public static final FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final INTEGER:B = 0xat

.field public static final INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final LONG_HI:B = 0xdt

.field public static final LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final LONG_LO:B = 0xct

.field public static final LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final NULL:B = 0x2t

.field public static final NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final ONE:B = 0x3t

.field public static final ONE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final POS_BYTE:B = 0x6t

.field public static final POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final POS_SHORT:B = 0x8t

.field public static final POS_SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final REFERENCE:B = 0x12t

.field public static final SHORT:B = 0x7t

.field public static final SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final UNINIT:B = 0x1t

.field public static final UNINIT_REF:B = 0x10t

.field public static final UNINIT_THIS:B = 0x11t

.field public static final UNINIT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field public static final UNKNOWN:B

.field public static final UNKNOWN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

.field protected static mergeTable:[[B


# instance fields
.field public final category:B

.field public final type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 124
    const-string v19, "Reference"

    const-string v20, "Conflicted"

    const-string v1, "Unknown"

    const-string v2, "Uninit"

    const-string v3, "Null"

    const-string v4, "One"

    const-string v5, "Boolean"

    const-string v6, "Byte"

    const-string v7, "PosByte"

    const-string v8, "Short"

    const-string v9, "PosShort"

    const-string v10, "Char"

    const-string v11, "Integer"

    const-string v12, "Float"

    const-string v13, "LongLo"

    const-string v14, "LongHi"

    const-string v15, "DoubleLo"

    const-string v16, "DoubleHi"

    const-string v17, "UninitRef"

    const-string v18, "UninitThis"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    const/16 v0, 0x14

    .line 150
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    new-array v10, v0, [B

    fill-array-data v10, :array_9

    new-array v11, v0, [B

    fill-array-data v11, :array_a

    new-array v12, v0, [B

    fill-array-data v12, :array_b

    new-array v13, v0, [B

    fill-array-data v13, :array_c

    new-array v14, v0, [B

    fill-array-data v14, :array_d

    new-array v15, v0, [B

    fill-array-data v15, :array_e

    move-object/from16 v16, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_10

    move-object/from16 v18, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_11

    move-object/from16 v19, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    move-object/from16 v20, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_13

    new-array v0, v0, [[B

    move-object/from16 v21, v0

    const/4 v0, 0x0

    aput-object v16, v21, v0

    const/4 v0, 0x1

    aput-object v2, v21, v0

    const/4 v2, 0x2

    aput-object v3, v21, v2

    const/4 v3, 0x3

    aput-object v4, v21, v3

    const/4 v4, 0x4

    aput-object v5, v21, v4

    const/4 v5, 0x5

    aput-object v6, v21, v5

    const/4 v6, 0x6

    aput-object v7, v21, v6

    const/4 v7, 0x7

    aput-object v8, v21, v7

    const/16 v8, 0x8

    aput-object v9, v21, v8

    const/16 v9, 0x9

    aput-object v10, v21, v9

    const/16 v10, 0xa

    aput-object v11, v21, v10

    const/16 v11, 0xb

    aput-object v12, v21, v11

    const/16 v12, 0xc

    aput-object v13, v21, v12

    const/16 v13, 0xd

    aput-object v14, v21, v13

    const/16 v14, 0xe

    aput-object v15, v21, v14

    const/16 v15, 0xf

    aput-object v17, v21, v15

    const/16 v17, 0x10

    aput-object v18, v21, v17

    const/16 v17, 0x11

    aput-object v19, v21, v17

    const/16 v17, 0x12

    aput-object v20, v21, v17

    const/16 v15, 0x13

    aput-object v1, v21, v15

    sput-object v21, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->mergeTable:[[B

    .line 176
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    const/4 v15, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v14, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 177
    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v1, v0, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->UNINIT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 178
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v2, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 179
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v3, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->ONE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 180
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v4, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 181
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v5, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 182
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v6, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 183
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v7, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 184
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v8, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 185
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v9, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 186
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v10, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 187
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v11, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 188
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v12, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 189
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v13, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 190
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    const/16 v1, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 191
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 192
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    const/16 v1, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CONFLICTED_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x13t
        0x2t
        0x4t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x3t
        0x13t
        0x4t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0x13t
        0x4t
        0x4t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_5
    .array-data 1
        0x5t
        0x13t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x7t
        0x7t
        0xat
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_6
    .array-data 1
        0x6t
        0x13t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_7
    .array-data 1
        0x7t
        0x13t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xat
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_8
    .array-data 1
        0x8t
        0x13t
        0x8t
        0x8t
        0x8t
        0x7t
        0x8t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_9
    .array-data 1
        0x9t
        0x13t
        0x9t
        0x9t
        0x9t
        0xat
        0x9t
        0xat
        0x9t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x13t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_b
    .array-data 1
        0xbt
        0x13t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_c
    .array-data 1
        0xct
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xct
        0x13t
        0xct
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_d
    .array-data 1
        0xdt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xdt
        0x13t
        0xdt
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_e
    .array-data 1
        0xet
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xct
        0x13t
        0xet
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xdt
        0x13t
        0xft
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_10
    .array-data 1
        0x10t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_11
    .array-data 1
        0x11t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x11t
        0x13t
        0x13t
    .end array-data

    :array_12
    .array-data 1
        0x12t
        0x13t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x13t
    .end array-data

    :array_13
    .array-data 1
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data
.end method

.method private constructor <init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-byte p1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    .line 50
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    return-void
.end method

.method public static getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 348
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;-><init>(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)V

    return-object v0

    .line 343
    :pswitch_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 341
    :pswitch_1
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 339
    :pswitch_2
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 337
    :pswitch_3
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 335
    :pswitch_4
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 333
    :pswitch_5
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 331
    :pswitch_6
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 329
    :pswitch_7
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 327
    :pswitch_8
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 325
    :pswitch_9
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 323
    :pswitch_a
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 321
    :pswitch_b
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 319
    :pswitch_c
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->ONE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 317
    :pswitch_d
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 315
    :pswitch_e
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->UNINIT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 313
    :pswitch_f
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 345
    :cond_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CONFLICTED_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getRegisterType(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 3
    .param p0    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_3

    const/16 v2, 0x49

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    .line 237
    new-instance p0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 232
    :pswitch_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 224
    :pswitch_1
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 220
    :pswitch_2
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 218
    :cond_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 230
    :cond_1
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 226
    :cond_2
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 222
    :cond_3
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_4
    const/16 v0, 0x12

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    .line 228
    :cond_5
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRegisterTypeForLiteral(I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, -0x8000

    if-ge p0, v0, :cond_0

    .line 244
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_0
    const/16 v0, -0x80

    if-ge p0, v0, :cond_1

    .line 247
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_1
    if-gez p0, :cond_2

    .line 250
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    .line 253
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->NULL_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 256
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->ONE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_4
    const/16 v0, 0x80

    if-ge p0, v0, :cond_5

    .line 259
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_5
    const v0, 0x8000

    if-ge p0, v0, :cond_6

    .line 262
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_6
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_7

    .line 265
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0

    .line 267
    :cond_7
    sget-object p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    return-object p0
.end method

.method public static getWideRegisterType(Ljava/lang/CharSequence;Z)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 4
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xc

    .line 199
    invoke-static {p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xd

    .line 201
    invoke-static {p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    .line 210
    :cond_1
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Cannot use this method for narrow register type: %s"

    invoke-direct {p1, p0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0xe

    .line 205
    invoke-static {p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0xf

    .line 207
    invoke-static {p0, v3}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    .line 75
    iget-byte v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    iget-byte v3, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_5

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-byte v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public merge(Lcom/android/tools/smali/dexlib2/analysis/RegisterType;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 272
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->mergeTable:[[B

    iget-byte v1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    aget-object v0, v0, v1

    iget-byte v2, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    aget-byte v0, v0, v2

    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v1, :cond_1

    .line 282
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v2, :cond_4

    .line 283
    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-eq v0, v2, :cond_7

    const/16 v2, 0x11

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    .line 299
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    return-object p0

    .line 302
    :cond_5
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 306
    :cond_6
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->getRegisterType(BLcom/android/tools/smali/dexlib2/analysis/TypeProto;)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    :goto_3
    return-object p1

    :cond_8
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 60
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->category:B

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/RegisterType;->type:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x29

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method
