.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/StringSection;
.super Ljava/lang/Object;
.source "StringSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey:",
        "Ljava/lang/Object;",
        "StringRef::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection<",
        "TStringKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStringRef;)I"
        }
    .end annotation
.end method

.method public abstract hasJumboIndexes()Z
.end method
