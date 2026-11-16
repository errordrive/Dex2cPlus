.class Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableInstruction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 193
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 190
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 199
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;->of(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic makeImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 190
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;

    move-result-object p1

    return-object p1
.end method
