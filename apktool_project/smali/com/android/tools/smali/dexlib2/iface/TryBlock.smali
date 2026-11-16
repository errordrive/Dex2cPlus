.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/TryBlock;
.super Ljava/lang/Object;
.source "TryBlock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EH::",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getCodeUnitCount()I
.end method

.method public abstract getExceptionHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+TEH;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getStartCodeAddress()I
.end method
