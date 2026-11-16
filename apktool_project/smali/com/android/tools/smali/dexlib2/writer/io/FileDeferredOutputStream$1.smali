.class Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;
.super Ljava/lang/Object;
.source "FileDeferredOutputStream.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->getFactory(Ljava/io/File;I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bufferSize:I

.field final synthetic val$containingDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;->val$containingDirectory:Ljava/io/File;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDeferredOutputStream()Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;->val$containingDirectory:Ljava/io/File;

    const-string v2, "dexlibtmp"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;-><init>(Ljava/io/File;I)V

    return-object v1
.end method
