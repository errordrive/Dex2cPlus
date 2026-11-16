.class Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;
.super Ljava/lang/Object;
.source "Dex2CTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/Dex2CTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnitStringPool"
.end annotation


# instance fields
.field private final encrypt:Z

.field private final pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    .line 80
    iput-boolean p1, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->encrypt:Z

    return-void
.end method


# virtual methods
.method ref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    const-string p1, ""

    .line 85
    :goto_0
    iget-boolean v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->encrypt:Z

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->-$$Nest$smescapeCpp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "__d2c_s"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method writeDefinitions(Ljava/io/Writer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->encrypt:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->pool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    invoke-static {v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->-$$Nest$smtoModifiedUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    array-length v4, v3

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, 0x45d9f3b

    mul-int v5, v5, v4

    xor-int/2addr v2, v5

    const v5, -0x5a3c618f

    xor-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    const/16 v2, 0x5a

    .line 106
    :cond_1
    const-string v5, "static const char* __d2c_s"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    const-string v1, "() {\n    static char _d["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v4, 0x1

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    const-string v1, "];\n    static volatile bool _u = false;\n    if (!_u) {\n        static const unsigned char _e["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 111
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    const-string v5, "] = {"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-nez v4, :cond_2

    .line 114
    const-string v1, "0x00"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    if-lez v6, :cond_3

    .line 117
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    mul-int/lit8 v7, v6, 0x25

    add-int/2addr v7, v2

    xor-int/lit8 v8, v6, 0x5a

    add-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 119
    aget-byte v8, v3, v6

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    .line 120
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v5

    const-string v7, "0x%02X"

    invoke-static {v8, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    const-string v1, "};\n        for (int _i = 0; _i < "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    const-string v1, "; ++_i) _d[_i] = (char)(_e[_i] ^ (("

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 127
    const-string v1, " + _i * 37 + (_i ^ 0x5A)) & 0xFF));\n        _d["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    const-string v1, "] = \'\\0\';\n        _u = true;\n    }\n    return _d;\n}\n\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-void
.end method
