.class Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream$1;
.super Ljava/lang/Object;
.source "MemoryDeferredOutputStream.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->getFactory(I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDeferredOutputStream()Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;
    .locals 2

    .line 113
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;-><init>(I)V

    return-object v0
.end method
