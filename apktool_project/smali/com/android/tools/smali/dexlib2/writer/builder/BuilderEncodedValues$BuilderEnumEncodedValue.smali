.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseEnumEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderEnumEncodedValue"
.end annotation


# instance fields
.field final enumReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 164
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseEnumEncodedValue;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->enumReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->enumReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    return-object v0
.end method
