.class Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator<",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        ">;"
    }
.end annotation


# instance fields
.field private codeAddress:I

.field private lineNumber:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

.field final synthetic val$lastInstructionAddress:I

.field final synthetic val$lineNumberStart:I

.field final synthetic val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;III[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iput p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$lineNumberStart:I

    iput p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$lastInstructionAddress:I

    iput-object p6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    .line 179
    iput p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
    .locals 13
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 183
    :goto_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$lastInstructionAddress:I

    if-gt v0, v1, :cond_8

    .line 184
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, -0xa

    .line 279
    iget p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    div-int/lit8 v1, v0, 0xf

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    .line 280
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    rem-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    .line 281
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$lastInstructionAddress:I

    if-le p1, v0, :cond_7

    .line 282
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    return-object p1

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    sub-int/2addr p1, v1

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 270
    :pswitch_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    invoke-direct {p1, v0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEpilogueBegin;-><init>(I)V

    return-object p1

    .line 267
    :pswitch_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutablePrologueEnd;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    invoke-direct {p1, v0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutablePrologueEnd;-><init>(I)V

    return-object p1

    .line 251
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    if-ltz v3, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    array-length v0, p1

    if-ge v3, v0, :cond_0

    .line 254
    aget-object p1, p1, v3

    goto :goto_1

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->access$100()Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    move-result-object p1

    .line 258
    :goto_1
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableRestartLocal;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    .line 259
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableRestartLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_1

    .line 261
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 262
    aput-object v1, p1, v3

    :cond_1
    return-object v1

    .line 224
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v6

    const/4 p1, 0x0

    if-ltz v6, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    array-length v2, v0

    if-ge v6, v2, :cond_2

    .line 229
    aget-object v0, v0, v6

    goto :goto_2

    .line 231
    :cond_2
    invoke-static {}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->access$100()Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    :goto_2
    instance-of v2, v0, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    if-eqz v2, :cond_3

    .line 236
    invoke-static {}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->access$100()Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    move-result-object v0

    goto :goto_3

    :cond_3
    move p1, v1

    .line 242
    :goto_3
    new-instance v4, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;

    iget v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    .line 243
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    aput-object v4, p1, v6

    :cond_4
    return-object v4

    .line 211
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v9

    .line 212
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    sub-int/2addr p1, v1

    .line 214
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Ljava/lang/String;

    .line 216
    new-instance v7, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    iget v8, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    invoke-direct/range {v7 .. v12}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v9, :cond_5

    .line 218
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    array-length v0, p1

    if-ge v9, v0, :cond_5

    .line 219
    aput-object v7, p1, v9

    :cond_5
    return-object v7

    .line 200
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    .line 201
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 203
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_6

    .line 205
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->val$locals:[Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    array-length v0, p1

    if-ge v3, v0, :cond_6

    .line 206
    aput-object v1, p1, v3

    :cond_6
    return-object v1

    .line 195
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v0

    .line 196
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    goto/16 :goto_0

    .line 190
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 191
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    goto/16 :goto_0

    .line 187
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    return-object p1

    .line 284
    :cond_7
    new-instance p1, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->codeAddress:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->lineNumber:I

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;-><init>(II)V

    return-object p1

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    move-result-object p1

    return-object p1
.end method
