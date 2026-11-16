.class Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;
.super Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
.source "InlineMethodResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineMethodResolver_version36"
.end annotation


# instance fields
.field private final fastIndexOfMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

.field private final indexOfIIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

.field private final indexOfIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

.field private final inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

.field private final isEmptyMethod:Lcom/android/tools/smali/dexlib2/iface/Method;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 123
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;-><init>()V

    const/4 v0, 0x1

    .line 128
    const-string v1, "Ljava/lang/String;"

    const-string v2, "indexOf"

    const-string v3, "I"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 129
    const-string v4, "II"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 132
    const-string v2, "fastIndexOf"

    const/4 v5, 0x2

    invoke-static {v5, v1, v2, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->fastIndexOfMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 133
    const-string v2, "isEmpty"

    const-string v6, ""

    const-string v7, "Z"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->isEmptyMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    const/16 v2, 0x1d

    .line 135
    new-array v2, v2, [Lcom/android/tools/smali/dexlib2/iface/Method;

    const-string v8, "emptyInlineMethod"

    const-string v9, "V"

    const/16 v10, 0x8

    .line 136
    const-string v11, "Lorg/apache/harmony/dalvik/NativeTestTarget;"

    invoke-static {v10, v11, v8, v6, v9}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    const-string v8, "charAt"

    const-string v9, "C"

    .line 137
    invoke-static {v0, v1, v8, v3, v9}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v8

    aput-object v8, v2, v0

    const-string v8, "compareTo"

    .line 138
    invoke-static {v0, v1, v8, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v8

    aput-object v8, v2, v5

    const-string v5, "equals"

    const-string v8, "Ljava/lang/Object;"

    .line 139
    invoke-static {v0, v1, v5, v8, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v2, v7

    const/4 v5, 0x4

    const/4 v7, 0x0

    aput-object v7, v2, v5

    const/4 v5, 0x5

    aput-object v7, v2, v5

    const-string v5, "length"

    .line 146
    invoke-static {v0, v1, v5, v6, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v2, v1

    .line 147
    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static {v10, v0, v1, v3, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v2, v6

    .line 148
    const-string v5, "J"

    invoke-static {v10, v0, v1, v5, v5}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v6

    aput-object v6, v2, v10

    .line 149
    const-string v6, "F"

    invoke-static {v10, v0, v1, v6, v6}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v2, v8

    .line 150
    const-string v7, "D"

    invoke-static {v10, v0, v1, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v2, v9

    .line 151
    const-string v8, "min"

    invoke-static {v10, v0, v8, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v9

    const/16 v11, 0xb

    aput-object v9, v2, v11

    .line 152
    const-string v9, "max"

    invoke-static {v10, v0, v9, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v11

    const/16 v12, 0xc

    aput-object v11, v2, v12

    .line 153
    const-string v11, "sqrt"

    invoke-static {v10, v0, v11, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v2, v13

    const-string v12, "cos"

    .line 154
    invoke-static {v10, v0, v12, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v2, v13

    const-string v12, "sin"

    .line 155
    invoke-static {v10, v0, v12, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v12, 0xf

    aput-object v0, v2, v12

    const-string v0, "floatToIntBits"

    .line 156
    const-string v12, "Ljava/lang/Float;"

    invoke-static {v10, v12, v0, v6, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v13, 0x10

    aput-object v0, v2, v13

    const-string v0, "floatToRawIntBits"

    .line 157
    invoke-static {v10, v12, v0, v6, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v13, 0x11

    aput-object v0, v2, v13

    const-string v0, "intBitsToFloat"

    .line 158
    invoke-static {v10, v12, v0, v3, v6}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v12, 0x12

    aput-object v0, v2, v12

    const-string v0, "doubleToLongBits"

    .line 159
    const-string v12, "Ljava/lang/Double;"

    invoke-static {v10, v12, v0, v7, v5}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v13, 0x13

    aput-object v0, v2, v13

    const-string v0, "doubleToRawLongBits"

    .line 160
    invoke-static {v10, v12, v0, v7, v5}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v13, 0x14

    aput-object v0, v2, v13

    const-string v0, "longBitsToDouble"

    .line 161
    invoke-static {v10, v12, v0, v5, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    const/16 v12, 0x15

    aput-object v0, v2, v12

    .line 162
    const-string v0, "Ljava/lang/StrictMath;"

    invoke-static {v10, v0, v1, v3, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v12

    const/16 v13, 0x16

    aput-object v12, v2, v13

    const/16 v12, 0x17

    .line 163
    invoke-static {v10, v0, v1, v5, v5}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    aput-object v5, v2, v12

    const/16 v5, 0x18

    .line 164
    invoke-static {v10, v0, v1, v6, v6}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0x19

    .line 165
    invoke-static {v10, v0, v1, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x1a

    .line 166
    invoke-static {v10, v0, v8, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v5

    aput-object v5, v2, v1

    const/16 v1, 0x1b

    .line 167
    invoke-static {v10, v0, v9, v4, v3}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x1c

    .line 168
    invoke-static {v10, v0, v11, v7, v7}, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public resolveExecuteInline(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 175
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;

    .line 176
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result v0

    if-ltz v0, :cond_6

    .line 178
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->inlineMethods:[Lcom/android/tools/smali/dexlib2/iface/Method;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    const/4 v2, 0x4

    .line 182
    const-string v3, "Could not determine the correct inline method to use"

    const/4 v4, 0x3

    if-ne v0, v2, :cond_2

    .line 183
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-object p1

    :cond_0
    if-ne p1, v4, :cond_1

    .line 187
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->fastIndexOfMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-object p1

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 192
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 194
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIIMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-object p1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 196
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->isEmptyMethod:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-object p1

    .line 198
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_5
    aget-object p1, v1, v0

    return-object p1

    .line 179
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid method index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
