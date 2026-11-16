.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
.super Ljava/lang/Object;
.source "CallSiteSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/IndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallSiteKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        "EncodedArrayKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/IndexSection<",
        "TCallSiteKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallSiteKey;)TEncodedArrayKey;"
        }
    .end annotation
.end method
