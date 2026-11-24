.class public final Lcom/dex2c/plus/engine/FastZipModifier;
.super Ljava/lang/Object;
.source "FastZipModifier.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static appendFilesNative(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 19

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_248

    if-eqz v1, :cond_248

    array-length v3, v1

    if-nez v3, :cond_e

    goto/16 :goto_248

    .line 32
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".tmp."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5e

    .line 37
    const/4 v5, 0x0

    :goto_3e
    array-length v6, v1

    if-ge v5, v6, :cond_75

    .line 38
    aget-object v6, v1, v5

    .line 39
    add-int/lit8 v7, v5, 0x1

    aget-object v7, v1, v7

    .line 40
    if-eqz v6, :cond_5b

    if-eqz v7, :cond_5b

    .line 41
    const/16 v8, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_5b
    add-int/lit8 v5, v5, 0x2

    goto :goto_3e

    .line 45
    :cond_5e
    array-length v5, v1

    const/4 v6, 0x0

    :goto_60
    if-ge v6, v5, :cond_75

    aget-object v7, v1, v6

    .line 46
    if-eqz v7, :cond_72

    .line 47
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 53
    :cond_75
    :try_start_75
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_23d

    .line 54
    :try_start_84
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_231

    const-string v7, ".so"

    const-string v8, "lib/"

    const/16 v9, 0x4000

    if-eqz v6, :cond_160

    :try_start_95
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_160

    .line 57
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_231

    .line 58
    :try_start_a4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v12

    .line 59
    new-array v13, v9, [B

    .line 60
    :goto_aa
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_150

    .line 61
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    .line 62
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 63
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14c

    invoke-static {v15}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c7

    .line 64
    goto :goto_aa

    .line 66
    :cond_c7
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 68
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e0

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 69
    :cond_e0
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v9

    if-eqz v9, :cond_ed

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 70
    :cond_ed
    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_fc

    invoke-virtual {v15, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fa

    goto :goto_fc

    :cond_fa
    const/4 v9, 0x0

    goto :goto_fd

    :cond_fc
    :goto_fc
    const/4 v9, 0x1

    .line 71
    :goto_fd
    if-nez v9, :cond_105

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    if-nez v9, :cond_11d

    .line 72
    :cond_105
    invoke-virtual {v11, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 73
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 74
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 75
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 77
    :cond_11d
    invoke-virtual {v1, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 78
    invoke-virtual {v6, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_124
    .catchall {:try_start_a4 .. :try_end_124} :catchall_154

    .line 80
    :goto_124
    :try_start_124
    invoke-virtual {v9, v13}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_12f

    .line 81
    invoke-virtual {v1, v13, v2, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_12e
    .catchall {:try_start_124 .. :try_end_12e} :catchall_13e

    goto :goto_124

    .line 83
    :cond_12f
    if-eqz v9, :cond_134

    :try_start_131
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_134
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 85
    invoke-interface {v5, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_13a
    .catchall {:try_start_131 .. :try_end_13a} :catchall_154

    .line 86
    const/16 v9, 0x4000

    goto/16 :goto_aa

    .line 78
    :catchall_13e
    move-exception v0

    move-object v3, v0

    if-eqz v9, :cond_14b

    :try_start_142
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_146

    goto :goto_14b

    :catchall_146
    move-exception v0

    move-object v5, v0

    :try_start_148
    invoke-static {v3, v5}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_14b
    :goto_14b
    throw v3
    :try_end_14c
    .catchall {:try_start_148 .. :try_end_14c} :catchall_154

    .line 63
    :cond_14c
    const/16 v9, 0x4000

    goto/16 :goto_aa

    .line 87
    :cond_150
    :try_start_150
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_231

    goto :goto_160

    .line 57
    :catchall_154
    move-exception v0

    move-object v3, v0

    :try_start_156
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_15a

    goto :goto_15f

    :catchall_15a
    move-exception v0

    move-object v5, v0

    :try_start_15c
    invoke-static {v3, v5}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_15f
    throw v3

    .line 90
    :cond_160
    :goto_160
    const/16 v6, 0x4000

    new-array v6, v6, [B

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_217

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 93
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_214

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_214

    .line 95
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 97
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1ab

    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a9

    goto :goto_1ab

    :cond_1a9
    const/4 v12, 0x0

    goto :goto_1ac

    :cond_1ab
    :goto_1ab
    const/4 v12, 0x1

    .line 98
    :goto_1ac
    if-eqz v12, :cond_1eb

    .line 99
    invoke-virtual {v11, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 100
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 101
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 102
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 103
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c9
    .catchall {:try_start_15c .. :try_end_1c9} :catchall_231

    .line 105
    :goto_1c9
    :try_start_1c9
    invoke-virtual {v13, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1d4

    .line 106
    invoke-virtual {v12, v6, v2, v14}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1d3
    .catchall {:try_start_1c9 .. :try_end_1d3} :catchall_1df

    goto :goto_1c9

    .line 108
    :cond_1d4
    :try_start_1d4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 109
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setCrc(J)V
    :try_end_1de
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_231

    goto :goto_1eb

    .line 103
    :catchall_1df
    move-exception v0

    move-object v3, v0

    :try_start_1e1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1e5

    goto :goto_1ea

    :catchall_1e5
    move-exception v0

    move-object v5, v0

    :try_start_1e7
    invoke-static {v3, v5}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1ea
    throw v3

    .line 111
    :cond_1eb
    :goto_1eb
    invoke-virtual {v1, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 112
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f3
    .catchall {:try_start_1e7 .. :try_end_1f3} :catchall_231

    .line 114
    :goto_1f3
    :try_start_1f3
    invoke-virtual {v11, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_1fe

    .line 115
    invoke-virtual {v1, v6, v2, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1fd
    .catchall {:try_start_1f3 .. :try_end_1fd} :catchall_208

    goto :goto_1f3

    .line 117
    :cond_1fe
    :try_start_1fe
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 118
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 119
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_207
    .catchall {:try_start_1fe .. :try_end_207} :catchall_231

    goto :goto_215

    .line 112
    :catchall_208
    move-exception v0

    move-object v3, v0

    :try_start_20a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_20d
    .catchall {:try_start_20a .. :try_end_20d} :catchall_20e

    goto :goto_213

    :catchall_20e
    move-exception v0

    move-object v5, v0

    :try_start_210
    invoke-static {v3, v5}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_213
    throw v3

    .line 94
    :cond_214
    const/4 v12, -0x1

    .line 121
    :goto_215
    goto/16 :goto_16c

    .line 122
    :cond_217
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_21a
    .catchall {:try_start_210 .. :try_end_21a} :catchall_231

    .line 123
    :try_start_21a
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_21d} :catch_23d

    .line 128
    nop

    .line 132
    :try_start_21e
    invoke-static {v4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->signApk(Ljava/io/File;)Z
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_222

    .line 134
    goto :goto_223

    .line 133
    :catchall_222
    move-exception v0

    .line 136
    :goto_223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 139
    :cond_22c
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 53
    :catchall_231
    move-exception v0

    move-object v3, v0

    :try_start_233
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_237

    goto :goto_23c

    :catchall_237
    move-exception v0

    move-object v1, v0

    :try_start_239
    invoke-static {v3, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_23c
    throw v3
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23d} :catch_23d

    .line 123
    :catch_23d
    move-exception v0

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_247

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 127
    :cond_247
    return v2

    .line 30
    :cond_248
    :goto_248
    return v2
.end method

.method public static applyRuleReplacementsNative(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 143
    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    if-nez p2, :cond_7

    goto :goto_21

    .line 146
    :cond_7
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    nop

    .line 148
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_20

    .line 149
    aget-object v2, p1, v1

    if-eqz v2, :cond_1d

    aget-object v3, p2, v1

    if-eqz v3, :cond_1d

    .line 150
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 148
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 153
    :cond_20
    return-object p0

    .line 144
    :cond_21
    :goto_21
    return-object p0
.end method

.method public static bytesToHexNative([B)Ljava/lang/String;
    .registers 7

    .line 157
    if-nez p0, :cond_5

    .line 158
    const-string p0, ""

    return-object p0

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_2b

    aget-byte v4, p0, v3

    .line 162
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 164
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeFileSha256Native(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 181
    const-string v0, ""

    if-nez p0, :cond_5

    .line 182
    return-object v0

    .line 184
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_4a

    .line 188
    :cond_17
    :try_start_17
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_48

    .line 189
    :try_start_1c
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 190
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 192
    :goto_26
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_26

    .line 195
    :cond_32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_3e

    .line 196
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48

    .line 195
    return-object v1

    .line 188
    :catchall_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-static {v1, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    .line 196
    :catch_48
    move-exception p0

    .line 197
    return-object v0

    .line 186
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static computePackageSignatureNative([[B[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 203
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    .line 205
    array-length v2, p0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_17

    aget-object v4, p0, v3

    .line 206
    if-eqz v4, :cond_14

    .line 207
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 211
    :cond_17
    if-eqz p1, :cond_2c

    .line 212
    array-length p0, p1

    :goto_1a
    if-ge v1, p0, :cond_2c

    aget-object v2, p1, v1

    .line 213
    if-eqz v2, :cond_29

    .line 214
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 212
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 218
    :cond_2c
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object p0

    .line 219
    :catch_35
    move-exception p0

    .line 220
    const-string p0, ""

    return-object p0
.end method

.method public static copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 225
    const/4 v0, 0x0

    if-eqz p0, :cond_68

    if-nez p1, :cond_6

    goto :goto_68

    .line 228
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_67

    .line 232
    :cond_18
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 234
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_65

    .line 238
    :try_start_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_5b

    .line 239
    const/16 p0, 0x4000

    :try_start_38
    new-array p0, p0, [B

    .line 241
    :goto_3a
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 242
    invoke-virtual {v1, p0, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3a

    .line 244
    :cond_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_51

    .line 245
    nop

    .line 246
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5b

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_65

    .line 245
    const/4 p0, 0x1

    return p0

    .line 237
    :catchall_51
    move-exception p0

    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v1

    :try_start_57
    invoke-static {p0, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p0

    :try_start_5c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    :try_start_61
    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_64
    throw p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_65

    .line 246
    :catch_65
    move-exception p0

    .line 247
    return v0

    .line 230
    :cond_67
    :goto_67
    return v0

    .line 226
    :cond_68
    :goto_68
    return v0
.end method

.method public static deleteDirNative(Ljava/lang/String;)V
    .registers 5

    .line 252
    if-nez p0, :cond_3

    .line 253
    return-void

    .line 255
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_f

    .line 257
    return-void

    .line 259
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 261
    if-eqz p0, :cond_2b

    .line 262
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2b

    aget-object v3, p0, v2

    .line 263
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dex2c/plus/engine/FastZipModifier;->deleteDirNative(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 267
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 268
    return-void
.end method

.method public static extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .line 271
    const/4 v0, 0x0

    if-eqz p0, :cond_61

    if-nez p1, :cond_6

    goto :goto_61

    .line 274
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_5f

    .line 275
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_55

    .line 276
    if-nez p0, :cond_16

    .line 277
    nop

    .line 288
    :try_start_12
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_5f

    .line 277
    return-object v0

    .line 279
    :cond_16
    :try_start_16
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_55

    .line 280
    :try_start_1a
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_49

    .line 281
    const/16 v2, 0x4000

    :try_start_21
    new-array v2, v2, [B

    .line 283
    :goto_23
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2f

    .line 284
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_23

    .line 286
    :cond_2f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3f

    .line 287
    :try_start_33
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    if-eqz p0, :cond_3b

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 288
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_5f

    .line 286
    return-object v2

    .line 279
    :catchall_3f
    move-exception v2

    :try_start_40
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception p1

    :try_start_45
    invoke-static {v2, p1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_48
    throw v2
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    if-eqz p0, :cond_54

    :try_start_4c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception p0

    :try_start_51
    invoke-static {p1, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 274
    :catchall_55
    move-exception p0

    :try_start_56
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception p1

    :try_start_5b
    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5e
    throw p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_5f

    .line 288
    :catch_5f
    move-exception p0

    .line 289
    return-object v0

    .line 272
    :cond_61
    :goto_61
    return-object v0
.end method

.method public static hexToBytesNative(Ljava/lang/String;)[B
    .registers 8

    .line 168
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    goto :goto_37

    .line 171
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 172
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 173
    nop

    :goto_15
    if-ge v0, v1, :cond_36

    .line 174
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 175
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 173
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 177
    :cond_36
    return-object v2

    .line 169
    :cond_37
    :goto_37
    new-array p0, v0, [B

    return-object p0
.end method

.method public static normalizeClassDescriptorNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 294
    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_56

    .line 297
    :cond_9
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 298
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_36

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 301
    :cond_36
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    :cond_55
    return-object p0

    .line 295
    :cond_56
    :goto_56
    const-string p0, ""

    return-object p0
.end method

.method public static normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 308
    if-nez p0, :cond_5

    .line 309
    const-string p0, ""

    return-object p0

    .line 311
    :cond_5
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 312
    :goto_11
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 315
    :cond_1f
    return-object p0
.end method

.method public static parseAxmlTargetNative(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    .line 443
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/dex2c/plus/engine/FastZipModifier;->extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 444
    const/4 v0, 0x0

    if-eqz p0, :cond_10e

    array-length v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_10

    goto/16 :goto_10e

    .line 448
    :cond_10
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    const/16 v3, 0x13

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/2addr v3, v4

    const/16 v5, 0x12

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/16 v5, 0x11

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .line 450
    const/16 v5, 0x1b

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    const/16 v7, 0x1a

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    or-int/2addr v5, v7

    const/16 v7, 0x19

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v2

    or-int/2addr v5, v7

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 451
    const/16 v7, 0x17

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v4

    const/16 v8, 0x16

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v6

    or-int/2addr v7, v8

    const/16 v8, 0x15

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    const/16 v8, 0x14

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 452
    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_75

    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    .line 454
    :goto_76
    nop

    .line 455
    add-int/2addr v5, v2

    .line 456
    const/4 v8, 0x0

    :goto_79
    if-ge v8, v3, :cond_101

    .line 457
    mul-int/lit8 v9, v8, 0x4

    const/16 v10, 0x1c

    add-int/2addr v10, v9

    .line 458
    add-int/lit8 v9, v10, 0x4

    array-length v11, p0

    if-le v9, v11, :cond_87

    goto/16 :goto_101

    .line 459
    :cond_87
    add-int/lit8 v9, v10, 0x3

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    add-int/lit8 v11, v10, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v9, v11

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v9, v11

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 460
    add-int/2addr v9, v5

    .line 461
    array-length v10, p0

    if-lt v9, v10, :cond_a8

    goto :goto_fd

    .line 462
    :cond_a8
    if-eqz v7, :cond_dc

    .line 463
    nop

    .line 464
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 465
    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_b7

    add-int/lit8 v10, v10, 0x1

    .line 466
    :cond_b7
    add-int/lit8 v9, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    .line 467
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_cc

    and-int/lit8 v10, v10, 0x7f

    shl-int/2addr v10, v2

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v10, v9

    move v9, v11

    .line 468
    :cond_cc
    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_db

    .line 469
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_db
    goto :goto_fd

    .line 472
    :cond_dc
    add-int/lit8 v10, v9, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    aget-byte v11, p0, v9

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 473
    add-int/lit8 v9, v9, 0x2

    .line 474
    if-lez v10, :cond_fd

    mul-int/lit8 v10, v10, 0x2

    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_fd

    .line 475
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_fd
    :goto_fd
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_79

    .line 479
    :cond_101
    :goto_101
    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_109} :catch_10a

    return-object p0

    .line 480
    :catch_10a
    move-exception p0

    .line 481
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 445
    :cond_10e
    :goto_10e
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public static resolveAssetsLibEntryPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 319
    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {p1}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 322
    return-object p1

    .line 324
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 325
    return-object p0

    .line 327
    :cond_16
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeZipFakeEncryptionNative(Ljava/lang/String;)Z
    .registers 20

    .line 334
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 335
    return v1

    .line 337
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_16f

    .line 341
    :cond_19
    :try_start_19
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_16d

    .line 342
    :try_start_20
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_161

    .line 343
    const-wide/16 v6, 0x16

    cmp-long v0, v4, v6

    if-gez v0, :cond_2f

    .line 344
    nop

    .line 409
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_16d

    .line 344
    return v1

    .line 346
    :cond_2f
    nop

    .line 347
    sub-long v6, v4, v6

    const-wide/32 v8, 0xffff

    sub-long v8, v6, v8

    const-wide/16 v10, 0x0

    :try_start_39
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 348
    nop

    .line 349
    nop

    :goto_3f
    const-wide/16 v10, -0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6c

    .line 350
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 351
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 352
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 353
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    .line 354
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_161

    .line 355
    const/16 v14, 0x50

    if-ne v0, v14, :cond_68

    const/16 v0, 0x4b

    if-ne v2, v0, :cond_68

    const/4 v0, 0x5

    if-ne v12, v0, :cond_68

    const/4 v0, 0x6

    if-ne v13, v0, :cond_68

    .line 356
    nop

    .line 357
    goto :goto_6d

    .line 349
    :cond_68
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    goto :goto_3f

    :cond_6c
    move-wide v6, v10

    .line 360
    :goto_6d
    cmp-long v0, v6, v10

    if-nez v0, :cond_76

    .line 361
    nop

    .line 409
    :try_start_72
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_16d

    .line 361
    return v1

    .line 364
    :cond_76
    const-wide/16 v8, 0xa

    add-long/2addr v8, v6

    :try_start_79
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 365
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 366
    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 367
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 369
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v0, :cond_15b

    .line 371
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 372
    const-wide/16 v12, 0x2e

    add-long/2addr v12, v10

    cmp-long v7, v12, v4

    if-lez v7, :cond_b0

    goto/16 :goto_15b

    .line 373
    :cond_b0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 374
    const v14, 0x2014b50

    if-eq v7, v14, :cond_bf

    goto/16 :goto_15b

    .line 376
    :cond_bf
    const-wide/16 v14, 0x8

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 377
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 378
    and-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_df

    .line 379
    and-int/lit8 v7, v7, -0x2

    .line 380
    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 381
    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 384
    :cond_df
    const-wide/16 v14, 0x1c

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 385
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 386
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v14

    and-int/2addr v14, v2

    .line 387
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v15

    and-int/2addr v15, v2

    .line 389
    const-wide/16 v16, 0x2a

    add-long v10, v10, v16

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 390
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    .line 392
    const-wide/16 v16, 0x1e

    add-long v16, v10, v16

    cmp-long v18, v16, v4

    if-gtz v18, :cond_149

    .line 393
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 394
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    .line 395
    const v9, 0x4034b50

    if-ne v8, v9, :cond_149

    .line 396
    const-wide/16 v8, 0x6

    add-long/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 397
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int/2addr v8, v2

    .line 398
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_149

    .line 399
    and-int/lit8 v8, v8, -0x2

    .line 400
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 401
    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 406
    :cond_149
    int-to-long v7, v7

    add-long/2addr v12, v7

    int-to-long v7, v14

    add-long/2addr v12, v7

    int-to-long v7, v15

    add-long/2addr v12, v7

    invoke-virtual {v3, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_152
    .catchall {:try_start_79 .. :try_end_152} :catchall_161

    .line 370
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0xffffffffL

    goto/16 :goto_a1

    .line 408
    :cond_15b
    :goto_15b
    nop

    .line 409
    :try_start_15c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_16d

    .line 408
    const/4 v0, 0x1

    return v0

    .line 341
    :catchall_161
    move-exception v0

    move-object v2, v0

    :try_start_163
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    goto :goto_16c

    :catchall_167
    move-exception v0

    move-object v3, v0

    :try_start_169
    invoke-static {v2, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_16c
    throw v2
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16d} :catch_16d

    .line 409
    :catch_16d
    move-exception v0

    .line 410
    return v1

    .line 339
    :cond_16f
    :goto_16f
    return v1
.end method

.method public static toR8IdentifierNative(I)Ljava/lang/String;
    .registers 4

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    nop

    .line 417
    :goto_6
    if-ltz p0, :cond_16

    .line 418
    rem-int/lit8 v1, p0, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 419
    div-int/lit8 p0, p0, 0x1a

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    .line 421
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeBytesNative(Ljava/lang/String;[B)Z
    .registers 5

    .line 425
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-nez p1, :cond_6

    goto :goto_37

    .line 428
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 430
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 431
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 433
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_35

    .line 434
    :try_start_1f
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 435
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2b

    .line 436
    nop

    .line 437
    :try_start_26
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_35

    .line 436
    const/4 p0, 0x1

    return p0

    .line 433
    :catchall_2b
    move-exception p1

    :try_start_2c
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p0

    :try_start_31
    invoke-static {p1, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_34
    throw p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35

    .line 437
    :catch_35
    move-exception p0

    .line 438
    return v0

    .line 426
    :cond_37
    :goto_37
    return v0
.end method
