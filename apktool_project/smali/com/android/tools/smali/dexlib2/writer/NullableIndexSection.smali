.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection;
.super Ljava/lang/Object;
.source "NullableIndexSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/IndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/IndexSection<",
        "TKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getNullableItemIndex(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)I"
        }
    .end annotation
.end method
