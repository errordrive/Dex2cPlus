.class public Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.super Ljava/lang/Object;
.source "BaseBuilderPool.java"


# instance fields
.field protected final dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    return-void
.end method
