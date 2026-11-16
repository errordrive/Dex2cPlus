.class Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;
.super Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
.source "InlineMethodResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineMethodResolver_version35"
.end annotation


# instance fields
.field private final inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 83
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;-><init>()V

    const/16 v0, 0xe

    .line 84
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/iface/Method;

    const-string v1, "V"

    const/16 v2, 0x8

    .line 85
    const-string v3, "Lorg/apache/harmony/dalvik/NativeTestTarget;"

    const-string v4, "emptyInlineMethod"

    const-string v5, ""

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "C"

    const/4 v3, 0x1

    .line 86
    const-string v4, "Ljava/lang/String;"

    const-string v6, "charAt"

    const-string v7, "I"

    invoke-static {v3, v4, v6, v7, v1}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "compareTo"

    .line 87
    invoke-static {v3, v4, v1, v4, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    const-string v1, "Ljava/lang/Object;"

    const-string v6, "Z"

    .line 88
    const-string v8, "equals"

    invoke-static {v3, v4, v8, v1, v6}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    const-string v1, "length"

    .line 89
    invoke-static {v3, v4, v1, v5, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 90
    const-string v1, "Ljava/lang/Math;"

    const-string v3, "abs"

    invoke-static {v2, v1, v3, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    const-string v4, "J"

    .line 91
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    const-string v4, "F"

    .line 92
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v0, v5

    .line 93
    const-string v4, "D"

    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    aput-object v3, v0, v2

    .line 94
    const-string v3, "min"

    const-string v5, "II"

    invoke-static {v2, v1, v3, v5, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    const/16 v6, 0x9

    aput-object v3, v0, v6

    const-string v3, "max"

    .line 95
    invoke-static {v2, v1, v3, v5, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v0, v5

    const-string v3, "sqrt"

    .line 96
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v0, v5

    const-string v3, "cos"

    .line 97
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v0, v5

    const-string v3, "sin"

    .line 98
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    return-void
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

    .line 105
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;

    .line 106
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result p1

    if-ltz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 111
    aget-object p1, v0, p1

    return-object p1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid inline index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
