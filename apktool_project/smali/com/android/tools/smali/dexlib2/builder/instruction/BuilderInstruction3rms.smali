.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction3rms.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rms;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final registerCount:I

.field protected final startRegister:I

.field protected final vtableIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format3rms:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;III)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 53
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkShortRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->startRegister:I

    .line 54
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkRegisterRangeCount(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->registerCount:I

    .line 55
    iput p4, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->vtableIndex:I

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->registerCount:I

    return v0
.end method

.method public getStartRegister()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->startRegister:I

    return v0
.end method

.method public getVtableIndex()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction3rms;->vtableIndex:I

    return v0
.end method
