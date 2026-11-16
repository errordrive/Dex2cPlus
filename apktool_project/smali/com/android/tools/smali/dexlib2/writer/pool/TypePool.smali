.class public Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;
.source "TypePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/TypeSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;",
        "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 62
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->getString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public intern(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public internNullable(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
