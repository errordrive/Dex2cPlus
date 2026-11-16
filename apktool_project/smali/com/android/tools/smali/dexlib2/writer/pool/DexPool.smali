.class public Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
.super Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.source "DexPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;
    }
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
        ">;"
    }
.end annotation


# instance fields
.field private final sections:[Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/tools/smali/dexlib2/writer/pool/BasePool<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    const/16 p1, 0xc

    .line 83
    new-array p1, p1, [Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->callSiteSection:Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSetSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/16 v1, 0xa

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    const/16 v1, 0xb

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->sections:[Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    return-void
.end method

.method public static writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    .line 110
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V

    return-void
.end method

.method public static writeTo(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V

    .line 118
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/android/tools/smali/dexlib2/writer/io/FileDataStore;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/android/tools/smali/dexlib2/writer/io/FileDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->writeTo(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;)V

    return-void
.end method


# virtual methods
.method protected getSectionProvider()Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 104
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public internClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->classSection:Lcom/android/tools/smali/dexlib2/writer/ClassSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->intern(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V

    return-void
.end method

.method internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 219
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 221
    :pswitch_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    .line 222
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    .line 223
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 224
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    .line 225
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    .line 229
    :pswitch_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/FieldPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    return-void

    .line 234
    :pswitch_6
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    return-void

    .line 249
    :pswitch_7
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodHandlePool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 252
    :pswitch_8
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
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

.method public mark()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->sections:[Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/writer/pool/Markable;->mark()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->sections:[Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 150
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/writer/pool/Markable;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">.InternalEncodedValueWriter;",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

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

    .line 214
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

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

    .line 166
    :pswitch_0
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeBoolean(Z)V

    return-void

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeNull()V

    return-void

    .line 158
    :pswitch_2
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    .line 159
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 162
    :pswitch_3
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    .line 163
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeArray(Ljava/util/Collection;)V

    return-void

    .line 178
    :pswitch_4
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeEnum(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 193
    :pswitch_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 181
    :pswitch_6
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 205
    :pswitch_7
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeType(Ljava/lang/Object;)V

    return-void

    .line 202
    :pswitch_8
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeString(Ljava/lang/Object;)V

    return-void

    .line 211
    :pswitch_9
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 208
    :pswitch_a
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethodType(Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_0
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeDouble(D)V

    return-void

    .line 184
    :cond_1
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeFloat(F)V

    return-void

    .line 187
    :cond_2
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeInt(I)V

    return-void

    .line 172
    :cond_3
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeChar(C)V

    return-void

    .line 199
    :cond_4
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeShort(I)V

    return-void

    .line 190
    :cond_5
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeLong(J)V

    return-void

    .line 169
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

    .line 76
    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-void
.end method
