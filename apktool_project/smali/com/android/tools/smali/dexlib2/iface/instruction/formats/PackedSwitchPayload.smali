.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;
.super Ljava/lang/Object;
.source "PackedSwitchPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;


# virtual methods
.method public abstract getSwitchElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
