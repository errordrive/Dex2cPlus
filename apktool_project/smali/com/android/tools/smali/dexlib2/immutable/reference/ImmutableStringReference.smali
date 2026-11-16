.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;
.source "ImmutableStringReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final str:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;->str:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;->str:Ljava/lang/String;

    return-object v0
.end method
