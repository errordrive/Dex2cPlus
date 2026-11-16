.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
.super Ljava/lang/Object;
.source "ArrayEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getValue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method
