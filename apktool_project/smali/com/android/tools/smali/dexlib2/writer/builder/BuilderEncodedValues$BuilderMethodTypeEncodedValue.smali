.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodTypeEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderMethodTypeEncodedValue"
.end annotation


# instance fields
.field final methodProtoReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 264
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodTypeEncodedValue;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;->methodProtoReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;->methodProtoReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-object v0
.end method
