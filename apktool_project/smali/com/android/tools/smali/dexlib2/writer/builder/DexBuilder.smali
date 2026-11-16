.class public Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
.super Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.source "DexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    return-void
.end method

.method private internAnnotationElement(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 359
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v1

    .line 360
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V

    return-object v0
.end method

.method private internAnnotationEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 415
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 416
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    .line 417
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internAnnotationElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Ljava/util/Set;)V

    return-object v0
.end method

.method private internArrayEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 421
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 422
    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 421
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private internEnumEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 426
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)V

    return-object v0
.end method

.method private internFieldEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 430
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)V

    return-object v0
.end method

.method private internMethodEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 434
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)V

    return-object v0
.end method

.method private internMethodHandleEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 452
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;->internMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;)V

    return-object v0
.end method

.method private internMethodParameter(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 282
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 283
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    .line 284
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internNullableString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    .line 285
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)V

    return-object v0
.end method

.method private internMethodParameters(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 275
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 277
    :cond_0
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 278
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 277
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private internMethodTypeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 447
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)V

    return-object v0
.end method

.method private internStringEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 438
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;)V

    return-object v0
.end method

.method private internTypeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 442
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)V

    return-object v0
.end method


# virtual methods
.method protected getSectionProvider()Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;",
            ">.SectionProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 117
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method internAnnotationElements(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;)",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 354
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 355
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 354
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public internCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 206
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    move-result-object p1

    return-object p1
.end method

