.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseStringEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderStringEncodedValue"
.end annotation


# instance fields
.field final stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 238
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseStringEncodedValue;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
