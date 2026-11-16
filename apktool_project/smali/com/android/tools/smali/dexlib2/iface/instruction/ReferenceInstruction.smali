.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;
.super Ljava/lang/Object;
.source "ReferenceInstruction.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;


# virtual methods
.method public abstract getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getReferenceType()I
.end method
