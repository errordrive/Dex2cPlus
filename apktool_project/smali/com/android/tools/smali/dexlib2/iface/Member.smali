.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/Member;
.super Ljava/lang/Object;
.source "Member.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Annotatable;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getDefiningClass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getHiddenApiRestrictions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
