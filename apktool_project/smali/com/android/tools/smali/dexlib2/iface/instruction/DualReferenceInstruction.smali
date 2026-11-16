.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;
.super Ljava/lang/Object;
.source "DualReferenceInstruction.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;


# virtual methods
.method public abstract getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getReferenceType2()I
.end method
