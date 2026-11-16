.class public Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;
.super Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
.source "DexPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DexPoolSectionProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/DexWriter<",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key<",
        "+",
        "Ljava/util/Collection<",
        "+",
        "Ljava/lang/CharSequence;",
        ">;>;",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
        "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
        "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;",
        ">.SectionProvider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 295
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 299
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;

    move-result-object v0

    return-object v0
.end method

.method public getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 283
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getClassSection()Lcom/android/tools/smali/dexlib2/writer/ClassSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getClassSection()Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    move-result-object v0

    return-object v0
.end method

.method public getClassSection()Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 279
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 303
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getFieldSection()Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getFieldSection()Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSection()Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 271
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 287
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getMethodSection()Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getMethodSection()Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodSection()Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 275
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getProtoSection()Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getProtoSection()Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;

    move-result-object v0

    return-object v0
.end method

.method public getProtoSection()Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 267
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getStringSection()Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getStringSection()Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    move-result-object v0

    return-object v0
.end method

.method public getStringSection()Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 259
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/TypeListSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 291
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getTypeSection()Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getTypeSection()Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeSection()Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 263
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method
