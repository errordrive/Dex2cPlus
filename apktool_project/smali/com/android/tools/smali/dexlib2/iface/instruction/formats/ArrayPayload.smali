.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;
.super Ljava/lang/Object;
.source "ArrayPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/PayloadInstruction;


# virtual methods
.method public abstract getArrayElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getElementWidth()I
.end method
