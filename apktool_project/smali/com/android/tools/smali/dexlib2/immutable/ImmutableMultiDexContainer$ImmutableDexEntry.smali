.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;
.super Ljava/lang/Object;
.source "ImmutableMultiDexContainer.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImmutableDexEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final dexFile:Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

.field private final entryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->entryName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->dexFile:Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    return-void
.end method


# virtual methods
.method public getContainer()Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer;

    return-object v0
.end method

.method public bridge synthetic getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    move-result-object v0

    return-object v0
.end method

.method public getDexFile()Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->dexFile:Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMultiDexContainer$ImmutableDexEntry;->entryName:Ljava/lang/String;

    return-object v0
.end method
