.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;
.source "BuilderAnnotationElement.java"


# instance fields
.field final name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final value:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    .line 45
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-object v0
.end method
