.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;
.source "BuilderCallSiteReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field final encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field index:I

.field final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    return-void
.end method


# virtual methods
.method public getExtraArguments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 74
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    return v0
.end method

.method public bridge synthetic getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public getMethodHandle()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object v0

    return-object v0
.end method

.method public getMethodProto()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    return-void
.end method
