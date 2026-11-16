.class public Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;
.source "FieldPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/FieldSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
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

    .line 43
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getFieldIndex(Lcom/android/tools/smali/dexlib2/iface/Field;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getFieldIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->getFieldIndex(Lcom/android/tools/smali/dexlib2/iface/Field;)I

    move-result p1

    return p1
.end method

.method public getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->getName(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
