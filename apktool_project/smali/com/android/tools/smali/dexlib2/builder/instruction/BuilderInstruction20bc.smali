.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction20bc.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20bc;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final verificationError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format20bc:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 53
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkVerificationError(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->verificationError:I

    .line 54
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/ReferenceType;->getReferenceType(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)I

    move-result v0

    return v0
.end method

.method public getVerificationError()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction20bc;->verificationError:I

    return v0
.end method
