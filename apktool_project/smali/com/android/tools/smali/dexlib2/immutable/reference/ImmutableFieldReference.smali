.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "ImmutableFieldReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->definingClass:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->name:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->type:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;
    .locals 3
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    .line 57
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->type:Ljava/lang/String;

    return-object v0
.end method
