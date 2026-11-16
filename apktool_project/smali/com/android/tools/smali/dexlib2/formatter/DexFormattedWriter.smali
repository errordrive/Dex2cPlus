.class public Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;
.super Ljava/io/Writer;
.source "DexFormattedWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method protected writeAnnotation(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, "Annotation["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    .line 376
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    .line 377
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 378
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 381
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method protected writeArray(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, "Array["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 394
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public writeCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 163
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeQuotedString(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    .line 167
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 168
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 176
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The linker method handle for a call site must be of type invoke-static"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeClass(Ljava/lang/CharSequence;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x3b

    const-string v6, "Invalid type string: %s"

    if-ge v2, v4, :cond_4

    .line 225
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_1

    if-eq v2, v3, :cond_0

    .line 233
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 229
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 230
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ne v4, v5, :cond_3

    if-eq v2, v3, :cond_2

    .line 242
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 238
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 239
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_5

    return-void

    .line 249
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 250
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "0x%x"

    if-eqz v0, :cond_6

    const/4 v4, 0x6

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 365
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown encoded value type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 362
    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 335
    :pswitch_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeAnnotation(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V

    return-void

    .line 338
    :pswitch_3
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeArray(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V

    return-void

    .line 347
    :pswitch_4
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 350
    :pswitch_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 344
    :pswitch_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 353
    :pswitch_7
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void

    .line 341
    :pswitch_8
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeQuotedString(Ljava/lang/CharSequence;)V

    return-void

    .line 359
    :pswitch_9
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 356
    :pswitch_a
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    .line 322
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    .line 314
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    .line 318
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    .line 326
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    .line 310
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

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

.method public writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 128
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 86
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 90
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/MethodHandleType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 149
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    .line 150
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 153
    :cond_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void
.end method

.method public writeMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 113
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 117
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeQuotedString(Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 272
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 273
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x7f

    if-lt v2, v3, :cond_2

    if-ge v2, v4, :cond_2

    const/16 v3, 0x27

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_0

    if-eq v2, v1, :cond_0

    if-ne v2, v4, :cond_1

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_2
    if-gt v2, v4, :cond_6

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :cond_4
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :cond_5
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    shr-int/lit8 v4, v2, 0xc

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 292
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 293
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 294
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 297
    :cond_7
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public writeReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    .line 411
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeQuotedString(Ljava/lang/CharSequence;)V

    return-void

    .line 412
    :cond_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    .line 413
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void

    .line 414
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_2

    .line 415
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 416
    :cond_2
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_3

    .line 417
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 418
    :cond_3
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    if-eqz v0, :cond_4

    .line 419
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    return-void

    .line 420
    :cond_4
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    if-eqz v0, :cond_5

    .line 421
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 422
    :cond_5
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz v0, :cond_6

    .line 423
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V

    return-void

    .line 425
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Not a known reference type: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeShortFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 139
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public writeShortMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeSimpleName(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 101
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 105
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected writeSimpleName(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public writeType(Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "Invalid type string: %s"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_5

    .line 184
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeClass(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_1

    .line 189
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x5a

    if-eq v2, v5, :cond_3

    const/16 v5, 0x42

    if-eq v2, v5, :cond_3

    const/16 v5, 0x53

    if-eq v2, v5, :cond_3

    const/16 v5, 0x43

    if-eq v2, v5, :cond_3

    const/16 v5, 0x49

    if-eq v2, v5, :cond_3

    const/16 v5, 0x4a

    if-eq v2, v5, :cond_3

    const/16 v5, 0x46

    if-eq v2, v5, :cond_3

    const/16 v5, 0x44

    if-eq v2, v5, :cond_3

    const/16 v5, 0x56

    if-ne v2, v5, :cond_2

    goto :goto_1

    .line 207
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 208
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(I)V

    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_4

    return-void

    .line 202
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 203
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 214
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
