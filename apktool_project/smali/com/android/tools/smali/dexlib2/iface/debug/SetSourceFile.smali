.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/debug/SetSourceFile;
.super Ljava/lang/Object;
.source "SetSourceFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;


# virtual methods
.method public abstract getSourceFile()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
