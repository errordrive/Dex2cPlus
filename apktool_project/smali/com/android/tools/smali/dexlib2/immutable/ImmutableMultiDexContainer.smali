.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;
.super Ljava/lang/Object;
.source "ImmutableMultiDexContainer.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;-><init>(Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;)V

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDexEntryNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;

    move-result-object p1

    return-object p1
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;

    return-object p1
.end method
