.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;
.super Ljava/lang/Object;
.source "DoubleEncodedValue.java"

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

.method public abstract getValue()D
.end method

.method public abstract hashCode()I
.end method
