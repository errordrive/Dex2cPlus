.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
    }
.end annotation


# virtual methods
.method public abstract validateReference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation
.end method
