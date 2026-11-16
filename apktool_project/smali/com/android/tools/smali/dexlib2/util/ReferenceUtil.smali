.class public final Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;
.super Ljava/lang/Object;
.source "ReferenceUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSiteString(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/String;
    .locals 1

    .line 183
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 185
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeCallSite(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Z)Ljava/lang/String;
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    .line 126
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodHandleString(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 161
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodHandle(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Ljava/lang/String;
    .locals 1

    .line 80
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 82
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodProtoDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getReferenceString(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getReferenceString(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReferenceString(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 221
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    .line 222
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/util/StringUtils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "\"%s\""

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_0
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    .line 225
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_1
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_2

    .line 228
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 229
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 230
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_2
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_3

    .line 233
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 234
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 235
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_3
    instance-of p1, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    if-eqz p1, :cond_4

    .line 238
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    .line 239
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_4
    instance-of p1, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    if-eqz p1, :cond_5

    .line 242
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    .line 243
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getMethodHandleString(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_5
    instance-of p1, p0, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz p1, :cond_6

    .line 246
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    .line 247
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->getCallSiteString(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeCallSite(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x28

    .line 195
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    const/16 v0, 0x22

    .line 196
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 197
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/smali/util/StringUtils;->writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 199
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodProtoDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    .line 202
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 203
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 204
    invoke-static {p0, v2}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->writeEncodedValue(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    .line 206
    :cond_0
    const-string v0, ")@"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 207
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 211
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 209
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The linker method handle for a call site must be of type invoke-static"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Z)V

    return-void
.end method

.method public static writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    const-string p2, "->"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p2, 0x3a

    .line 154
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(I)V

    .line 155
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)V

    return-void
.end method

.method public static writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    const-string p2, "->"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p2, 0x28

    .line 111
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(I)V

    .line 112
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 113
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    .line 115
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(I)V

    .line 116
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static writeMethodHandle(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/MethodHandleType;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 172
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 174
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p1

    .line 175
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-void

    .line 178
    :cond_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

    return-void
.end method

.method public static writeMethodProtoDescriptor(Ljava/io/Writer;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 93
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

    .line 94
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 97
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
