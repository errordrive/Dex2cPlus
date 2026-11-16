.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/InstructionFactory;
.super Ljava/lang/Object;
.source "InstructionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ref::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/Reference;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract makeArrayPayload(ILjava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction10t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction10x(Lcom/android/tools/smali/dexlib2/Opcode;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction11n(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction11x(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction12x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction20bc(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "ITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction20t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction21c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "ITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction21ih(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction21lh(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction21s(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction21t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction22b(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction22c(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "IITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction22s(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction22t(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction22x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction23x(Lcom/android/tools/smali/dexlib2/Opcode;III)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction30t(Lcom/android/tools/smali/dexlib2/Opcode;I)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction31c(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "ITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction31i(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction31t(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction32x(Lcom/android/tools/smali/dexlib2/Opcode;II)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makeInstruction35c(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "IIIIIITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction3rc(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "IITRef;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeInstruction51l(Lcom/android/tools/smali/dexlib2/Opcode;IJ)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract makePackedSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method

.method public abstract makeSparseSwitchPayload(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation
.end method
