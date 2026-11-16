.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderTypeEncodedValue"
.end annotation


# instance fields
.field final typeReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 251
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
