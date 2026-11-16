.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;
.source "BuilderInstruction22t.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22t;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final registerA:I

.field protected final registerB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format22t:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 53
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->registerA:I

    .line 54
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->registerB:I

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22t;->registerB:I

    return v0
.end method
