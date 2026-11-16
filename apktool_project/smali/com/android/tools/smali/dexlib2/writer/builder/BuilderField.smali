.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "BuilderField.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Field;


# instance fields
.field final accessFlags:I

.field final annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field hiddenApiRestrictions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final initialValue:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
            "I",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    .line 55
    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->accessFlags:I

    .line 56
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->initialValue:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    .line 57
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    .line 58
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->hiddenApiRestrictions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 1
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

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->hiddenApiRestrictions:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->getInitialValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->initialValue:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->fieldType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
