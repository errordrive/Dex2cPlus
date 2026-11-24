.class public final Lcom/dex2c/plus/engine/FastZipModifier;
.super Ljava/lang/Object;
.source "FastZipModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static appendFilesNative(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 23

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_2ce

    if-eqz v1, :cond_2ce

    array-length v3, v1

    if-nez v3, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_2cf

    .line 106
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v4, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".tmp."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5e

    .line 111
    const/4 v5, 0x0

    :goto_3e
    array-length v6, v1

    if-ge v5, v6, :cond_75

    .line 112
    aget-object v6, v1, v5

    .line 113
    add-int/lit8 v7, v5, 0x1

    aget-object v7, v1, v7

    .line 114
    if-eqz v6, :cond_5b

    if-eqz v7, :cond_5b

    .line 115
    const/16 v8, 0x5c

    const/16 v9, 0x2f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_5b
    add-int/lit8 v5, v5, 0x2

    goto :goto_3e

    .line 119
    :cond_5e
    array-length v5, v1

    const/4 v6, 0x0

    :goto_60
    if-ge v6, v5, :cond_75

    aget-object v7, v1, v6

    .line 120
    if-eqz v7, :cond_72

    .line 121
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 128
    :cond_75
    :try_start_75
    new-instance v1, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v5}, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8b} :catch_2c1

    .line 130
    :try_start_8b
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_2b2

    const-string v11, ".so"

    const-string v12, "lib/"

    if-eqz v8, :cond_1b2

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v8, v15, v17

    if-lez v8, :cond_1b2

    .line 133
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_2b2

    .line 134
    :try_start_a9
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v15

    .line 135
    new-array v14, v7, [B

    .line 136
    :goto_af
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_19c

    .line 137
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 138
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_191

    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d0

    .line 140
    const/high16 v7, 0x10000

    goto :goto_af

    .line 142
    :cond_d0
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 143
    move-object/from16 v19, v3

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 144
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2
    :try_end_e2
    .catchall {:try_start_a9 .. :try_end_e2} :catchall_1a5

    if-eqz v2, :cond_f1

    :try_start_e4
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_ec

    goto :goto_f1

    .line 133
    :catchall_ec
    move-exception v0

    move-object v1, v0

    move-object v11, v4

    goto/16 :goto_1a8

    .line 145
    :cond_f1
    :goto_f1
    :try_start_f1
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_1a5

    if-nez v2, :cond_100

    :try_start_f7
    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fe

    goto :goto_100

    :cond_fe
    const/4 v2, 0x0

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v2, 0x1

    .line 146
    :goto_101
    if-nez v2, :cond_10c

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3
    :try_end_107
    .catchall {:try_start_f7 .. :try_end_107} :catchall_ec

    if-nez v3, :cond_10a

    goto :goto_10c

    :cond_10a
    const/4 v3, 0x0

    goto :goto_10d

    :cond_10c
    :goto_10c
    const/4 v3, 0x1

    .line 147
    :goto_10d
    if-eqz v3, :cond_141

    .line 148
    const/4 v3, 0x0

    :try_start_110
    invoke-virtual {v13, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 149
    move-object/from16 v20, v11

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 150
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 151
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 152
    if-eqz v2, :cond_12f

    const/16 v2, 0x1000

    goto :goto_130

    :cond_12f
    const/4 v2, 0x4

    .line 153
    :goto_130
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v10
    :try_end_134
    .catchall {:try_start_110 .. :try_end_134} :catchall_1a5

    move-object v11, v4

    :try_start_135
    invoke-virtual {v1}, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->getCount()J

    move-result-wide v3

    invoke-static {v10, v3, v4, v7, v2}, Lcom/dex2c/plus/engine/FastZipModifier;->buildAlignedExtra([BJLjava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 154
    goto :goto_15a

    .line 155
    :cond_141
    move-object/from16 v20, v11

    move-object v11, v4

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 156
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    if-eqz v2, :cond_15a

    .line 157
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dex2c/plus/engine/FastZipModifier;->cleanAlignmentExtra([B)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 160
    :cond_15a
    :goto_15a
    invoke-virtual {v5, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 161
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_161
    .catchall {:try_start_135 .. :try_end_161} :catchall_18f

    .line 163
    :goto_161
    :try_start_161
    invoke-virtual {v2, v14}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_16d

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v5, v14, v9, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_16c
    .catchall {:try_start_161 .. :try_end_16c} :catchall_181

    goto :goto_161

    .line 166
    :cond_16d
    if-eqz v2, :cond_172

    :try_start_16f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_172
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 168
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_178
    .catchall {:try_start_16f .. :try_end_178} :catchall_18f

    .line 169
    move-object v4, v11

    move-object/from16 v3, v19

    move-object/from16 v11, v20

    const/high16 v7, 0x10000

    goto/16 :goto_af

    .line 161
    :catchall_181
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_18e

    :try_start_185
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catchall {:try_start_185 .. :try_end_188} :catchall_189

    goto :goto_18e

    :catchall_189
    move-exception v0

    move-object v2, v0

    :try_start_18b
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_18e
    :goto_18e
    throw v1
    :try_end_18f
    .catchall {:try_start_18b .. :try_end_18f} :catchall_18f

    .line 133
    :catchall_18f
    move-exception v0

    goto :goto_1a7

    .line 139
    :cond_191
    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object v11, v4

    move-object/from16 v11, v20

    const/high16 v7, 0x10000

    goto/16 :goto_af

    .line 170
    :cond_19c
    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object v11, v4

    :try_start_1a1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_2b0

    goto :goto_1b7

    .line 133
    :catchall_1a5
    move-exception v0

    move-object v11, v4

    :goto_1a7
    move-object v1, v0

    :goto_1a8
    :try_start_1a8
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1ac

    goto :goto_1b1

    :catchall_1ac
    move-exception v0

    move-object v2, v0

    :try_start_1ae
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1b1
    throw v1

    .line 132
    :cond_1b2
    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object v11, v4

    .line 173
    :goto_1b7
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_294

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 176
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_289

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_289

    .line 178
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 180
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_204

    move-object/from16 v9, v20

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_202

    goto :goto_206

    :cond_202
    const/4 v10, 0x0

    goto :goto_207

    :cond_204
    move-object/from16 v9, v20

    :goto_206
    const/4 v10, 0x1

    .line 181
    :goto_207
    if-eqz v10, :cond_258

    .line 182
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 184
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 185
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 186
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_225
    .catchall {:try_start_1ae .. :try_end_225} :catchall_2b0

    .line 188
    :goto_225
    :try_start_225
    invoke-virtual {v13, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_231

    .line 189
    const/4 v15, 0x0

    invoke-virtual {v10, v2, v15, v14}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_230
    .catchall {:try_start_225 .. :try_end_230} :catchall_24c

    goto :goto_225

    .line 191
    :cond_231
    :try_start_231
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 192
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 193
    invoke-virtual {v1}, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->getCount()J

    move-result-wide v13

    const/4 v10, 0x0

    const/16 v15, 0x1000

    invoke-static {v10, v13, v14, v7, v15}, Lcom/dex2c/plus/engine/FastZipModifier;->buildAlignedExtra([BJLjava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipEntry;->setExtra([B)V
    :try_end_249
    .catchall {:try_start_231 .. :try_end_249} :catchall_2b0

    .line 194
    const/16 v3, 0x8

    goto :goto_25f

    .line 186
    :catchall_24c
    move-exception v0

    move-object v1, v0

    :try_start_24e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_252

    goto :goto_257

    :catchall_252
    move-exception v0

    move-object v2, v0

    :try_start_254
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_257
    throw v1

    .line 195
    :cond_258
    const/16 v15, 0x1000

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 197
    :goto_25f
    invoke-virtual {v5, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 198
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_267
    .catchall {:try_start_254 .. :try_end_267} :catchall_2b0

    .line 200
    :goto_267
    :try_start_267
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_273

    .line 201
    const/4 v13, 0x0

    invoke-virtual {v5, v2, v13, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_272
    .catchall {:try_start_267 .. :try_end_272} :catchall_27d

    goto :goto_267

    .line 203
    :cond_273
    :try_start_273
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 204
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 205
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27c
    .catchall {:try_start_273 .. :try_end_27c} :catchall_2b0

    goto :goto_290

    .line 198
    :catchall_27d
    move-exception v0

    move-object v1, v0

    :try_start_27f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_282
    .catchall {:try_start_27f .. :try_end_282} :catchall_283

    goto :goto_288

    :catchall_283
    move-exception v0

    move-object v2, v0

    :try_start_285
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_288
    throw v1

    .line 177
    :cond_289
    move-object/from16 v9, v20

    const/16 v3, 0x8

    const/4 v10, -0x1

    const/16 v15, 0x1000

    .line 207
    :goto_290
    move-object/from16 v20, v9

    goto/16 :goto_1c3

    .line 208
    :cond_294
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_297
    .catchall {:try_start_285 .. :try_end_297} :catchall_2b0

    .line 209
    :try_start_297
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29a} :catch_2bf

    .line 215
    nop

    .line 219
    :try_start_29b
    invoke-static {v11}, Lcom/dex2c/plus/engine/ApkSignerHelper;->signApk(Ljava/io/File;)Z
    :try_end_29e
    .catchall {:try_start_29b .. :try_end_29e} :catchall_29f

    .line 221
    goto :goto_2a0

    .line 220
    :catchall_29f
    move-exception v0

    .line 223
    :goto_2a0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 224
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 226
    :cond_2a9
    move-object/from16 v1, v19

    invoke-virtual {v11, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 129
    :catchall_2b0
    move-exception v0

    goto :goto_2b4

    :catchall_2b2
    move-exception v0

    move-object v11, v4

    :goto_2b4
    move-object v1, v0

    :try_start_2b5
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2b8
    .catchall {:try_start_2b5 .. :try_end_2b8} :catchall_2b9

    goto :goto_2be

    :catchall_2b9
    move-exception v0

    move-object v2, v0

    :try_start_2bb
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2be
    throw v1
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2bf} :catch_2bf

    .line 210
    :catch_2bf
    move-exception v0

    goto :goto_2c3

    :catch_2c1
    move-exception v0

    move-object v11, v4

    .line 211
    :goto_2c3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 212
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 214
    :cond_2cc
    const/4 v1, 0x0

    return v1

    .line 103
    :cond_2ce
    const/4 v1, 0x0

    .line 104
    :goto_2cf
    return v1
.end method

.method public static applyRuleReplacementsNative(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 230
    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-nez p2, :cond_7

    goto :goto_25

    .line 233
    :cond_7
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    nop

    .line 235
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 236
    aget-object v2, p1, v1

    if-eqz v2, :cond_21

    aget-object v2, p2, v1

    if-eqz v2, :cond_21

    .line 237
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 235
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 240
    :cond_24
    return-object p0

    .line 231
    :cond_25
    :goto_25
    return-object p0
.end method

.method public static buildAlignedExtra([BJLjava/lang/String;I)[B
    .registers 9

    .line 75
    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->cleanAlignmentExtra([B)[B

    move-result-object p0

    .line 76
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    array-length v1, p0

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 77
    :goto_a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 78
    const-wide/16 v2, 0x1e

    add-long/2addr p1, v2

    array-length p3, p3

    int-to-long v2, p3

    add-long/2addr p1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 79
    int-to-long v1, p4

    rem-long/2addr p1, v1

    sub-long p1, v1, p1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    .line 80
    if-nez p2, :cond_21

    .line 81
    return-object p0

    .line 83
    :cond_21
    const/4 p1, 0x4

    if-ge p2, p1, :cond_25

    .line 84
    add-int/2addr p2, p4

    .line 86
    :cond_25
    add-int/lit8 p1, p2, -0x4

    .line 87
    new-array p3, p2, [B

    .line 88
    const/16 p4, 0x35

    aput-byte p4, p3, v0

    .line 89
    const/4 p4, 0x1

    const/16 v1, -0x27

    aput-byte v1, p3, p4

    .line 90
    and-int/lit16 p4, p1, 0xff

    int-to-byte p4, p4

    const/4 v1, 0x2

    aput-byte p4, p3, v1

    .line 91
    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p4, 0x3

    aput-byte p1, p3, p4

    .line 93
    if-eqz p0, :cond_53

    array-length p1, p0

    if-nez p1, :cond_46

    goto :goto_53

    .line 96
    :cond_46
    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [B

    .line 97
    array-length p4, p0

    invoke-static {p0, v0, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length p0, p0

    invoke-static {p3, v0, p1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object p1

    .line 94
    :cond_53
    :goto_53
    return-object p3
.end method

.method public static bytesToHexNative([B)Ljava/lang/String;
    .registers 7

    .line 244
    if-nez p0, :cond_5

    .line 245
    const-string p0, ""

    return-object p0

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_2b

    aget-byte v4, p0, v3

    .line 249
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 251
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cleanAlignmentExtra([B)[B
    .registers 8

    .line 53
    if-eqz p0, :cond_4a

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    goto :goto_4a

    .line 56
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_d
    add-int/lit8 v3, v2, 0x4

    array-length v4, p0

    if-gt v3, v4, :cond_40

    .line 59
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 60
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 61
    add-int/2addr v4, v1

    .line 62
    add-int v5, v2, v4

    array-length v6, p0

    if-le v5, v6, :cond_35

    .line 63
    goto :goto_40

    .line 65
    :cond_35
    const v6, 0xd935

    if-eq v3, v6, :cond_3d

    .line 66
    invoke-virtual {v0, p0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    :cond_3d
    nop

    .line 69
    move v2, v5

    goto :goto_d

    .line 70
    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 71
    array-length v0, p0

    if-lez v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    return-object p0

    .line 54
    :cond_4a
    :goto_4a
    return-object p0
.end method

.method public static computeFileSha256Native(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 268
    const-string v0, ""

    if-nez p0, :cond_5

    .line 269
    return-object v0

    .line 271
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_4a

    .line 275
    :cond_17
    :try_start_17
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_48

    .line 276
    :try_start_1c
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 277
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 279
    :goto_26
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    .line 280
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_26

    .line 282
    :cond_32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_3e

    .line 283
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48

    .line 282
    return-object v1

    .line 275
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

    .line 283
    :catch_48
    move-exception p0

    .line 284
    return-object v0

    .line 273
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static computePackageSignatureNative([[B[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 290
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 291
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    .line 292
    array-length v2, p0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_17

    aget-object v4, p0, v3

    .line 293
    if-eqz v4, :cond_14

    .line 294
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 292
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 298
    :cond_17
    if-eqz p1, :cond_2c

    .line 299
    array-length p0, p1

    :goto_1a
    if-ge v1, p0, :cond_2c

    aget-object v2, p1, v1

    .line 300
    if-eqz v2, :cond_29

    .line 301
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 299
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 305
    :cond_2c
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object p0

    .line 306
    :catch_35
    move-exception p0

    .line 307
    const-string p0, ""

    return-object p0
.end method

.method public static copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 312
    const/4 v0, 0x0

    if-eqz p0, :cond_68

    if-nez p1, :cond_6

    goto :goto_68

    .line 315
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_67

    .line 319
    :cond_18
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 321
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_65

    .line 325
    :try_start_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_5b

    .line 326
    const/16 p0, 0x4000

    :try_start_38
    new-array p0, p0, [B

    .line 328
    :goto_3a
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 329
    invoke-virtual {v1, p0, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3a

    .line 331
    :cond_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_51

    .line 332
    nop

    .line 333
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5b

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_65

    .line 332
    const/4 p0, 0x1

    return p0

    .line 324
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

    .line 333
    :catch_65
    move-exception p0

    .line 334
    return v0

    .line 317
    :cond_67
    :goto_67
    return v0

    .line 313
    :cond_68
    :goto_68
    return v0
.end method

.method public static deleteDirNative(Ljava/lang/String;)V
    .registers 5

    .line 339
    if-nez p0, :cond_3

    .line 340
    return-void

    .line 342
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_f

    .line 344
    return-void

    .line 346
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 348
    if-eqz p0, :cond_2b

    .line 349
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2b

    aget-object v3, p0, v2

    .line 350
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dex2c/plus/engine/FastZipModifier;->deleteDirNative(Ljava/lang/String;)V

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 354
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 355
    return-void
.end method

.method public static extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .line 358
    const/4 v0, 0x0

    if-eqz p0, :cond_61

    if-nez p1, :cond_6

    goto :goto_61

    .line 361
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_5f

    .line 362
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_55

    .line 363
    if-nez p0, :cond_16

    .line 364
    nop

    .line 375
    :try_start_12
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_5f

    .line 364
    return-object v0

    .line 366
    :cond_16
    :try_start_16
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_55

    .line 367
    :try_start_1a
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_49

    .line 368
    const/16 v2, 0x4000

    :try_start_21
    new-array v2, v2, [B

    .line 370
    :goto_23
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2f

    .line 371
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_23

    .line 373
    :cond_2f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3f

    .line 374
    :try_start_33
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    if-eqz p0, :cond_3b

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 375
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_5f

    .line 373
    return-object v2

    .line 366
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

    .line 361
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

    .line 375
    :catch_5f
    move-exception p0

    .line 376
    return-object v0

    .line 359
    :cond_61
    :goto_61
    return-object v0
.end method

.method public static hexToBytesNative(Ljava/lang/String;)[B
    .registers 8

    .line 255
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    goto :goto_37

    .line 258
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 259
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 260
    nop

    :goto_15
    if-ge v0, v1, :cond_36

    .line 261
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 262
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 260
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 264
    :cond_36
    return-object v2

    .line 256
    :cond_37
    :goto_37
    new-array p0, v0, [B

    return-object p0
.end method

.method public static normalizeClassDescriptorNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 381
    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_56

    .line 384
    :cond_9
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 385
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_36

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 388
    :cond_36
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    :cond_55
    return-object p0

    .line 382
    :cond_56
    :goto_56
    const-string p0, ""

    return-object p0
.end method

.method public static normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 395
    if-nez p0, :cond_5

    .line 396
    const-string p0, ""

    return-object p0

    .line 398
    :cond_5
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 399
    :goto_11
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 402
    :cond_1f
    return-object p0
.end method

.method public static parseAxmlTargetNative(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    .line 530
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/dex2c/plus/engine/FastZipModifier;->extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 531
    const/4 v0, 0x0

    if-eqz p0, :cond_10e

    array-length v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_10

    goto/16 :goto_10e

    .line 535
    :cond_10
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
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

    .line 537
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

    .line 538
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

    .line 539
    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_75

    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    .line 541
    :goto_76
    nop

    .line 542
    add-int/2addr v5, v2

    .line 543
    const/4 v8, 0x0

    :goto_79
    if-ge v8, v3, :cond_101

    .line 544
    mul-int/lit8 v9, v8, 0x4

    const/16 v10, 0x1c

    add-int/2addr v10, v9

    .line 545
    add-int/lit8 v9, v10, 0x4

    array-length v11, p0

    if-le v9, v11, :cond_87

    goto/16 :goto_101

    .line 546
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

    .line 547
    add-int/2addr v9, v5

    .line 548
    array-length v10, p0

    if-lt v9, v10, :cond_a8

    goto :goto_fd

    .line 549
    :cond_a8
    if-eqz v7, :cond_dc

    .line 550
    nop

    .line 551
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 552
    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_b7

    add-int/lit8 v10, v10, 0x1

    .line 553
    :cond_b7
    add-int/lit8 v9, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    .line 554
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_cc

    and-int/lit8 v10, v10, 0x7f

    shl-int/2addr v10, v2

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v10, v9

    move v9, v11

    .line 555
    :cond_cc
    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_db

    .line 556
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_db
    goto :goto_fd

    .line 559
    :cond_dc
    add-int/lit8 v10, v9, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    aget-byte v11, p0, v9

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 560
    add-int/lit8 v9, v9, 0x2

    .line 561
    if-lez v10, :cond_fd

    mul-int/lit8 v10, v10, 0x2

    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_fd

    .line 562
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_fd
    :goto_fd
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_79

    .line 566
    :cond_101
    :goto_101
    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_109} :catch_10a

    return-object p0

    .line 567
    :catch_10a
    move-exception p0

    .line 568
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 532
    :cond_10e
    :goto_10e
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public static resolveAssetsLibEntryPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 406
    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-static {p1}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    return-object p1

    .line 411
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 412
    return-object p0

    .line 414
    :cond_16
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
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

    .line 421
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 422
    return v1

    .line 424
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_16f

    .line 428
    :cond_19
    :try_start_19
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_16d

    .line 429
    :try_start_20
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_161

    .line 430
    const-wide/16 v6, 0x16

    cmp-long v0, v4, v6

    if-gez v0, :cond_2f

    .line 431
    nop

    .line 496
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_16d

    .line 431
    return v1

    .line 433
    :cond_2f
    nop

    .line 434
    sub-long v6, v4, v6

    const-wide/32 v8, 0xffff

    sub-long v8, v6, v8

    const-wide/16 v10, 0x0

    :try_start_39
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 435
    nop

    .line 436
    nop

    :goto_3f
    const-wide/16 v10, -0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6c

    .line 437
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 438
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 439
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 440
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    .line 441
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_161

    .line 442
    const/16 v14, 0x50

    if-ne v0, v14, :cond_68

    const/16 v0, 0x4b

    if-ne v2, v0, :cond_68

    const/4 v0, 0x5

    if-ne v12, v0, :cond_68

    const/4 v0, 0x6

    if-ne v13, v0, :cond_68

    .line 443
    nop

    .line 444
    goto :goto_6d

    .line 436
    :cond_68
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    goto :goto_3f

    :cond_6c
    move-wide v6, v10

    .line 447
    :goto_6d
    cmp-long v0, v6, v10

    if-nez v0, :cond_76

    .line 448
    nop

    .line 496
    :try_start_72
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_16d

    .line 448
    return v1

    .line 451
    :cond_76
    const-wide/16 v8, 0xa

    add-long/2addr v8, v6

    :try_start_79
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 452
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 453
    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 454
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 456
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 457
    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v0, :cond_15b

    .line 458
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 459
    const-wide/16 v12, 0x2e

    add-long/2addr v12, v10

    cmp-long v7, v12, v4

    if-lez v7, :cond_b0

    goto/16 :goto_15b

    .line 460
    :cond_b0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 461
    const v14, 0x2014b50

    if-eq v7, v14, :cond_bf

    goto/16 :goto_15b

    .line 463
    :cond_bf
    const-wide/16 v14, 0x8

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 464
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 465
    and-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_df

    .line 466
    and-int/lit8 v7, v7, -0x2

    .line 467
    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 468
    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 471
    :cond_df
    const-wide/16 v14, 0x1c

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 472
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 473
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v14

    and-int/2addr v14, v2

    .line 474
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v15

    and-int/2addr v15, v2

    .line 476
    const-wide/16 v16, 0x2a

    add-long v10, v10, v16

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 477
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    .line 479
    const-wide/16 v16, 0x1e

    add-long v16, v10, v16

    cmp-long v18, v16, v4

    if-gtz v18, :cond_149

    .line 480
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 481
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    .line 482
    const v9, 0x4034b50

    if-ne v8, v9, :cond_149

    .line 483
    const-wide/16 v8, 0x6

    add-long/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 484
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int/2addr v8, v2

    .line 485
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_149

    .line 486
    and-int/lit8 v8, v8, -0x2

    .line 487
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 488
    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 493
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

    .line 457
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0xffffffffL

    goto/16 :goto_a1

    .line 495
    :cond_15b
    :goto_15b
    nop

    .line 496
    :try_start_15c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_16d

    .line 495
    const/4 v0, 0x1

    return v0

    .line 428
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

    .line 496
    :catch_16d
    move-exception v0

    .line 497
    return v1

    .line 426
    :cond_16f
    :goto_16f
    return v1
.end method

.method public static toR8IdentifierNative(I)Ljava/lang/String;
    .registers 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    nop

    .line 504
    :goto_6
    if-ltz p0, :cond_16

    .line 505
    rem-int/lit8 v1, p0, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 506
    div-int/lit8 p0, p0, 0x1a

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    .line 508
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeBytesNative(Ljava/lang/String;[B)Z
    .registers 5

    .line 512
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-nez p1, :cond_6

    goto :goto_37

    .line 515
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 517
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 518
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 520
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_35

    .line 521
    :try_start_1f
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 522
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2b

    .line 523
    nop

    .line 524
    :try_start_26
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_35

    .line 523
    const/4 p0, 0x1

    return p0

    .line 520
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

    .line 524
    :catch_35
    move-exception p0

    .line 525
    return v0

    .line 513
    :cond_37
    :goto_37
    return v0
.end method
