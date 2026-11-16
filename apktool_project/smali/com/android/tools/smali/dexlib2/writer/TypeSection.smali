.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/TypeSection;
.super Ljava/lang/Object;
.source "TypeSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey:",
        "Ljava/lang/Object;",
        "TypeKey:",
        "Ljava/lang/Object;",
        "TypeRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection<",
        "TTypeKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeRef;)I"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeKey;)TStringKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
