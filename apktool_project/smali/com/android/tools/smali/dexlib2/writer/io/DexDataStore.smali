.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
.super Ljava/lang/Object;
.source "DexDataStore.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract outputAt(I)Ljava/io/OutputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract readAt(I)Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
