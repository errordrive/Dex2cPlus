.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/TypeListSection;
.super Ljava/lang/Object;
.source "TypeListSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeKey:",
        "Ljava/lang/Object;",
        "Type",
        "ListKey:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection<",
        "TType",
        "ListKey;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getNullableItemOffset(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType",
            "ListKey;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getTypes(Ljava/lang/Object;)Ljava/util/Collection;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType",
            "ListKey;",
            ")",
            "Ljava/util/Collection<",
            "+TTypeKey;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
