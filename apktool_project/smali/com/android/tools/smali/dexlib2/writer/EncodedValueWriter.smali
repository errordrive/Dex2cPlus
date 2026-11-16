.class public abstract Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;
.super Ljava/lang/Object;
.source "EncodedValueWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey:",
        "Ljava/lang/Object;",
        "TypeKey:",
        "Ljava/lang/Object;",
        "FieldRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "MethodRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "AnnotationElement::",
        "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
        "ProtoRefKey:",
        "Ljava/lang/Object;",
        "MethodHandleKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "EncodedValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/AnnotationSection<",
            "TStringKey;TTypeKey;*TAnnotationElement;TEncodedValue;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
            "**TFieldRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
            "TMethodHandleKey;**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
            "***TMethodRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
            "**TProtoRefKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "TStringKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "*TTypeKey;*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;",
            "Lcom/android/tools/smali/dexlib2/writer/StringSection<",
            "TStringKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
            "*TTypeKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
            "**TFieldRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
            "***TMethodRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
            "**TProtoRefKey;*>;",
            "Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection<",
            "TMethodHandleKey;**>;",
            "Lcom/android/tools/smali/dexlib2/writer/AnnotationSection<",
            "TStringKey;TTypeKey;*TAnnotationElement;TEncodedValue;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    .line 69
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    .line 70
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    .line 71
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    .line 72
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    .line 73
    iput-object p6, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    .line 74
    iput-object p7, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    .line 75
    iput-object p8, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    return-void
.end method


# virtual methods
.method public writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeKey;",
            "Ljava/util/Collection<",
            "+TAnnotationElement;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 84
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 86
    sget-object p1, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;->BY_NAME:Ljava/util/Comparator;

    invoke-static {p2, p1}, Lcom/android/tools/smali/util/CollectionUtils;->immutableSortedCopy(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 90
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v2, p2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getElementName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 91
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    invoke-interface {v0, p2}, Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;->getElementValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writeEncodedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeArray(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TEncodedValue;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    .line 98
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writeEncodedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedDouble(ID)V

    return-void
.end method

.method protected abstract writeEncodedValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEncodedValue;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeEnum(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldRefKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldRefKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedFloat(IF)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedLong(IJ)V

    return-void
.end method

.method public writeMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodRefKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/MethodSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodHandleKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeMethodType(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProtoRefKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/ProtoSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeString(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStringKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeType(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeKey;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->writer:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    invoke-interface {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method
