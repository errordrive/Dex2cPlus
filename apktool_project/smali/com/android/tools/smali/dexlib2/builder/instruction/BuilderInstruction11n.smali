.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction11n.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction11n;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final literal:I

.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format11n:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

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
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->registerA:I

    .line 52
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleLiteral(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->literal:I

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getNarrowLiteral()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->literal:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->registerA:I

    return v0
.end method

.method public getWideLiteral()J
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction11n;->literal:I

    int-to-long v0, v0

    return-wide v0
.end method
