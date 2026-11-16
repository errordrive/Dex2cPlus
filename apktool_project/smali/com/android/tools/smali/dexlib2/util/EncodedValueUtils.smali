.class public final Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;
.super Ljava/lang/Object;
.source "EncodedValueUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefaultValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Z
    .locals 7

    .line 65
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/16 v3, 0x10

    if-eq v0, v3, :cond_4

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    return v2

    .line 73
    :cond_2
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1

    .line 75
    :cond_4
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v1

    .line 77
    :cond_6
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v1

    .line 71
    :cond_8
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v1

    .line 83
    :cond_a
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v1

    .line 79
    :cond_c
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v1

    .line 69
    :cond_e
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v1
.end method

.method private static writeAnnotation(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const-string v0, "Annotation["

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    .line 161
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 162
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3d

    .line 163
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 164
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->writeEncodedValue(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x5d

    .line 167
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private static writeArray(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const-string v0, "Array["

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
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

    .line 178
    :cond_0
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 180
    :goto_1
    invoke-static {p0, v1}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->writeEncodedValue(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 183
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public static writeEncodedValue(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

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

    .line 151
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown encoded value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :pswitch_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 148
    :pswitch_1
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 119
    :pswitch_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->writeAnnotation(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V

    return-void

    .line 122
    :pswitch_3
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->writeArray(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V

    return-void

    .line 133
    :pswitch_4
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 136
    :pswitch_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 130
    :pswitch_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void

    .line 139
    :pswitch_7
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const/16 v0, 0x22

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 126
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/util/StringUtils;->writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 145
    :pswitch_9
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodHandle(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V

    return-void

    .line 142
    :pswitch_a
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodProtoDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    return-void

    .line 116
    :cond_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_2
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_3
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_4
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_5
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_6
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

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
