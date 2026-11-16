.class public Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;
.super Ljava/lang/Object;
.source "DexFormatter.java"


# static fields
.field public static final INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 124
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 154
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 64
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 114
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodHandle(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 84
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeMethodProtoDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getQuotedString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 144
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeQuotedString(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 164
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeReference(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getShortFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 104
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeShortFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getShortMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 74
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeShortMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getType(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 134
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;->writeType(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected IOException"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getWriter(Ljava/io/Writer;)Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/formatter/DexFormattedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method