.method public internClassDef(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 164
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 166
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 168
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 180
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v4

    sget-object v5, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Ljava/util/function/Predicate;

    .line 182
    invoke-static {v2, v5}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object v5

    .line 181
    invoke-static {v5}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v5

    .line 180
    invoke-static {v4, v5}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object v4

    .line 183
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v5

    sget-object v6, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Ljava/util/function/Predicate;

    .line 185
    invoke-static {v2, v6}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v2

    .line 183
    invoke-static {v5, v2}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object v2

    .line 187
    invoke-static {v4}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->getStaticInitializers(Ljava/util/SortedSet;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 189
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;

    invoke-virtual {v3, v5}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internArrayEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object v3

    :cond_3
    move-object v13, v2

    move-object v15, v3

    move-object v12, v4

    goto :goto_2

    :cond_4
    move-object v12, v3

    move-object v13, v12

    move-object v15, v13

    .line 193
    :goto_2
    iget-object v2, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    new-instance v5, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v6

    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    move-object/from16 v4, p3

    .line 195
    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internNullableType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v8

    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    .line 196
    invoke-virtual {v3, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internTypeList(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v9

    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    move-object/from16 v3, p5

    .line 197
    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internNullableString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v10

    iget-object v1, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    move-object/from16 v3, p6

    .line 198
    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v11

    move/from16 v7, p2

    move-object/from16 v14, p8

    invoke-direct/range {v5 .. v15}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/SortedSet;Ljava/util/SortedSet;Ljava/lang/Iterable;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)V

    .line 193
    invoke-virtual {v2, v5}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->internClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    move-result-object v1

    return-object v1
.end method

.method internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 371
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 410
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Unexpected encoded value type: %d"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 377
    :pswitch_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->TRUE_VALUE:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->FALSE_VALUE:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p1

    .line 398
    :pswitch_1
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;

    return-object p1

    .line 373
    :pswitch_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internAnnotationEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    move-result-object p1

    return-object p1

    .line 375
    :pswitch_3
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internArrayEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object p1

    return-object p1

    .line 386
    :pswitch_4
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internEnumEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    move-result-object p1

    return-object p1

    .line 396
    :pswitch_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    move-result-object p1

    return-object p1

    .line 388
    :pswitch_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internFieldEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    move-result-object p1

    return-object p1

    .line 404
    :pswitch_7
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internTypeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    move-result-object p1

    return-object p1

    .line 402
    :pswitch_8
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internStringEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_9
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodHandleEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;

    move-result-object p1

    return-object p1

    .line 406
    :pswitch_a
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodTypeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;

    move-result-object p1

    return-object p1

    .line 384
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;-><init>(D)V

    return-object v0

    .line 390
    :cond_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;-><init>(F)V

    return-object v0

    .line 392
    :cond_3
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;-><init>(I)V

    return-object v0

    .line 382
    :cond_4
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;-><init>(C)V

    return-object v0

    .line 400
    :cond_5
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;-><init>(S)V

    return-object v0

    .line 394
    :cond_6
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;-><init>(J)V

    return-object v0

    .line 380
    :cond_7
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;-><init>(B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public internField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/value/EncodedValue;Ljava/util/Set;Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    move-object v0, p1

    .line 127
    new-instance p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p2

    .line 129
    invoke-virtual {p0, p5}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internNullableEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p3

    iget-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast p5, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    .line 130
    invoke-virtual {p5, p6}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p5

    move p6, p4

    move-object p4, p3

    move p3, p6

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/Set;)V

    return-object p1
.end method

.method public internFieldReference(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ")",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p3, :cond_0

    .line 143
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 145
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object v1

    .line 146
    invoke-direct {p0, p3}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodParameters(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    .line 148
    invoke-virtual {p1, p6}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v4

    move v3, p5

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;Ljava/util/List;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v0
.end method

.method public internMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 210
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;->internMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethodProtoReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method

.method internNullableEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public internNullableStringReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internStringReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public internNullableTypeReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internTypeReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public internReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 248
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internStringReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    .line 252
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internTypeReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_2

    .line 255
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1

    .line 257
    :cond_2
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_3

    .line 258
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internFieldReference(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    return-object p1

    .line 260
    :cond_3
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    if-eqz v0, :cond_4

    .line 261
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodProtoReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1

    .line 263
    :cond_4
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz v0, :cond_5

    .line 264
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    move-result-object p1

    return-object p1

    .line 266
    :cond_5
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    if-eqz v0, :cond_6

    .line 267
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object p1

    return-object p1

    .line 269
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not determine type of reference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internStringReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public internTypeReference(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$internAnnotationElements$1$com-android-tools-smali-dexlib2-writer-builder-DexBuilder(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internAnnotationElement(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$internArrayEncodedValue$2$com-android-tools-smali-dexlib2-writer-builder-DexBuilder(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$internMethodParameters$0$com-android-tools-smali-dexlib2-writer-builder-DexBuilder(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internMethodParameter(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;

    move-result-object p1

    return-object p1
.end method

.method protected writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;",
            ">.InternalEncodedValueWriter;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 348
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;->getValueType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unrecognized value type: %d"

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 300
    :pswitch_0
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeBoolean(Z)V

    return-void

    .line 330
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeNull()V

    return-void

    .line 292
    :pswitch_2
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    .line 293
    iget-object v0, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;->typeReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;->elements:Ljava/util/Set;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 296
    :pswitch_3
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    .line 297
    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeArray(Ljava/util/Collection;)V

    return-void

    .line 312
    :pswitch_4
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeEnum(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 327
    :pswitch_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 315
    :pswitch_6
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 339
    :pswitch_7
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeType(Ljava/lang/Object;)V

    return-void

    .line 336
    :pswitch_8
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeString(Ljava/lang/Object;)V

    return-void

    .line 345
    :pswitch_9
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;->methodHandleReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 342
    :pswitch_a
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodTypeEncodedValue;->methodProtoReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethodType(Ljava/lang/Object;)V

    return-void

    .line 309
    :cond_0
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeDouble(D)V

    return-void

    .line 318
    :cond_1
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeFloat(F)V

    return-void

    .line 321
    :cond_2
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeInt(I)V

    return-void

    .line 306
    :cond_3
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeChar(C)V

    return-void

    .line 333
    :cond_4
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeShort(I)V

    return-void

    .line 324
    :cond_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeLong(J)V

    return-void

    .line 303
    :cond_6
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeByte(B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    check-cast p2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V

    return-void
.end method
