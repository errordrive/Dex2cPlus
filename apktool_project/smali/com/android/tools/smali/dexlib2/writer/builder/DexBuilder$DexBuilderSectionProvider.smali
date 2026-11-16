.class public Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;
.super Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
.source "DexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DexBuilderSectionProvider"
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
        ">.SectionProvider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 493
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 497
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;

    move-result-object v0

    return-object v0
.end method

.method public getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 481
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getClassSection()Lcom/android/tools/smali/dexlib2/writer/ClassSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getClassSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    move-result-object v0

    return-object v0
.end method

.method public getClassSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 477
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 501
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getFieldSection()Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getFieldSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 469
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 485
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandlePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getMethodSection()Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getMethodSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 473
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getProtoSection()Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getProtoSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;

    move-result-object v0

    return-object v0
.end method

.method public getProtoSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 465
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getStringSection()Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getStringSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    move-result-object v0

    return-object v0
.end method

.method public getStringSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 457
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/TypeListSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 489
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getTypeSection()Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getTypeSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeSection()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 461
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method
