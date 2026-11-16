.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction21ih.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction21ih;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final literal:I

.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format21ih:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 51
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkByteRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->registerA:I

    .line 52
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkIntegerHatLiteral(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->literal:I

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getHatLiteral()S
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->literal:I

    ushr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public getNarrowLiteral()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->literal:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->registerA:I

    return v0
.end method

.method public getWideLiteral()J
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction21ih;->literal:I

    int-to-long v0, v0

    return-wide v0
.end method
