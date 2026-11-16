.class public Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;
.super Lcom/android/tools/smali/util/ExceptionWithContext;
.source "InstructionOffsetMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidInstructionIndex"
.end annotation


# instance fields
.field private final instructionIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Instruction index out of bounds: %d"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iput p1, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;->instructionIndex:I

    return-void
.end method


# virtual methods
.method public getInstructionIndex()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;->instructionIndex:I

    return v0
.end method
