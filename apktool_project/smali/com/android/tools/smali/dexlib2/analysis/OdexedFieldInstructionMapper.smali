.class public Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;
.super Ljava/lang/Object;
.source "OdexedFieldInstructionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;
    }
.end annotation


# static fields
.field private static final GET:I = 0x0

.field private static final INSTANCE:I = 0x0

.field private static final PRIMITIVE:I = 0x0

.field private static final PUT:I = 0x1

.field private static final REFERENCE:I = 0x2

.field private static final STATIC:I = 0x1

.field private static final WIDE:I = 0x1

.field private static final artFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

.field private static final dalvikFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;


# instance fields
.field private final opcodeMap:[[[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

.field private final opcodeValueTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const/16 v0, 0x28

    .line 85
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v5, 0x5a

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v7, 0x42

    invoke-direct {v1, v7, v3, v4, v6}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v9, 0x53

    invoke-direct {v1, v9, v4, v6, v8}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v11, 0x43

    invoke-direct {v1, v11, v6, v8, v10}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->IGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v13, 0x49

    invoke-direct {v1, v13, v8, v10, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v8, 0x4

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v10, Lcom/android/tools/smali/dexlib2/Opcode;->IGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v15, 0x46

    invoke-direct {v1, v15, v10, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v10, 0x5

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v16, 0x0

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v17, 0x2

    const/16 v4, 0x4a

    invoke-direct {v1, v4, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v18, 0x6

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v19, 0x3

    const/16 v6, 0x44

    invoke-direct {v1, v6, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v20, 0x7

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v21, 0x4

    const/16 v8, 0x4c

    invoke-direct {v1, v8, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v22, 0x8

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v23, 0x5

    const/16 v10, 0x5b

    invoke-direct {v1, v10, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v24, 0x9

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v25, 0xa

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v7, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    const/16 v26, 0xb

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v9, v12, v14, v2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v11, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v13, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v4, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v6, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v8, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v14, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v10, v2, v12, v14}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v7, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v9, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v11, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v13, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v15, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v4, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v6, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v8, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SPUT_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v10, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v7, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v9, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v11, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v13, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v15, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v4, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_WIDE_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v6, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v8, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->SGET_OBJECT_VOLATILE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v10, v3, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->dalvikFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    const/16 v0, 0x14

    .line 131
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BOOLEAN_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v16

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v12, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_BYTE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v7, v2, v12}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_SHORT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v9, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v17

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_CHAR_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v11, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v19

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v13, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v21

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v15, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v23

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v18

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v6, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v20

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v8, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v22

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IGET_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v10, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v24

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BOOLEAN:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BOOLEAN_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v25

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BYTE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_BYTE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v7, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    aput-object v1, v0, v26

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_SHORT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_SHORT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v9, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_CHAR:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_CHAR_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v11, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v13, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v15, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_WIDE_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v6, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v8, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT:Lcom/android/tools/smali/dexlib2/Opcode;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->IPUT_OBJECT_QUICK:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v10, v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;-><init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->artFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 7

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 155
    new-array v0, v0, [I

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    const-class v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeMap:[[[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeValueTypeMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 214
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->artFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    goto :goto_0

    .line 216
    :cond_0
    sget-object p1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->dalvikFieldOpcodes:[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    .line 219
    :goto_0
    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v1, p1, v3

    .line 220
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeMap:[[[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-static {v5}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->isGet(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v5

    xor-int/2addr v5, v2

    aget-object v4, v4, v5

    .line 221
    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-static {v5}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->isStatic(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v5

    aget-object v4, v4, v5

    iget-char v5, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    .line 222
    invoke-static {v5}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getTypeIndex(C)I

    move-result v5

    aput-object v1, v4, v5

    .line 224
    iget-object v4, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeValueTypeMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-char v6, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    invoke-static {v6}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getValueType(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    iget-object v4, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eqz v4, :cond_2

    .line 228
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeValueTypeMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-char v1, v1, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getValueType(C)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static getTypeIndex(C)I
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x49

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 200
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "Unknown type %s: "

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    return v0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/16 p0, 0x8

    return p0

    :cond_6
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getValueType(C)I
    .locals 3

    const/16 v0, 0x46

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x53

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Unknown type %s: "

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    return v2

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCompatible(Lcom/android/tools/smali/dexlib2/Opcode;C)Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeValueTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getValueType(C)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 250
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected opcode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static isGet(Lcom/android/tools/smali/dexlib2/Opcode;)Z
    .locals 0
    .param p0    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 204
    iget p0, p0, Lcom/android/tools/smali/dexlib2/Opcode;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isStatic(Lcom/android/tools/smali/dexlib2/Opcode;)Z
    .locals 0
    .param p0    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 208
    iget p0, p0, Lcom/android/tools/smali/dexlib2/Opcode;->flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAndCheckDeodexedOpcode(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->opcodeMap:[[[Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;

    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->isGet(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 236
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->isStatic(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->getTypeIndex(C)I

    move-result v3

    aget-object v0, v0, v3

    .line 239
    iget-char v3, v0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    invoke-direct {p0, p2, v3}, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;->isCompatible(Lcom/android/tools/smali/dexlib2/Opcode;C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object p1, v0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object p1

    .line 240
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const-string p1, "Incorrect field type \"%s\" for %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
