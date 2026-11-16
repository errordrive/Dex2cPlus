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
    .registers 16

    .line 29
    const/4 v0, 0x0

    if-eqz p0, :cond_196

    if-eqz p1, :cond_196

    array-length v1, p1

    if-nez v1, :cond_a

    goto/16 :goto_196

    .line 32
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".tmp."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5a

    .line 37
    const/4 v3, 0x0

    :goto_3a
    array-length v4, p1

    if-ge v3, v4, :cond_71

    .line 38
    aget-object v4, p1, v3

    .line 39
    add-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    .line 40
    if-eqz v4, :cond_57

    if-eqz v5, :cond_57

    .line 41
    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_57
    add-int/lit8 v3, v3, 0x2

    goto :goto_3a

    .line 45
    :cond_5a
    array-length v3, p1

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_71

    aget-object v5, p1, v4

    .line 46
    if-eqz v5, :cond_6e

    .line 47
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 53
    :cond_71
    :try_start_71
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_80} :catch_18b

    .line 54
    :try_start_80
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x4000

    if-eqz v4, :cond_10b

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_10b

    .line 57
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_9d
    .catchall {:try_start_80 .. :try_end_9d} :catchall_181

    .line 58
    :try_start_9d
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 59
    new-array v8, v6, [B

    .line 60
    :goto_a3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_fd

    .line 61
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 62
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-interface {p0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 64
    goto :goto_a3

    .line 66
    :cond_ba
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 68
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 70
    invoke-virtual {p1, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 71
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_db
    .catchall {:try_start_9d .. :try_end_db} :catchall_101

    .line 73
    :goto_db
    :try_start_db
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-eq v11, v5, :cond_e5

    .line 74
    invoke-virtual {p1, v8, v0, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_f1

    goto :goto_db

    .line 76
    :cond_e5
    if-eqz v9, :cond_ea

    :try_start_e7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_ea
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 78
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_101

    .line 79
    goto :goto_a3

    .line 71
    :catchall_f1
    move-exception p0

    if-eqz v9, :cond_fc

    :try_start_f4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_fc

    :catchall_f8
    move-exception v1

    :try_start_f9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fc
    :goto_fc
    throw p0
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_101

    .line 80
    :cond_fd
    :try_start_fd
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_181

    goto :goto_10b

    .line 57
    :catchall_101
    move-exception p0

    :try_start_102
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception v1

    :try_start_107
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10a
    throw p0

    .line 83
    :cond_10b
    :goto_10b
    new-array v4, v6, [B

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_115
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 86
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_16b

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 88
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 90
    invoke-virtual {p1, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 91
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14d
    .catchall {:try_start_107 .. :try_end_14d} :catchall_181

    .line 93
    :goto_14d
    :try_start_14d
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v5, :cond_157

    .line 94
    invoke-virtual {p1, v4, v0, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_161

    goto :goto_14d

    .line 96
    :cond_157
    :try_start_157
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 97
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 98
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_160
    .catchall {:try_start_157 .. :try_end_160} :catchall_181

    goto :goto_16b

    .line 91
    :catchall_161
    move-exception p0

    :try_start_162
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_166

    goto :goto_16a

    :catchall_166
    move-exception v1

    :try_start_167
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16a
    throw p0

    .line 100
    :cond_16b
    :goto_16b
    goto :goto_115

    .line 101
    :cond_16c
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_16f
    .catchall {:try_start_167 .. :try_end_16f} :catchall_181

    .line 102
    :try_start_16f
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_172} :catch_18b

    .line 107
    nop

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17c

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 112
    :cond_17c
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 53
    :catchall_181
    move-exception p0

    :try_start_182
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_186

    goto :goto_18a

    :catchall_186
    move-exception p1

    :try_start_187
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18a
    throw p0
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18b} :catch_18b

    .line 102
    :catch_18b
    move-exception p0

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_195

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 106
    :cond_195
    return v0

    .line 30
    :cond_196
    :goto_196
    return v0
.end method

.method public static applyRuleReplacementsNative(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 116
    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    if-nez p2, :cond_7

    goto :goto_21

    .line 119
    :cond_7
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    nop

    .line 121
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_20

    .line 122
    aget-object v2, p1, v1

    if-eqz v2, :cond_1d

    aget-object v3, p2, v1

    if-eqz v3, :cond_1d

    .line 123
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 121
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 126
    :cond_20
    return-object p0

    .line 117
    :cond_21
    :goto_21
    return-object p0
.end method

.method public static bytesToHexNative([B)Ljava/lang/String;
    .registers 7

    .line 130
    if-nez p0, :cond_5

    .line 131
    const-string p0, ""

    return-object p0

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_2b

    aget-byte v4, p0, v3

    .line 135
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

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 137
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeFileSha256Native(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 154
    const-string v0, ""

    if-nez p0, :cond_5

    .line 155
    return-object v0

    .line 157
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_4a

    .line 161
    :cond_17
    :try_start_17
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_48

    .line 162
    :try_start_1c
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 163
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 165
    :goto_26
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    .line 166
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_26

    .line 168
    :cond_32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_3e

    .line 169
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48

    .line 168
    return-object v1

    .line 161
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
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    .line 169
    :catch_48
    move-exception p0

    .line 170
    return-object v0

    .line 159
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static computePackageSignatureNative([[B[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 176
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    .line 178
    array-length v2, p0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_17

    aget-object v4, p0, v3

    .line 179
    if-eqz v4, :cond_14

    .line 180
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 178
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 184
    :cond_17
    if-eqz p1, :cond_2c

    .line 185
    array-length p0, p1

    :goto_1a
    if-ge v1, p0, :cond_2c

    aget-object v2, p1, v1

    .line 186
    if-eqz v2, :cond_29

    .line 187
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 185
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 191
    :cond_2c
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object p0

    .line 192
    :catch_35
    move-exception p0

    .line 193
    const-string p0, ""

    return-object p0
.end method

.method public static copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 198
    const/4 v0, 0x0

    if-eqz p0, :cond_68

    if-nez p1, :cond_6

    goto :goto_68

    .line 201
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_67

    .line 205
    :cond_18
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 207
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_65

    .line 211
    :try_start_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_5b

    .line 212
    const/16 p0, 0x4000

    :try_start_38
    new-array p0, p0, [B

    .line 214
    :goto_3a
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 215
    invoke-virtual {v1, p0, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3a

    .line 217
    :cond_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_51

    .line 218
    nop

    .line 219
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5b

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_65

    .line 218
    const/4 p0, 0x1

    return p0

    .line 210
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
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_64
    throw p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_65

    .line 219
    :catch_65
    move-exception p0

    .line 220
    return v0

    .line 203
    :cond_67
    :goto_67
    return v0

    .line 199
    :cond_68
    :goto_68
    return v0
.end method

.method public static deleteDirNative(Ljava/lang/String;)V
    .registers 5

    .line 225
    if-nez p0, :cond_3

    .line 226
    return-void

    .line 228
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_f

    .line 230
    return-void

    .line 232
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 234
    if-eqz p0, :cond_2b

    .line 235
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2b

    aget-object v3, p0, v2

    .line 236
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dex2c/plus/engine/FastZipModifier;->deleteDirNative(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 240
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 241
    return-void
.end method

.method public static extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_61

    if-nez p1, :cond_6

    goto :goto_61

    .line 247
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_5f

    .line 248
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_55

    .line 249
    if-nez p0, :cond_16

    .line 250
    nop

    .line 261
    :try_start_12
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_5f

    .line 250
    return-object v0

    .line 252
    :cond_16
    :try_start_16
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_55

    .line 253
    :try_start_1a
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_49

    .line 254
    const/16 v2, 0x4000

    :try_start_21
    new-array v2, v2, [B

    .line 256
    :goto_23
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2f

    .line 257
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_23

    .line 259
    :cond_2f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3f

    .line 260
    :try_start_33
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    if-eqz p0, :cond_3b

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 261
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_5f

    .line 259
    return-object v2

    .line 252
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
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 247
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
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5e
    throw p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_5f

    .line 261
    :catch_5f
    move-exception p0

    .line 262
    return-object v0

    .line 245
    :cond_61
    :goto_61
    return-object v0
.end method

.method public static hexToBytesNative(Ljava/lang/String;)[B
    .registers 8

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    goto :goto_37

    .line 144
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 145
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 146
    nop

    :goto_15
    if-ge v0, v1, :cond_36

    .line 147
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 148
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 146
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 150
    :cond_36
    return-object v2

    .line 142
    :cond_37
    :goto_37
    new-array p0, v0, [B

    return-object p0
.end method

.method public static normalizeClassDescriptorNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 267
    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_56

    .line 270
    :cond_9
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 271
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_36

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 274
    :cond_36
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    :cond_55
    return-object p0

    .line 268
    :cond_56
    :goto_56
    const-string p0, ""

    return-object p0
.end method

.method public static normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 281
    if-nez p0, :cond_5

    .line 282
    const-string p0, ""

    return-object p0

    .line 284
    :cond_5
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 285
    :goto_11
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 288
    :cond_1f
    return-object p0
.end method

.method public static parseAxmlTargetNative(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14

    .line 416
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/dex2c/plus/engine/FastZipModifier;->extractFileFromZipNative(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 417
    const/4 v0, 0x0

    if-eqz p0, :cond_10e

    array-length v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_10

    goto/16 :goto_10e

    .line 421
    :cond_10
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
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

    .line 423
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

    .line 424
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

    .line 425
    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_75

    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    .line 427
    :goto_76
    nop

    .line 428
    add-int/2addr v5, v2

    .line 429
    const/4 v8, 0x0

    :goto_79
    if-ge v8, v3, :cond_101

    .line 430
    mul-int/lit8 v9, v8, 0x4

    const/16 v10, 0x1c

    add-int/2addr v10, v9

    .line 431
    add-int/lit8 v9, v10, 0x4

    array-length v11, p0

    if-le v9, v11, :cond_87

    goto/16 :goto_101

    .line 432
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

    .line 433
    add-int/2addr v9, v5

    .line 434
    array-length v10, p0

    if-lt v9, v10, :cond_a8

    goto :goto_fd

    .line 435
    :cond_a8
    if-eqz v7, :cond_dc

    .line 436
    nop

    .line 437
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 438
    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_b7

    add-int/lit8 v10, v10, 0x1

    .line 439
    :cond_b7
    add-int/lit8 v9, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    .line 440
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_cc

    and-int/lit8 v10, v10, 0x7f

    shl-int/2addr v10, v2

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v10, v9

    move v9, v11

    .line 441
    :cond_cc
    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_db

    .line 442
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_db
    goto :goto_fd

    .line 445
    :cond_dc
    add-int/lit8 v10, v9, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v2

    aget-byte v11, p0, v9

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 446
    add-int/lit8 v9, v9, 0x2

    .line 447
    if-lez v10, :cond_fd

    mul-int/lit8 v10, v10, 0x2

    add-int v11, v9, v10

    array-length v12, p0

    if-gt v11, v12, :cond_fd

    .line 448
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v11, p0, v9, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_fd
    :goto_fd
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_79

    .line 452
    :cond_101
    :goto_101
    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_109} :catch_10a

    return-object p0

    .line 453
    :catch_10a
    move-exception p0

    .line 454
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 418
    :cond_10e
    :goto_10e
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public static resolveAssetsLibEntryPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 292
    invoke-static {p0}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-static {p1}, Lcom/dex2c/plus/engine/FastZipModifier;->normalizeLibRelativePathNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 295
    return-object p1

    .line 297
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    return-object p0

    .line 300
    :cond_16
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 303
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

    .line 307
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 308
    return v1

    .line 310
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_16f

    .line 314
    :cond_19
    :try_start_19
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_16d

    .line 315
    :try_start_20
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_161

    .line 316
    const-wide/16 v6, 0x16

    cmp-long v0, v4, v6

    if-gez v0, :cond_2f

    .line 317
    nop

    .line 382
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_16d

    .line 317
    return v1

    .line 319
    :cond_2f
    nop

    .line 320
    sub-long v6, v4, v6

    const-wide/32 v8, 0xffff

    sub-long v8, v6, v8

    const-wide/16 v10, 0x0

    :try_start_39
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 321
    nop

    .line 322
    nop

    :goto_3f
    const-wide/16 v10, -0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6c

    .line 323
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 324
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 325
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 326
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    .line 327
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_161

    .line 328
    const/16 v14, 0x50

    if-ne v0, v14, :cond_68

    const/16 v0, 0x4b

    if-ne v2, v0, :cond_68

    const/4 v0, 0x5

    if-ne v12, v0, :cond_68

    const/4 v0, 0x6

    if-ne v13, v0, :cond_68

    .line 329
    nop

    .line 330
    goto :goto_6d

    .line 322
    :cond_68
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    goto :goto_3f

    :cond_6c
    move-wide v6, v10

    .line 333
    :goto_6d
    cmp-long v0, v6, v10

    if-nez v0, :cond_76

    .line 334
    nop

    .line 382
    :try_start_72
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_16d

    .line 334
    return v1

    .line 337
    :cond_76
    const-wide/16 v8, 0xa

    add-long/2addr v8, v6

    :try_start_79
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 338
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 339
    const-wide/16 v8, 0x10

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 340
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 342
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 343
    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v0, :cond_15b

    .line 344
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 345
    const-wide/16 v12, 0x2e

    add-long/2addr v12, v10

    cmp-long v7, v12, v4

    if-lez v7, :cond_b0

    goto/16 :goto_15b

    .line 346
    :cond_b0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 347
    const v14, 0x2014b50

    if-eq v7, v14, :cond_bf

    goto/16 :goto_15b

    .line 349
    :cond_bf
    const-wide/16 v14, 0x8

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 350
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 351
    and-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_df

    .line 352
    and-int/lit8 v7, v7, -0x2

    .line 353
    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 354
    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 357
    :cond_df
    const-wide/16 v14, 0x1c

    add-long/2addr v14, v10

    invoke-virtual {v3, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 358
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v7

    and-int/2addr v7, v2

    .line 359
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v14

    and-int/2addr v14, v2

    .line 360
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v15

    and-int/2addr v15, v2

    .line 362
    const-wide/16 v16, 0x2a

    add-long v10, v10, v16

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 363
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    .line 365
    const-wide/16 v16, 0x1e

    add-long v16, v10, v16

    cmp-long v18, v16, v4

    if-gtz v18, :cond_149

    .line 366
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 367
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    .line 368
    const v9, 0x4034b50

    if-ne v8, v9, :cond_149

    .line 369
    const-wide/16 v8, 0x6

    add-long/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int/2addr v8, v2

    .line 371
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_149

    .line 372
    and-int/lit8 v8, v8, -0x2

    .line 373
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 374
    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 379
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

    .line 343
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0xffffffffL

    goto/16 :goto_a1

    .line 381
    :cond_15b
    :goto_15b
    nop

    .line 382
    :try_start_15c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_16d

    .line 381
    const/4 v0, 0x1

    return v0

    .line 314
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
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16c
    throw v2
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16d} :catch_16d

    .line 382
    :catch_16d
    move-exception v0

    .line 383
    return v1

    .line 312
    :cond_16f
    :goto_16f
    return v1
.end method

.method public static toR8IdentifierNative(I)Ljava/lang/String;
    .registers 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    nop

    .line 390
    :goto_6
    if-ltz p0, :cond_16

    .line 391
    rem-int/lit8 v1, p0, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 392
    div-int/lit8 p0, p0, 0x1a

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    .line 394
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeBytesNative(Ljava/lang/String;[B)Z
    .registers 5

    .line 398
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-nez p1, :cond_6

    goto :goto_37

    .line 401
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 403
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 404
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_35

    .line 407
    :try_start_1f
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 408
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2b

    .line 409
    nop

    .line 410
    :try_start_26
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_35

    .line 409
    const/4 p0, 0x1

    return p0

    .line 406
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
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35

    .line 410
    :catch_35
    move-exception p0

    .line 411
    return v0

    .line 399
    :cond_37
    :goto_37
    return v0
.end method
