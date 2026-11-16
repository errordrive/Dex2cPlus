.class public Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;
.super Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
.source "CustomInlineMethodResolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final longMethodPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-string v0, "(L[^;]+;)->([^(]+)\\(([^)]*)\\)(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->longMethodPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/io/File;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    invoke-static {v1}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    .line 61
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/smali/dexlib2/iface/Method;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    const/4 p1, 0x0

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 83
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->parseAndResolveInlineMethod(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error while parsing inline table"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private parseAndResolveInlineMethod(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 108
    sget-object v0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->longMethodPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/immutable/util/ParamUtil;->parseParamString(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    const/4 v2, 0x4

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    move-result-object v2

    .line 125
    instance-of v7, v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    if-eqz v7, :cond_1

    .line 126
    check-cast v2, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getClassDef()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 128
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 140
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v2

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve inline method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid method descriptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public resolveExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 95
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;

    .line 96
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result p1

    if-ltz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/CustomInlineMethodResolver;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 101
    aget-object p1, v0, p1

    return-object p1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid method index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
