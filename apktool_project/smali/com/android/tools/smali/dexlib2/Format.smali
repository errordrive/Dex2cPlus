.class public final enum Lcom/android/tools/smali/dexlib2/Format;
.super Ljava/lang/Enum;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/smali/dexlib2/Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum ArrayPayload:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format10t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format10x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format11n:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format11x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format12x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format20bc:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format20t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format21c:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format21ih:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format21lh:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format21s:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format21t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22b:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22c:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22cs:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22s:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format22x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format23x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format30t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format31c:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format31i:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format31t:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format32x:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format35c:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format35mi:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format35ms:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format3rc:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format3rmi:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format3rms:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format45cc:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format4rcc:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum Format51l:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum PackedSwitchPayload:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum SparseSwitchPayload:Lcom/android/tools/smali/dexlib2/Format;

.field public static final enum UnresolvedOdexInstruction:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field public final isPayloadFormat:Z

.field public final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 34
    new-instance v0, Lcom/android/tools/smali/dexlib2/Format;

    const-string v1, "Format10t"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format10t:Lcom/android/tools/smali/dexlib2/Format;

    .line 35
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v4, "Format10x"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format10x:Lcom/android/tools/smali/dexlib2/Format;

    .line 36
    new-instance v4, Lcom/android/tools/smali/dexlib2/Format;

    const-string v6, "Format11n"

    invoke-direct {v4, v6, v3, v3}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/smali/dexlib2/Format;->Format11n:Lcom/android/tools/smali/dexlib2/Format;

    .line 37
    new-instance v6, Lcom/android/tools/smali/dexlib2/Format;

    const-string v7, "Format11x"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v3}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/tools/smali/dexlib2/Format;->Format11x:Lcom/android/tools/smali/dexlib2/Format;

    .line 38
    new-instance v7, Lcom/android/tools/smali/dexlib2/Format;

    const-string v9, "Format12x"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/tools/smali/dexlib2/Format;->Format12x:Lcom/android/tools/smali/dexlib2/Format;

    .line 39
    new-instance v9, Lcom/android/tools/smali/dexlib2/Format;

    const-string v11, "Format20bc"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/tools/smali/dexlib2/Format;->Format20bc:Lcom/android/tools/smali/dexlib2/Format;

    .line 40
    new-instance v11, Lcom/android/tools/smali/dexlib2/Format;

    const-string v13, "Format20t"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/tools/smali/dexlib2/Format;->Format20t:Lcom/android/tools/smali/dexlib2/Format;

    .line 41
    new-instance v13, Lcom/android/tools/smali/dexlib2/Format;

    const-string v15, "Format21c"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/tools/smali/dexlib2/Format;->Format21c:Lcom/android/tools/smali/dexlib2/Format;

    .line 42
    new-instance v15, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v17, 0x7

    const-string v2, "Format21ih"

    const/16 v18, 0x2

    const/16 v3, 0x8

    invoke-direct {v15, v2, v3, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/tools/smali/dexlib2/Format;->Format21ih:Lcom/android/tools/smali/dexlib2/Format;

    .line 43
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v19, 0x3

    const-string v8, "Format21lh"

    const/16 v20, 0x5

    const/16 v12, 0x9

    invoke-direct {v2, v8, v12, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format21lh:Lcom/android/tools/smali/dexlib2/Format;

    .line 44
    new-instance v8, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v21, 0x9

    const-string v12, "Format21s"

    const/16 v5, 0xa

    invoke-direct {v8, v12, v5, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/tools/smali/dexlib2/Format;->Format21s:Lcom/android/tools/smali/dexlib2/Format;

    .line 45
    new-instance v12, Lcom/android/tools/smali/dexlib2/Format;

    const-string v5, "Format21t"

    const/16 v3, 0xb

    invoke-direct {v12, v5, v3, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/tools/smali/dexlib2/Format;->Format21t:Lcom/android/tools/smali/dexlib2/Format;

    .line 46
    new-instance v5, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v25, 0xb

    const-string v3, "Format22b"

    const/16 v14, 0xc

    invoke-direct {v5, v3, v14, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/tools/smali/dexlib2/Format;->Format22b:Lcom/android/tools/smali/dexlib2/Format;

    .line 47
    new-instance v3, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v27, 0xc

    const-string v14, "Format22c"

    move-object/from16 v28, v0

    const/16 v0, 0xd

    invoke-direct {v3, v14, v0, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/smali/dexlib2/Format;->Format22c:Lcom/android/tools/smali/dexlib2/Format;

    .line 48
    new-instance v14, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v29, 0xd

    const-string v0, "Format22cs"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/tools/smali/dexlib2/Format;->Format22cs:Lcom/android/tools/smali/dexlib2/Format;

    .line 49
    new-instance v0, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v31, 0xe

    const-string v1, "Format22s"

    move-object/from16 v32, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format22s:Lcom/android/tools/smali/dexlib2/Format;

    .line 50
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v33, 0xf

    const-string v2, "Format22t"

    move-object/from16 v34, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format22t:Lcom/android/tools/smali/dexlib2/Format;

    .line 51
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v35, 0x10

    const-string v0, "Format22x"

    move-object/from16 v36, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format22x:Lcom/android/tools/smali/dexlib2/Format;

    .line 52
    new-instance v0, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v37, 0x11

    const-string v1, "Format23x"

    move-object/from16 v38, v2

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v10}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format23x:Lcom/android/tools/smali/dexlib2/Format;

    .line 53
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v39, 0x12

    const-string v2, "Format30t"

    const/16 v40, 0x4

    const/16 v10, 0x13

    move-object/from16 v41, v0

    const/4 v0, 0x6

    invoke-direct {v1, v2, v10, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format30t:Lcom/android/tools/smali/dexlib2/Format;

    .line 54
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v42, 0x13

    const-string v10, "Format31c"

    move-object/from16 v43, v1

    const/16 v1, 0x14

    invoke-direct {v2, v10, v1, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format31c:Lcom/android/tools/smali/dexlib2/Format;

    .line 55
    new-instance v10, Lcom/android/tools/smali/dexlib2/Format;

    const/16 v44, 0x14

    const-string v1, "Format31i"

    move-object/from16 v45, v2

    const/16 v2, 0x15

    invoke-direct {v10, v1, v2, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/tools/smali/dexlib2/Format;->Format31i:Lcom/android/tools/smali/dexlib2/Format;

    .line 56
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v2, "Format31t"

    move-object/from16 v46, v3

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format31t:Lcom/android/tools/smali/dexlib2/Format;

    .line 57
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format32x"

    move-object/from16 v47, v1

    const/16 v1, 0x17

    invoke-direct {v2, v3, v1, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format32x:Lcom/android/tools/smali/dexlib2/Format;

    .line 58
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format35c"

    move-object/from16 v48, v2

    const/16 v2, 0x18

    invoke-direct {v1, v3, v2, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format35c:Lcom/android/tools/smali/dexlib2/Format;

    .line 59
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format35mi"

    move-object/from16 v49, v1

    const/16 v1, 0x19

    invoke-direct {v2, v3, v1, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format35mi:Lcom/android/tools/smali/dexlib2/Format;

    .line 60
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format35ms"

    move-object/from16 v50, v2

    const/16 v2, 0x1a

    invoke-direct {v1, v3, v2, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format35ms:Lcom/android/tools/smali/dexlib2/Format;

    .line 61
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format3rc"

    move-object/from16 v51, v1

    const/16 v1, 0x1b

    invoke-direct {v2, v3, v1, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format3rc:Lcom/android/tools/smali/dexlib2/Format;

    .line 62
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format3rmi"

    move-object/from16 v52, v2

    const/16 v2, 0x1c

    invoke-direct {v1, v3, v2, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format3rmi:Lcom/android/tools/smali/dexlib2/Format;

    .line 63
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format3rms"

    move-object/from16 v53, v1

    const/16 v1, 0x1d

    invoke-direct {v2, v3, v1, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->Format3rms:Lcom/android/tools/smali/dexlib2/Format;

    .line 64
    new-instance v0, Lcom/android/tools/smali/dexlib2/Format;

    const-string v1, "Format45cc"

    const/16 v3, 0x1e

    move-object/from16 v54, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format45cc:Lcom/android/tools/smali/dexlib2/Format;

    .line 65
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "Format4rcc"

    move-object/from16 v55, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v3, v0, v2}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->Format4rcc:Lcom/android/tools/smali/dexlib2/Format;

    .line 66
    new-instance v0, Lcom/android/tools/smali/dexlib2/Format;

    const-string v2, "Format51l"

    const/16 v3, 0x20

    move-object/from16 v56, v1

    const/16 v1, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format51l:Lcom/android/tools/smali/dexlib2/Format;

    .line 67
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v2, "ArrayPayload"

    const/16 v3, 0x21

    move-object/from16 v57, v0

    const/4 v0, -0x1

    move-object/from16 v58, v4

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->ArrayPayload:Lcom/android/tools/smali/dexlib2/Format;

    .line 68
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "PackedSwitchPayload"

    move-object/from16 v22, v1

    const/16 v1, 0x22

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->PackedSwitchPayload:Lcom/android/tools/smali/dexlib2/Format;

    .line 69
    new-instance v1, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "SparseSwitchPayload"

    move-object/from16 v59, v2

    const/16 v2, 0x23

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/android/tools/smali/dexlib2/Format;->SparseSwitchPayload:Lcom/android/tools/smali/dexlib2/Format;

    .line 70
    new-instance v2, Lcom/android/tools/smali/dexlib2/Format;

    const-string v3, "UnresolvedOdexInstruction"

    const/16 v60, 0x1

    const/16 v4, 0x24

    invoke-direct {v2, v3, v4, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/smali/dexlib2/Format;->UnresolvedOdexInstruction:Lcom/android/tools/smali/dexlib2/Format;

    const/16 v0, 0x25

    .line 33
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/Format;

    aput-object v28, v0, v16

    aput-object v30, v0, v60

    aput-object v58, v0, v18

    aput-object v6, v0, v19

    aput-object v7, v0, v40

    aput-object v9, v0, v20

    const/16 v26, 0x6

    aput-object v11, v0, v26

    aput-object v13, v0, v17

    const/16 v24, 0x8

    aput-object v15, v0, v24

    aput-object v32, v0, v21

    const/16 v23, 0xa

    aput-object v8, v0, v23

    aput-object v12, v0, v25

    aput-object v5, v0, v27

    aput-object v46, v0, v29

    aput-object v14, v0, v31

    aput-object v34, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v41, v0, v39

    aput-object v43, v0, v42

    aput-object v45, v0, v44

    const/16 v3, 0x15

    aput-object v10, v0, v3

    const/16 v3, 0x16

    aput-object v47, v0, v3

    const/16 v3, 0x17

    aput-object v48, v0, v3

    const/16 v3, 0x18

    aput-object v49, v0, v3

    const/16 v3, 0x19

    aput-object v50, v0, v3

    const/16 v3, 0x1a

    aput-object v51, v0, v3

    const/16 v3, 0x1b

    aput-object v52, v0, v3

    const/16 v3, 0x1c

    aput-object v53, v0, v3

    const/16 v3, 0x1d

    aput-object v54, v0, v3

    const/16 v3, 0x1e

    aput-object v55, v0, v3

    const/16 v3, 0x1f

    aput-object v56, v0, v3

    const/16 v3, 0x20

    aput-object v57, v0, v3

    const/16 v3, 0x21

    aput-object v22, v0, v3

    const/16 v3, 0x22

    aput-object v59, v0, v3

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const/16 v1, 0x24

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/tools/smali/dexlib2/Format;->$VALUES:[Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/smali/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/android/tools/smali/dexlib2/Format;->size:I

    .line 81
    iput-boolean p4, p0, Lcom/android/tools/smali/dexlib2/Format;->isPayloadFormat:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 33
    const-class v0, Lcom/android/tools/smali/dexlib2/Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/Format;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->$VALUES:[Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v0}, [Lcom/android/tools/smali/dexlib2/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
