.class Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;
.super Ljava/lang/Object;
.source "OdexedFieldInstructionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldOpcode"
.end annotation


# instance fields
.field public final isStatic:Z

.field public final normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final type:C

.field public final volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-char p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    .line 79
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 80
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(CLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-char p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    .line 63
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 64
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 65
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(CZLcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 0
    .param p3    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-char p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->type:C

    .line 70
    iput-boolean p2, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->isStatic:Z

    .line 71
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->normalOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->quickOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    .line 73
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/analysis/OdexedFieldInstructionMapper$FieldOpcode;->volatileOpcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method
