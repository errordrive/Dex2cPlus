.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;
.super Ljava/util/AbstractSet;
.source "FixedSizeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;)V

    return-object v0
.end method

.method public abstract readItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
