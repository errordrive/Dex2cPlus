.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;
.source "BuilderInstruction31t.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format31t:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    .line 51
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkByteRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;->registerA:I

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction31t;->registerA:I

    return v0
.end method
