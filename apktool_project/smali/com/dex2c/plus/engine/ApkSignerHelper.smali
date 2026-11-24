.class public final Lcom/dex2c/plus/engine/ApkSignerHelper;
.super Ljava/lang/Object;
.source "ApkSignerHelper.java"


# static fields
.field private static final B64_CHARS:[C

.field private static final B64_LOOKUP:[B

.field private static final CERT_B64:Ljava/lang/String; = "MIICzDCCAbSgAwIBAgICA+kwDQYJKoZIhvcNAQELBQAwKTETMBEGA1UEAwwKRGV4MmMgUGx1czESMBAGA1UECgwJRGV4MmNQbHVzMB4XDTI0MDEwMTAwMDAwMFoXDTQ5MDEwMTAwMDAwMFowKTETMBEGA1UEAwwKRGV4MmMgUGx1czESMBAGA1UECgwJRGV4MmNQbHVzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAufiriiqnmOk+u6MqT2CSh/HAgLEubzYFVMp4O6+cEPfWq0cDbqmtlDNpye1lNZ9U3DlBN9YghOdbFRtFbAGsdCh1WWHvXKnLny9N8fDhR01LWPAvkxs3ImjYdJchqHRdSDdpNNJPGbDt0U+dorDazq/J9vm/Kc7ZYx8pzQQCieH8kt7MKxQ1uJ2CPx0ADdsF8qAZXvPfALXlYbepY91eMB7h8kQjbdmpkWj2TP2kSEHUY4mWgWFsrGoebmGgP3ZKCwI4r+7e2pNCzAyhKx2cH09D8UmQqiIOqCobaec+wQdphuiBG7pjNvKy4vsKxIe1ofrlK819BUU7lzRS/YhFuQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCQyT4Oaje8UjZPy3Dm+ohm+SgZG/X1qpFOqF+waiobs2ACk2DJtepF6oQAyLrQ/a/6D761wvYLzgnmqDLUlpjPv20xZM8FDlgsBWDB7+PQJzOfT127NB1WpjSCTs0om8RHlMyN8vMJoesIVm2RGH7VyUp9AyXrv98N5/oqQeBAZPsYKFFJrV2iUq6lfcAWYsYvf6icgB1ZENsTj06GLr0XXeXtQ6cXFck5DzQatucF30s5Z55igqOqvQUlebO2xrsgzDFxX7AU2NC7hcT0S9BaDd4f2jYD62pmxBESEQSPuVIeXOHt8KYFvu2bVpV2Iz2r/hHULW5NzvQB4pN97mmY"

.field private static final KEY_B64:Ljava/lang/String; = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5+KuKKqeY6T67oypPYJKH8cCAsS5vNgVUyng7r5wQ99arRwNuqa2UM2nJ7WU1n1TcOUE31iCE51sVG0VsAax0KHVZYe9cqcufL03x8OFHTUtY8C+TGzciaNh0lyGodF1IN2k00k8ZsO3RT52isNrOr8n2+b8pztljHynNBAKJ4fyS3swrFDW4nYI/HQAN2wXyoBle898AteVht6lj3V4wHuHyRCNt2amRaPZM/aRIQdRjiZaBYWysah5uYaA/dkoLAjiv7t7ak0LMDKErHZwfT0PxSZCqIg6oKhtp5z7BB2mG6IEbumM28rLi+wrEh7Wh+uUrzX0FRTuXNFL9iEW5AgMBAAECggEAEJrC2jHHyA/fUYqWfwLc4nVz3imzvytAG5t+U7nwwdUXHjDXfhx5SpeylNx04m5I+ebEy3L7cVJk4AQQ1T1rA+4O2D21zPy+GQb0uyrqOl8M4LKFVOmjqRdaaEKMN0m4gHeuFZDHjkAtY7hrlziaOMUaT8ppxpZY85A3P75haaUUVYB1SjEv21A0praLJ49O7TZw50eN5n6b7DOcJj0XxahpZ9UljANG1FM9NYPEtpU2Wq0M6XpwG/GSbX6gV70/GH3RCmzp+sYvZ85G3c6X2ZW6UoQvuINnHPFDN2hmpNG2u6MLo0RM1WlZn8H3IDTqSWeIYby/AKBn4HHDrVJV9wKBgQDiwhTNViOgjAO92Zl2KxukDI64RxnEZXAQ4GcXZEC6kS5SU52ckjU09qhlO5ZP3rrueHBQe3OikzEEnSy4SgSJLnh4XWe7TxFjpUCeLLnQFHhu9UTSMaMXFSvMcI2ei6UpXONb1Kq5da0xxU7Mea+TF24wYMMUZXoFirx0Rx0i/wKBgQDR9Bqc6fZgm/ZSGsf9jgdDbSDW8dBL0pJZ/jfQi4MWx8WTCxpnC45ICo0M2JL1uRau+VJMDzA9tjAufGVdoPtrFIqPKMVgagKH7/iKhqCfscijqwmy/+UpCiwhDS9y9kJxR4nvYu6r7uTna1iZdW6+JOI+65WstDT5rlXIqLlvRwKBgGYgGtZP0UPhS14Zvm/mAlDkBvMfso8tUEeJiWSTlkNwV3hkiDuX7bao0Danm47lNTNpssvMjcvOlukJELb/PwO5ljA/gRRvC9ng9zVF13nLfmIavKAeEuG2ez9cAaxCIGR8nTkikrFsOlCMGG0m8NhCWTIYokNxYH9WeIG19X1pAoGAWcO4LSaKxDtqUShKIUo8KMPbqoqwt/pLwFZEntFHNtIq0veITk5Ogtaf/8II8y4zWJQYb5R+16Oxbe6ZmDJfzCR4KUURPmuUsXIUHYX53s0wL2nNN87Yt3c17tuoUcqgFba0brkpujDlhVwMAXCH7Jvwb15iG/jgPXAgFS6uObkCgYAzpINGjchb06jU0JymKBqo/8+S55DGLib63FBunMTLU/LJ448q5yhE/OpJQzwF5+CqCbZpJ9s6ZIJlFQviRxBnQL1DSd7I7wSTjkk9DVd0UMi3cE+lS2S89jULz+7wBZX0FAexWWPiBVW4Dhil4T25842O97xr+rNrzzT7tohrIg=="


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 481
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    .line 482
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    .line 485
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 486
    const/4 v0, 0x0

    :goto_13
    sget-object v1, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 487
    sget-object v2, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 489
    :cond_22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static addFileRangeDigests(Ljava/io/RandomAccessFile;JJLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "JJ",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 374
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 375
    nop

    .line 376
    const/high16 p1, 0x100000

    new-array p2, p1, [B

    .line 377
    nop

    .line 378
    :goto_f
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_49

    .line 379
    int-to-long v1, p1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 380
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 381
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 382
    const/16 v4, -0x5b

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 383
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 384
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 385
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 386
    invoke-virtual {v0, p2, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 387
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    int-to-long v1, v2

    sub-long/2addr p3, v1

    .line 389
    goto :goto_f

    .line 390
    :cond_49
    return-void
.end method

.method private static addMemoryDigests([BLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 394
    nop

    .line 395
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_3c

    .line 396
    array-length v2, p0

    sub-int/2addr v2, v1

    const/high16 v3, 0x100000

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 397
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 398
    const/16 v5, -0x5b

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 401
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 402
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 403
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/2addr v1, v3

    goto :goto_8

    .line 405
    :cond_3c
    return-void
.end method

.method private static applyApkSigningBlockV2(Ljava/io/File;Ljava/io/File;Ljava/security/PrivateKey;[B[B)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 247
    const-wide/16 v3, 0x16

    cmp-long v5, v1, v3

    if-ltz v5, :cond_277

    .line 251
    const-wide/32 v3, 0x10000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 252
    new-array v3, v4, [B

    .line 253
    int-to-long v5, v4

    sub-long/2addr v1, v5

    .line 254
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    :try_start_1f
    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26b

    .line 257
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 259
    nop

    .line 260
    add-int/lit8 v1, v4, -0x16

    :goto_2b
    const/4 v2, -0x1

    if-ltz v1, :cond_4f

    .line 261
    aget-byte v5, v3, v1

    const/16 v7, 0x50

    if-ne v5, v7, :cond_4c

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    const/16 v7, 0x4b

    if-ne v5, v7, :cond_4c

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v3, v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_4c

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, v3, v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_4c

    .line 262
    nop

    .line 263
    goto :goto_50

    .line 260
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_4f
    const/4 v1, -0x1

    .line 266
    :goto_50
    if-eq v1, v2, :cond_263

    .line 270
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 271
    add-int/lit8 v5, v1, 0xc

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v7, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 272
    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    and-long/2addr v9, v11

    .line 274
    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 275
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 276
    long-to-int v3, v9

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    const-wide/16 v14, 0x0

    move-object v13, v5

    move-wide/from16 v16, v9

    move-object/from16 v18, v3

    :try_start_96
    invoke-static/range {v13 .. v18}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addFileRangeDigests(Ljava/io/RandomAccessFile;JJLjava/util/List;)V

    .line 281
    move-object v11, v5

    move-wide v12, v9

    move-wide v14, v7

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addFileRangeDigests(Ljava/io/RandomAccessFile;JJLjava/util/List;)V

    .line 282
    invoke-static {v1, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addMemoryDigests([BLjava/util/List;)V
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_257

    .line 283
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 285
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    const/16 v11, 0x5a

    invoke-virtual {v5, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 287
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 288
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 290
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 291
    invoke-virtual {v5, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 292
    goto :goto_ce

    .line 293
    :cond_de
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 294
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 296
    array-length v5, v3

    const/16 v12, 0x8

    add-int/2addr v5, v12

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 297
    const/16 v13, 0x103

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 298
    array-length v14, v3

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 299
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 301
    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 303
    invoke-static/range {p3 .. p3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v5

    .line 304
    invoke-static {v5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v5

    .line 306
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 307
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 310
    const/4 v4, 0x3

    new-array v11, v4, [[B

    aput-object v3, v11, v15

    const/4 v3, 0x1

    aput-object v5, v11, v3

    const/4 v5, 0x2

    aput-object v14, v11, v5

    invoke-static {v11}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v11

    .line 311
    invoke-static {v11}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v14

    .line 313
    const-string v18, "SHA256withRSA"

    invoke-static/range {v18 .. v18}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 314
    move-object/from16 v3, p2

    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 315
    invoke-virtual {v5, v11}, Ljava/security/Signature;->update([B)V

    .line 316
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    .line 318
    array-length v5, v3

    add-int/2addr v5, v12

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 319
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 320
    array-length v11, v3

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 323
    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 325
    invoke-static/range {p4 .. p4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v5

    .line 327
    new-array v11, v4, [[B

    aput-object v14, v11, v15

    const/4 v13, 0x1

    aput-object v3, v11, v13

    const/4 v3, 0x2

    aput-object v5, v11, v3

    invoke-static {v11}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v3

    .line 328
    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 329
    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v3

    .line 331
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 332
    const v11, 0x7109871a

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 333
    const/4 v11, 0x2

    new-array v13, v11, [[B

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    aput-object v5, v13, v15

    const/4 v5, 0x1

    aput-object v3, v13, v5

    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v3

    .line 335
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 336
    array-length v11, v3

    int-to-long v13, v11

    invoke-virtual {v5, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 337
    const/4 v11, 0x2

    new-array v13, v11, [[B

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    aput-object v5, v13, v15

    const/4 v5, 0x1

    aput-object v3, v13, v5

    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v3

    .line 339
    array-length v5, v3

    add-int/2addr v5, v12

    const/16 v11, 0x10

    add-int/2addr v5, v11

    int-to-long v13, v5

    .line 340
    const-wide/16 v19, 0x8

    add-long v19, v13, v19

    .line 342
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 343
    invoke-virtual {v5, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 345
    const-string v11, "APK Sig Block 42"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 346
    const/4 v12, 0x4

    new-array v12, v12, [[B

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    aput-object v13, v12, v15

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v12, v5

    aput-object v11, v12, v4

    invoke-static {v12}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v3

    .line 348
    add-long v4, v9, v19

    long-to-int v5, v4

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 350
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    :try_start_212
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x10000

    invoke-direct {v4, v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_220
    .catchall {:try_start_212 .. :try_end_220} :catchall_24b

    .line 352
    const-wide/16 v14, 0x0

    move-object v13, v2

    move-wide/from16 v16, v9

    move-object/from16 v18, v4

    :try_start_227
    invoke-static/range {v13 .. v18}, Lcom/dex2c/plus/engine/ApkSignerHelper;->copyRange(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)V

    .line 353
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 354
    move-object v11, v2

    move-wide v12, v9

    move-wide v14, v7

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/dex2c/plus/engine/ApkSignerHelper;->copyRange(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)V

    .line 355
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_238
    .catchall {:try_start_227 .. :try_end_238} :catchall_23f

    .line 356
    :try_start_238
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_23b
    .catchall {:try_start_238 .. :try_end_23b} :catchall_24b

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 357
    return-void

    .line 350
    :catchall_23f
    move-exception v0

    move-object v1, v0

    :try_start_241
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_244
    .catchall {:try_start_241 .. :try_end_244} :catchall_245

    goto :goto_24a

    :catchall_245
    move-exception v0

    move-object v3, v0

    :try_start_247
    invoke-static {v1, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_24a
    throw v1
    :try_end_24b
    .catchall {:try_start_247 .. :try_end_24b} :catchall_24b

    :catchall_24b
    move-exception v0

    move-object v1, v0

    :try_start_24d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_250
    .catchall {:try_start_24d .. :try_end_250} :catchall_251

    goto :goto_256

    :catchall_251
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_256
    throw v1

    .line 279
    :catchall_257
    move-exception v0

    move-object v1, v0

    :try_start_259
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25c
    .catchall {:try_start_259 .. :try_end_25c} :catchall_25d

    goto :goto_262

    :catchall_25d
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_262
    throw v1

    .line 267
    :cond_263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOCD not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :catchall_26b
    move-exception v0

    move-object v1, v0

    :try_start_26d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_270
    .catchall {:try_start_26d .. :try_end_270} :catchall_271

    goto :goto_276

    :catchall_271
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_276
    throw v1

    .line 248
    :cond_277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZIP too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_280

    :goto_27f
    throw v0

    :goto_280
    goto :goto_27f
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .registers 7

    .line 519
    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4a

    .line 520
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 521
    nop

    .line 522
    nop

    .line 523
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_45

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 525
    const/16 v5, 0x100

    if-lt v4, v5, :cond_2a

    goto :goto_42

    .line 526
    :cond_2a
    sget-object v5, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    aget-byte v4, v5, v4

    .line 527
    if-ltz v4, :cond_42

    .line 528
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v4

    .line 529
    add-int/lit8 v3, v3, 0x6

    .line 530
    const/16 v4, 0x8

    if-lt v3, v4, :cond_42

    .line 531
    add-int/lit8 v3, v3, -0x8

    .line 532
    ushr-int v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 523
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 536
    :cond_45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 519
    :cond_4a
    :goto_4a
    new-array p0, v0, [B

    return-object p0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .registers 10

    .line 492
    if-eqz p0, :cond_89

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_89

    .line 493
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    const/4 v1, 0x0

    .line 495
    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_84

    .line 496
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 497
    array-length v3, p0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_28

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_2a

    :cond_28
    move v3, v2

    const/4 v2, -0x1

    .line 498
    :goto_2a
    array-length v5, p0

    if-ge v3, v5, :cond_37

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_38

    :cond_37
    const/4 v5, -0x1

    .line 500
    :goto_38
    sget-object v6, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    ushr-int/lit8 v7, v1, 0x2

    aget-char v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    if-eq v2, v4, :cond_74

    .line 502
    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v7, v2, 0x4

    or-int/2addr v1, v7

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    if-eq v5, v4, :cond_65

    .line 504
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, v5, 0x6

    or-int/2addr v1, v2

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    and-int/lit8 v1, v5, 0x3f

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 507
    :cond_65
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 511
    :cond_74
    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :goto_82
    move v1, v3

    goto :goto_14

    .line 515
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_89
    :goto_89
    const-string p0, ""

    return-object p0
.end method

.method private static varargs concat([[B)[B
    .registers 8

    .line 460
    nop

    .line 461
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v0, :cond_e

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 462
    :cond_e
    new-array v0, v3, [B

    .line 463
    nop

    .line 464
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    if-ge v3, v2, :cond_21

    aget-object v5, p0, v3

    .line 465
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    array-length v5, v5

    add-int/2addr v4, v5

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 468
    :cond_21
    return-object v0
.end method

.method private static copyRange(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 361
    const/high16 p1, 0x10000

    new-array p2, p1, [B

    .line 362
    nop

    .line 363
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_23

    .line 364
    int-to-long v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 366
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    goto :goto_23

    .line 367
    :cond_1d
    invoke-virtual {p5, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 368
    int-to-long v0, v1

    sub-long/2addr p3, v0

    .line 369
    goto :goto_8

    .line 370
    :cond_23
    :goto_23
    return-void
.end method

.method private static createPkcs7SignedData(Ljava/security/cert/X509Certificate;[B[B)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    .line 411
    const-string v1, "06096086480165030402010500"

    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v1

    .line 412
    const-string v3, "06092a864886f70d0101010500"

    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v3

    .line 414
    invoke-static {p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 415
    const/4 v4, 0x2

    new-array v5, v4, [[B

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object p0, v5, v0

    invoke-static {v5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    .line 416
    const/4 v5, 0x4

    invoke-static {v5, p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p2

    .line 418
    const/4 v7, 0x5

    new-array v8, v7, [[B

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v9}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeInteger(Ljava/math/BigInteger;)[B

    move-result-object v9

    aput-object v9, v8, v6

    aput-object p0, v8, v0

    aput-object v1, v8, v4

    const/4 p0, 0x3

    aput-object v3, v8, p0

    aput-object p2, v8, v5

    invoke-static {v8}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object p2

    invoke-static {v2, p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p2

    .line 419
    const/16 v3, 0x31

    invoke-static {v3, p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p2

    .line 421
    const-string v8, "06092a864886f70d010701"

    invoke-static {v8}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 422
    invoke-static {v2, v8}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v8

    .line 423
    const/16 v9, 0xa0

    invoke-static {v9, p1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p1

    .line 425
    new-array v7, v7, [[B

    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v10}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeInteger(Ljava/math/BigInteger;)[B

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v3, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v1

    aput-object v1, v7, v0

    aput-object v8, v7, v4

    aput-object p1, v7, p0

    aput-object p2, v7, v5

    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object p0

    .line 426
    invoke-static {v2, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    .line 427
    const-string p1, "06092a864886f70d010702"

    invoke-static {p1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 429
    new-array p2, v4, [[B

    aput-object p1, p2, v6

    invoke-static {v9, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeInteger(Ljava/math/BigInteger;)[B
    .registers 2

    .line 440
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 441
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeTlv(I[B)[B
    .registers 9

    .line 445
    array-length v0, p1

    .line 447
    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v1, :cond_11

    .line 448
    new-array v1, v4, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    int-to-byte p0, v0

    aput-byte p0, v1, v2

    goto :goto_5b

    .line 449
    :cond_11
    const/16 v1, 0x100

    const/4 v5, 0x3

    if-ge v0, v1, :cond_23

    .line 450
    new-array v1, v5, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    const/16 p0, -0x7f

    aput-byte p0, v1, v2

    int-to-byte p0, v0

    aput-byte p0, v1, v4

    goto :goto_5b

    .line 451
    :cond_23
    const/high16 v1, 0x10000

    const/4 v6, 0x4

    if-ge v0, v1, :cond_3e

    .line 452
    new-array v1, v6, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    const/16 p0, -0x7e

    aput-byte p0, v1, v2

    shr-int/lit8 p0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v5

    goto :goto_5b

    .line 454
    :cond_3e
    const/4 v1, 0x5

    new-array v1, v1, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    const/16 p0, -0x7d

    aput-byte p0, v1, v2

    shr-int/lit8 p0, v0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    shr-int/lit8 p0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v5

    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v6

    .line 456
    :goto_5b
    new-array p0, v4, [[B

    aput-object v1, p0, v3

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .registers 8

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 473
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 474
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 475
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 476
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 474
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 478
    :cond_2a
    return-object v1
.end method

.method public static isMetaInfSignature(Ljava/lang/String;)Z
    .registers 3

    .line 233
    const/4 v0, 0x0

    if-eqz p0, :cond_44

    const-string v1, "META-INF/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_44

    .line 236
    :cond_c
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 237
    const-string v1, ".SF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 238
    const-string v1, ".RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 239
    const-string v1, ".DSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 240
    const-string v1, ".EC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 241
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 242
    const-string v1, "META-INF/SIG-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    :cond_42
    const/4 v0, 0x1

    .line 237
    :cond_43
    return v0

    .line 234
    :cond_44
    :goto_44
    return v0
.end method

.method private static prefixLength([B)[B
    .registers 3

    .line 433
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 434
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static signApk(Ljava/io/File;)Z
    .registers 21

    .line 79
    move-object/from16 v0, p0

    if-eqz v0, :cond_358

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_358

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    cmp-long v6, v2, v4

    if-gez v6, :cond_17

    const/4 v1, 0x0

    goto/16 :goto_359

    .line 83
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".v1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".v2."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    :try_start_63
    const-string v2, "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5+KuKKqeY6T67oypPYJKH8cCAsS5vNgVUyng7r5wQ99arRwNuqa2UM2nJ7WU1n1TcOUE31iCE51sVG0VsAax0KHVZYe9cqcufL03x8OFHTUtY8C+TGzciaNh0lyGodF1IN2k00k8ZsO3RT52isNrOr8n2+b8pztljHynNBAKJ4fyS3swrFDW4nYI/HQAN2wXyoBle898AteVht6lj3V4wHuHyRCNt2amRaPZM/aRIQdRjiZaBYWysah5uYaA/dkoLAjiv7t7ak0LMDKErHZwfT0PxSZCqIg6oKhtp5z7BB2mG6IEbumM28rLi+wrEh7Wh+uUrzX0FRTuXNFL9iEW5AgMBAAECggEAEJrC2jHHyA/fUYqWfwLc4nVz3imzvytAG5t+U7nwwdUXHjDXfhx5SpeylNx04m5I+ebEy3L7cVJk4AQQ1T1rA+4O2D21zPy+GQb0uyrqOl8M4LKFVOmjqRdaaEKMN0m4gHeuFZDHjkAtY7hrlziaOMUaT8ppxpZY85A3P75haaUUVYB1SjEv21A0praLJ49O7TZw50eN5n6b7DOcJj0XxahpZ9UljANG1FM9NYPEtpU2Wq0M6XpwG/GSbX6gV70/GH3RCmzp+sYvZ85G3c6X2ZW6UoQvuINnHPFDN2hmpNG2u6MLo0RM1WlZn8H3IDTqSWeIYby/AKBn4HHDrVJV9wKBgQDiwhTNViOgjAO92Zl2KxukDI64RxnEZXAQ4GcXZEC6kS5SU52ckjU09qhlO5ZP3rrueHBQe3OikzEEnSy4SgSJLnh4XWe7TxFjpUCeLLnQFHhu9UTSMaMXFSvMcI2ei6UpXONb1Kq5da0xxU7Mea+TF24wYMMUZXoFirx0Rx0i/wKBgQDR9Bqc6fZgm/ZSGsf9jgdDbSDW8dBL0pJZ/jfQi4MWx8WTCxpnC45ICo0M2JL1uRau+VJMDzA9tjAufGVdoPtrFIqPKMVgagKH7/iKhqCfscijqwmy/+UpCiwhDS9y9kJxR4nvYu6r7uTna1iZdW6+JOI+65WstDT5rlXIqLlvRwKBgGYgGtZP0UPhS14Zvm/mAlDkBvMfso8tUEeJiWSTlkNwV3hkiDuX7bao0Danm47lNTNpssvMjcvOlukJELb/PwO5ljA/gRRvC9ng9zVF13nLfmIavKAeEuG2ez9cAaxCIGR8nTkikrFsOlCMGG0m8NhCWTIYokNxYH9WeIG19X1pAoGAWcO4LSaKxDtqUShKIUo8KMPbqoqwt/pLwFZEntFHNtIq0veITk5Ogtaf/8II8y4zWJQYb5R+16Oxbe6ZmDJfzCR4KUURPmuUsXIUHYX53s0wL2nNN87Yt3c17tuoUcqgFba0brkpujDlhVwMAXCH7Jvwb15iG/jgPXAgFS6uObkCgYAzpINGjchb06jU0JymKBqo/8+S55DGLib63FBunMTLU/LJ448q5yhE/OpJQzwF5+CqCbZpJ9s6ZIJlFQviRxBnQL1DSd7I7wSTjkk9DVd0UMi3cE+lS2S89jULz+7wBZX0FAexWWPiBVW4Dhil4T25842O97xr+rNrzzT7tohrIg=="

    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 89
    const-string v5, "MIICzDCCAbSgAwIBAgICA+kwDQYJKoZIhvcNAQELBQAwKTETMBEGA1UEAwwKRGV4MmMgUGx1czESMBAGA1UECgwJRGV4MmNQbHVzMB4XDTI0MDEwMTAwMDAwMFoXDTQ5MDEwMTAwMDAwMFowKTETMBEGA1UEAwwKRGV4MmMgUGx1czESMBAGA1UECgwJRGV4MmNQbHVzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAufiriiqnmOk+u6MqT2CSh/HAgLEubzYFVMp4O6+cEPfWq0cDbqmtlDNpye1lNZ9U3DlBN9YghOdbFRtFbAGsdCh1WWHvXKnLny9N8fDhR01LWPAvkxs3ImjYdJchqHRdSDdpNNJPGbDt0U+dorDazq/J9vm/Kc7ZYx8pzQQCieH8kt7MKxQ1uJ2CPx0ADdsF8qAZXvPfALXlYbepY91eMB7h8kQjbdmpkWj2TP2kSEHUY4mWgWFsrGoebmGgP3ZKCwI4r+7e2pNCzAyhKx2cH09D8UmQqiIOqCobaec+wQdphuiBG7pjNvKy4vsKxIe1ofrlK819BUU7lzRS/YhFuQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCQyT4Oaje8UjZPy3Dm+ohm+SgZG/X1qpFOqF+waiobs2ACk2DJtepF6oQAyLrQ/a/6D761wvYLzgnmqDLUlpjPv20xZM8FDlgsBWDB7+PQJzOfT127NB1WpjSCTs0om8RHlMyN8vMJoesIVm2RGH7VyUp9AyXrv98N5/oqQeBAZPsYKFFJrV2iUq6lfcAWYsYvf6icgB1ZENsTj06GLr0XXeXtQ6cXFck5DzQatucF30s5Z55igqOqvQUlebO2xrsgzDFxX7AU2NC7hcT0S9BaDd4f2jYD62pmxBESEQSPuVIeXOHt8KYFvu2bVpV2Iz2r/hHULW5NzvQB4pN97mmY"

    invoke-static {v5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 91
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 92
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 95
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 96
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 97
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    .line 98
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 101
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 102
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 103
    const/high16 v10, 0x10000

    new-array v11, v10, [B

    .line 105
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_af
    .catchall {:try_start_63 .. :try_end_af} :catchall_342

    .line 106
    :try_start_af
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v13

    .line 107
    :goto_b3
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_333

    const/4 v15, -0x1

    if-eqz v14, :cond_106

    .line 108
    :try_start_ba
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    .line 109
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-static {v10}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_cd

    .line 111
    const/high16 v10, 0x10000

    goto :goto_b3

    .line 113
    :cond_cd
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 114
    invoke-virtual {v12, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_101

    .line 116
    :goto_d4
    :try_start_d4
    invoke-virtual {v14, v11}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v15, :cond_e0

    .line 117
    const/4 v15, 0x0

    invoke-virtual {v9, v11, v15, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_f3

    const/4 v15, -0x1

    goto :goto_d4

    .line 119
    :cond_e0
    if-eqz v14, :cond_e5

    :try_start_e2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_e5
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f0
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_101

    .line 121
    const/high16 v10, 0x10000

    goto :goto_b3

    .line 114
    :catchall_f3
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_100

    :try_start_f7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_100

    :catchall_fb
    move-exception v0

    move-object v2, v0

    :try_start_fd
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_100
    :goto_100
    throw v1
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_101

    .line 105
    :catchall_101
    move-exception v0

    move-object v2, v0

    move-object v1, v4

    goto/16 :goto_336

    .line 124
    :cond_106
    :try_start_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v10, "Manifest-Version: 1.0\r\nCreated-By: 1.0 (Dex2c Plus)\r\n\r\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_121
    .catchall {:try_start_106 .. :try_end_121} :catchall_333

    const-string v15, "\r\n\r\n"

    const-string v0, "\r\nSHA-256-Digest: "

    move-object/from16 v17, v4

    const-string v4, "Name: "

    if-eqz v14, :cond_175

    :try_start_12b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 129
    move-object/from16 v18, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_168
    .catchall {:try_start_12b .. :try_end_168} :catchall_16f

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move-object/from16 v13, v18

    goto :goto_11d

    .line 105
    :catchall_16f
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v17

    goto/16 :goto_336

    .line 133
    :cond_175
    :try_start_175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 136
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 137
    invoke-virtual {v9, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v13

    .line 138
    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v13

    .line 140
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    move-object/from16 v18, v7

    const-string v7, "Signature-Version: 1.0\r\nCreated-By: 1.0 (Dex2c Plus)\r\nSHA-256-Digest-Manifest: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 142
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "\r\nX-Android-APK-Signed: 2\r\n\r\n"

    .line 143
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1ac
    .catchall {:try_start_175 .. :try_end_1ac} :catchall_32f

    if-eqz v8, :cond_1ed

    :try_start_1ae
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 147
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 148
    move-object/from16 v19, v7

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 149
    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ea
    .catchall {:try_start_1ae .. :try_end_1ea} :catchall_16f

    .line 151
    move-object/from16 v7, v19

    goto :goto_1a8

    .line 152
    :cond_1ed
    :try_start_1ed
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 155
    const-string v4, "SHA256withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 156
    invoke-virtual {v4, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 157
    invoke-virtual {v4, v0}, Ljava/security/Signature;->update([B)V

    .line 158
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    .line 159
    invoke-static {v5, v6, v4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->createPkcs7SignedData(Ljava/security/cert/X509Certificate;[B[B)[B

    move-result-object v4

    .line 162
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v9, 0x10000

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21c
    .catchall {:try_start_1ed .. :try_end_21c} :catchall_32f

    .line 163
    :try_start_21c
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 165
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 166
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 168
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v7, "META-INF/CERT.SF"

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 170
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 171
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 173
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/CERT.RSA"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 175
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 176
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 178
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 179
    :goto_250
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1
    :try_end_254
    .catchall {:try_start_21c .. :try_end_254} :catchall_31f

    if-eqz v1, :cond_2f2

    .line 180
    :try_start_256
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 181
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_267

    .line 183
    goto :goto_250

    .line 185
    :cond_267
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 187
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_280

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 188
    :cond_280
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v8

    if-eqz v8, :cond_28d

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 190
    :cond_28d
    const-string v8, "lib/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a0

    const-string v8, ".so"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29e

    goto :goto_2a0

    :cond_29e
    const/4 v4, 0x0

    goto :goto_2a1

    :cond_2a0
    :goto_2a0
    const/4 v4, 0x1

    .line 191
    :goto_2a1
    if-nez v4, :cond_2a9

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_2c2

    .line 192
    :cond_2a9
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 193
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 194
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 195
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 197
    :cond_2c2
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 198
    invoke-virtual {v12, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2c9
    .catchall {:try_start_256 .. :try_end_2c9} :catchall_2ed

    .line 200
    :goto_2c9
    :try_start_2c9
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2d5

    .line 201
    const/4 v8, 0x0

    invoke-virtual {v5, v11, v8, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2d4
    .catchall {:try_start_2c9 .. :try_end_2d4} :catchall_2df

    goto :goto_2c9

    .line 203
    :cond_2d5
    if-eqz v1, :cond_2da

    :try_start_2d7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_2da
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2dd
    .catchall {:try_start_2d7 .. :try_end_2dd} :catchall_2ed

    .line 205
    goto/16 :goto_250

    .line 198
    :catchall_2df
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2ec

    :try_start_2e3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2e6
    .catchall {:try_start_2e3 .. :try_end_2e6} :catchall_2e7

    goto :goto_2ec

    :catchall_2e7
    move-exception v0

    move-object v1, v0

    :try_start_2e9
    invoke-static {v2, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2ec
    :goto_2ec
    throw v2
    :try_end_2ed
    .catchall {:try_start_2e9 .. :try_end_2ed} :catchall_2ed

    .line 162
    :catchall_2ed
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v17

    goto :goto_323

    .line 206
    :cond_2f2
    :try_start_2f2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_2f5
    .catchall {:try_start_2f2 .. :try_end_2f5} :catchall_31f

    .line 207
    :try_start_2f5
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2f8
    .catchall {:try_start_2f5 .. :try_end_2f8} :catchall_32f

    .line 208
    :try_start_2f8
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2fb
    .catchall {:try_start_2f8 .. :try_end_2fb} :catchall_31b

    .line 211
    move-object/from16 v1, v17

    move-object/from16 v0, v18

    :try_start_2ff
    invoke-static {v3, v1, v2, v6, v0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->applyApkSigningBlockV2(Ljava/io/File;Ljava/io/File;Ljava/security/PrivateKey;[B[B)V

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30b

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 216
    :cond_30b
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_314

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 219
    :cond_314
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_31a
    .catchall {:try_start_2ff .. :try_end_31a} :catchall_340

    return v0

    .line 221
    :catchall_31b
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_344

    .line 162
    :catchall_31f
    move-exception v0

    move-object/from16 v1, v17

    move-object v2, v0

    :goto_323
    :try_start_323
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_326
    .catchall {:try_start_323 .. :try_end_326} :catchall_327

    goto :goto_32c

    :catchall_327
    move-exception v0

    move-object v4, v0

    :try_start_329
    invoke-static {v2, v4}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_32c
    throw v2
    :try_end_32d
    .catchall {:try_start_329 .. :try_end_32d} :catchall_32d

    .line 105
    :catchall_32d
    move-exception v0

    goto :goto_335

    :catchall_32f
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_335

    :catchall_333
    move-exception v0

    move-object v1, v4

    :goto_335
    move-object v2, v0

    :goto_336
    :try_start_336
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_339
    .catchall {:try_start_336 .. :try_end_339} :catchall_33a

    goto :goto_33f

    :catchall_33a
    move-exception v0

    move-object v4, v0

    :try_start_33c
    invoke-static {v2, v4}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_33f
    throw v2
    :try_end_340
    .catchall {:try_start_33c .. :try_end_340} :catchall_340

    .line 221
    :catchall_340
    move-exception v0

    goto :goto_344

    :catchall_342
    move-exception v0

    move-object v1, v4

    .line 222
    :goto_344
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 225
    :cond_34d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_356

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 228
    :cond_356
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_358
    const/4 v1, 0x0

    .line 80
    :goto_359
    return v1
.end method
