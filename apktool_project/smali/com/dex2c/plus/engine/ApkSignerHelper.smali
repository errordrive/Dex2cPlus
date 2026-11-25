.class public final Lcom/dex2c/plus/engine/ApkSignerHelper;
.super Ljava/lang/Object;
.source "ApkSignerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;
    }
.end annotation


# static fields
.field private static final B64_CHARS:[C

.field private static final B64_LOOKUP:[B

.field private static final CERT_B64:Ljava/lang/String; = "MIICyDCCAbCgAwIBAgIENiws+DANBgkqhkiG9w0BAQsFADAlMQswCQYDVQQGEwJCRDEWMBQGA1UEAxMNTmF5ZW0gSG9zc2FpbjAgFw0yNTAyMjAxNjAxMjVaGA8yMTI1MDEyNzE2MDEyNVowJTELMAkGA1UEBhMCQkQxFjAUBgNVBAMTDU5heWVtIEhvc3NhaW4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAI6U/sw5Te1J14jM02aIkYqP7h6jkhMuyjexkimZUGBl/pNqFEVrlqRtiQ7HN/k4o7UigAd1Z9XleKS1UIo9XI6cPdgJx3FtO+z0t0knnBTfXKVWYuuUz57gOEbYvhBa+10DHlvTELhuLQxWIlTjssFTkIOCoj8aCS0xJBCNxd9hW2UKha4VygA8gACHEt2VbMJbrJ5R1rUYi5lx0F3R+vkioRFkwky68S7r9SjgjBXlHWihTxnQUQBkAMTfx3QD1FABAT48uYxgg9hG16RC71eLSpypeV4fm2KXcJCfF5CsI1KJZHSAbXQDL81RtwFi1dlEd2NXS5tbusyuymMCcbQ="

.field private static final KEY_B64:Ljava/lang/String; = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAECggEBAJV5THRnp+dYULZnXBLsmF5cIsGIwE/86MHpHbJkMgQSRXjxZySi/+tYt0Quqwh5n9D+B0DjuYxU+h3Lr1PlpINPBoWAT4uZLdzwfph/s8f99J/Fqv5LiUhLt4qdY5B6GZfO9+sbKouM/5MZ+YNC1qJOevYeo7oA6xcFIahdrmEoVprtbZjB4wRimbpDqdAktePxXOfsGe8vCXYflt/kV+VwjZmnnggwh3t6rm2A5LutVz0Zb3e1rALyX3J2lo/JpFZ1wNW5vXa0ba8u963DAzoq2fFS3Ag+rP5Bt34KJ4a3GPaGAGQUuzrucNQxDhuRz1BDrvpqZc1DTC5onK+j6uUCgYEA63+xyyGJiWvJYERJgUcP3wcBKKCPMRkqr6XFzRsoWG/dvEgrOMlWX560M5M8klb71512rEePlEcFLu1tW6zFCnIzYTAC5w4QUxoW5cGtsY8gxphL+enjXwixkq8QoMUlWMlwu6VR1NkuBxJjpUkCGDfoKvx9YFIVaEy9rG6uXd8CgYEA5Tq/5nX4cLuBfgx2fc3Br+HVFCUx/fGtdoRVi8YhyneURgWkztRoFtiWU6FN7dm9pDMl2jM3AMLk77EKOMwVyU22zZGPfA7PxPvcTyAtMEbjPXcrgHHe0LXMV4+sq+O0/G3e2D8kRL6aRwwW+9/ZQ08cupZ86uLiB308aKT/b0MCgYB3PhEoabLagllVBT6y1uiSZVmQ2LuogLW8epPNZxLmtL3xuBkqh8fUYuebtdHVx3V9l52fXhy1V8CoIlBdOv4KbAjYDRdrJxPdADjX3Vm1rmNKK5NM18DpPd2sCDjDLw/aBSWv3eWxgMZtjkImTvFgke5c1bwmKWnthe4EgYaIwQKBgCTZL9X1Ks28ZpGDoVyRwcvrKpyFaibfPboqhbHlVLM+S7iB2b9hx6W8hVXGPUe509FcY35S80mNCs45EGKW8/2bH4KmHoGbw+xvbDfP/VOgYZEU4gpQw7ebMdD1iJVNEl/trX/njoX6ecRn/h3ZGwzF3+FipYwAksMPb7GGrIUPAoGAF/wYSoZSADP/mCaRhjvKEBr0+f8brCtmQhn7bCDLeaHnT9M5r2R/jzO30dCRSMxxepRb1e/N5IVAyIB3dKKo68mPn8SRL4DHbxzz4XoDebi5++4u8mwcsJXsddZZ0hWFQAxt6/P8Oodk2AnAySF1OZ0bE4hWiZRpQHjlG238G9s="


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 600
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    .line 601
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    .line 604
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 605
    const/4 v0, 0x0

    :goto_13
    sget-object v1, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 606
    sget-object v2, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 608
    :cond_22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
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

    .line 492
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 493
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 494
    nop

    .line 495
    const/high16 p1, 0x100000

    new-array p2, p1, [B

    .line 496
    nop

    .line 497
    :goto_f
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_49

    .line 498
    int-to-long v1, p1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 499
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 500
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 501
    const/16 v4, -0x5b

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 503
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 504
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 505
    invoke-virtual {v0, p2, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 506
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    int-to-long v1, v2

    sub-long/2addr p3, v1

    .line 508
    goto :goto_f

    .line 509
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

    .line 512
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 513
    nop

    .line 514
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_3c

    .line 515
    array-length v2, p0

    sub-int/2addr v2, v1

    const/high16 v3, 0x100000

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 516
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 517
    const/16 v5, -0x5b

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 518
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 519
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 520
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 521
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 522
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/2addr v1, v3

    goto :goto_8

    .line 524
    :cond_3c
    return-void
.end method

.method private static applyApkSigningBlock(Ljava/io/File;Ljava/io/File;Ljava/security/PrivateKey;[B[BZZ)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/high16 v3, 0x10000

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez p5, :cond_43

    if-nez p6, :cond_43

    .line 315
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_13
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_37

    .line 316
    :try_start_18
    new-array v0, v3, [B

    .line 318
    :goto_1a
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_24

    .line 319
    invoke-virtual {v6, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_2b

    goto :goto_1a

    .line 321
    :cond_24
    :try_start_24
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_37

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 322
    return-void

    .line 315
    :catchall_2b
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception v0

    move-object v3, v0

    :try_start_33
    invoke-static {v1, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_36
    throw v1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    move-object v1, v0

    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_42
    throw v1

    .line 325
    :cond_43
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 326
    const-wide/16 v8, 0x16

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3a1

    .line 330
    const-wide/32 v8, 0x10000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    .line 331
    new-array v8, v9, [B

    .line 332
    int-to-long v10, v9

    sub-long/2addr v6, v10

    .line 333
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    :try_start_60
    invoke-virtual {v10, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 335
    invoke-virtual {v10, v8}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_395

    .line 336
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 338
    nop

    .line 339
    add-int/lit8 v6, v9, -0x16

    :goto_6c
    if-ltz v6, :cond_8f

    .line 340
    aget-byte v7, v8, v6

    const/16 v10, 0x50

    if-ne v7, v10, :cond_8c

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v8, v7

    const/16 v10, 0x4b

    if-ne v7, v10, :cond_8c

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v8, v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_8c

    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v8, v7

    const/4 v10, 0x6

    if-ne v7, v10, :cond_8c

    .line 341
    nop

    .line 342
    goto :goto_90

    .line 339
    :cond_8c
    add-int/lit8 v6, v6, -0x1

    goto :goto_6c

    :cond_8f
    const/4 v6, -0x1

    .line 345
    :goto_90
    if-eq v6, v4, :cond_38d

    .line 349
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 350
    add-int/lit8 v7, v6, 0xc

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    int-to-long v12, v7

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    .line 351
    add-int/lit8 v7, v6, 0x10

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v3, v4

    and-long/2addr v3, v14

    .line 353
    invoke-static {v8, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 354
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 355
    long-to-int v9, v3

    const/16 v10, 0x10

    invoke-virtual {v8, v10, v9}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 357
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v14, Ljava/io/RandomAccessFile;

    invoke-direct {v14, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    const-wide/16 v17, 0x0

    move-object/from16 v16, v14

    move-wide/from16 v19, v3

    move-object/from16 v21, v9

    :try_start_d7
    invoke-static/range {v16 .. v21}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addFileRangeDigests(Ljava/io/RandomAccessFile;JJLjava/util/List;)V

    .line 360
    move-object/from16 v16, v14

    move-wide/from16 v17, v3

    move-wide/from16 v19, v12

    move-object/from16 v21, v9

    invoke-static/range {v16 .. v21}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addFileRangeDigests(Ljava/io/RandomAccessFile;JJLjava/util/List;)V

    .line 361
    invoke-static {v6, v9}, Lcom/dex2c/plus/engine/ApkSignerHelper;->addMemoryDigests([BLjava/util/List;)V
    :try_end_e8
    .catchall {:try_start_d7 .. :try_end_e8} :catchall_381

    .line 362
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 364
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    const/16 v15, 0x5a

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 367
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 369
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_112
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 370
    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 371
    goto :goto_112

    .line 372
    :cond_122
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 373
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 375
    array-length v9, v7

    const/16 v10, 0x8

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 376
    const/16 v14, 0x103

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 377
    array-length v14, v7

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 379
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v7

    .line 380
    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v7

    .line 382
    invoke-static/range {p3 .. p3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v9

    .line 383
    invoke-static {v9}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v9

    .line 385
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 386
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 389
    invoke-static/range {p4 .. p4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v15

    .line 391
    const-string v20, "SHA256withRSA"

    invoke-static/range {v20 .. v20}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 392
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    move-object/from16 v22, v6

    const/16 v23, 0x1

    if-eqz p5, :cond_227

    .line 396
    move-wide/from16 v24, v12

    const/4 v6, 0x3

    new-array v12, v6, [[B

    const/4 v6, 0x0

    aput-object v7, v12, v6

    aput-object v9, v12, v23

    const/4 v6, 0x2

    aput-object v14, v12, v6

    invoke-static {v12}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v6

    .line 397
    invoke-static {v6}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v12

    .line 399
    invoke-virtual {v10, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 400
    invoke-virtual {v10, v6}, Ljava/security/Signature;->update([B)V

    .line 401
    invoke-virtual {v10}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 403
    array-length v13, v6

    const/16 v21, 0x8

    add-int/lit8 v13, v13, 0x8

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 404
    const/16 v13, 0x103

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    array-length v13, v6

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 406
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 408
    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 410
    const/4 v6, 0x3

    new-array v13, v6, [[B

    const/4 v6, 0x0

    aput-object v12, v13, v6

    aput-object v1, v13, v23

    const/4 v1, 0x2

    aput-object v15, v13, v1

    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    .line 411
    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 412
    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 414
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 415
    const v12, 0x7109871a

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 416
    const/4 v12, 0x2

    new-array v13, v12, [[B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v13, v12

    aput-object v1, v13, v23

    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    .line 418
    const/16 v6, 0x8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 419
    array-length v12, v1

    int-to-long v12, v12

    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 420
    const/4 v12, 0x2

    new-array v13, v12, [[B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v13, v12

    aput-object v1, v13, v23

    invoke-static {v13}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_229

    .line 395
    :cond_227
    move-wide/from16 v24, v12

    .line 424
    :goto_229
    if-eqz p6, :cond_2ea

    .line 425
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 426
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 427
    const v6, 0x7fffffff

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 430
    const/4 v6, 0x4

    new-array v12, v6, [[B

    const/4 v6, 0x0

    aput-object v7, v12, v6

    aput-object v9, v12, v23

    const/4 v6, 0x2

    aput-object v1, v12, v6

    const/4 v6, 0x3

    aput-object v14, v12, v6

    invoke-static {v12}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v6

    .line 431
    invoke-static {v6}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v7

    .line 433
    invoke-virtual {v10, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 434
    invoke-virtual {v10, v6}, Ljava/security/Signature;->update([B)V

    .line 435
    invoke-virtual {v10}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    .line 437
    array-length v6, v2

    const/16 v9, 0x8

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 438
    const/16 v9, 0x103

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 439
    array-length v9, v2

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 440
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v2

    .line 442
    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v2

    .line 444
    const/4 v6, 0x4

    new-array v9, v6, [[B

    const/4 v10, 0x0

    aput-object v7, v9, v10

    aput-object v1, v9, v23

    const/4 v1, 0x2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    aput-object v15, v9, v1

    invoke-static {v9}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->prefixLength([B)[B

    move-result-object v1

    .line 448
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 449
    const v6, -0xfac9740

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    const/4 v6, 0x2

    new-array v7, v6, [[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v7, v6

    aput-object v1, v7, v23

    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    .line 452
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 453
    array-length v6, v1

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 454
    const/4 v6, 0x2

    new-array v7, v6, [[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v7, v6

    aput-object v1, v7, v23

    invoke-static {v7}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 457
    :cond_2ea
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 458
    array-length v2, v1

    const/16 v5, 0x8

    add-int/2addr v2, v5

    const/16 v6, 0x10

    add-int/2addr v2, v6

    int-to-long v6, v2

    .line 459
    const-wide/16 v9, 0x8

    add-long/2addr v9, v6

    .line 461
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 462
    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 464
    const-string v5, "APK Sig Block 42"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 465
    const/4 v6, 0x4

    new-array v6, v6, [[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    aput-object v1, v6, v23

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/dex2c/plus/engine/ApkSignerHelper;->concat([[B)[B

    move-result-object v1

    .line 467
    add-long/2addr v9, v3

    long-to-int v2, v9

    const/16 v5, 0x10

    invoke-virtual {v8, v5, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 469
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    :try_start_334
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v6, p1

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x10000

    invoke-direct {v5, v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_342
    .catchall {:try_start_334 .. :try_end_342} :catchall_375

    .line 471
    const-wide/16 v6, 0x0

    move-object/from16 p0, v2

    move-wide/from16 p1, v6

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    :try_start_34c
    invoke-static/range {p0 .. p5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->copyRange(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)V

    .line 472
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 473
    move-object/from16 p0, v2

    move-wide/from16 p1, v3

    move-wide/from16 p3, v24

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->copyRange(Ljava/io/RandomAccessFile;JJLjava/io/OutputStream;)V

    .line 474
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_362
    .catchall {:try_start_34c .. :try_end_362} :catchall_369

    .line 475
    :try_start_362
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_365
    .catchall {:try_start_362 .. :try_end_365} :catchall_375

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 476
    return-void

    .line 469
    :catchall_369
    move-exception v0

    move-object v1, v0

    :try_start_36b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_36e
    .catchall {:try_start_36b .. :try_end_36e} :catchall_36f

    goto :goto_374

    :catchall_36f
    move-exception v0

    move-object v3, v0

    :try_start_371
    invoke-static {v1, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_374
    throw v1
    :try_end_375
    .catchall {:try_start_371 .. :try_end_375} :catchall_375

    :catchall_375
    move-exception v0

    move-object v1, v0

    :try_start_377
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37a
    .catchall {:try_start_377 .. :try_end_37a} :catchall_37b

    goto :goto_380

    :catchall_37b
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_380
    throw v1

    .line 358
    :catchall_381
    move-exception v0

    move-object v1, v0

    :try_start_383
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_386
    .catchall {:try_start_383 .. :try_end_386} :catchall_387

    goto :goto_38c

    :catchall_387
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_38c
    throw v1

    .line 346
    :cond_38d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOCD not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catchall_395
    move-exception v0

    move-object v1, v0

    :try_start_397
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39a
    .catchall {:try_start_397 .. :try_end_39a} :catchall_39b

    goto :goto_3a0

    :catchall_39b
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3a0
    throw v1

    .line 327
    :cond_3a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZIP too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3aa

    :goto_3a9
    throw v0

    :goto_3aa
    goto :goto_3a9
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .registers 7

    .line 638
    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4a

    .line 639
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 640
    nop

    .line 641
    nop

    .line 642
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_45

    .line 643
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 644
    const/16 v5, 0x100

    if-lt v4, v5, :cond_2a

    goto :goto_42

    .line 645
    :cond_2a
    sget-object v5, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_LOOKUP:[B

    aget-byte v4, v5, v4

    .line 646
    if-ltz v4, :cond_42

    .line 647
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v4

    .line 648
    add-int/lit8 v3, v3, 0x6

    .line 649
    const/16 v4, 0x8

    if-lt v3, v4, :cond_42

    .line 650
    add-int/lit8 v3, v3, -0x8

    .line 651
    ushr-int v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 655
    :cond_45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 638
    :cond_4a
    :goto_4a
    new-array p0, v0, [B

    return-object p0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .registers 10

    .line 611
    if-eqz p0, :cond_89

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_89

    .line 612
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 613
    const/4 v1, 0x0

    .line 614
    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_84

    .line 615
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 616
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

    .line 617
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

    .line 619
    :goto_38
    sget-object v6, Lcom/dex2c/plus/engine/ApkSignerHelper;->B64_CHARS:[C

    ushr-int/lit8 v7, v1, 0x2

    aget-char v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    if-eq v2, v4, :cond_74

    .line 621
    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v7, v2, 0x4

    or-int/2addr v1, v7

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    if-eq v5, v4, :cond_65

    .line 623
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, v5, 0x6

    or-int/2addr v1, v2

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    and-int/lit8 v1, v5, 0x3f

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 626
    :cond_65
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 630
    :cond_74
    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :goto_82
    move v1, v3

    goto :goto_14

    .line 634
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 611
    :cond_89
    :goto_89
    const-string p0, ""

    return-object p0
.end method

.method private static varargs concat([[B)[B
    .registers 8

    .line 579
    nop

    .line 580
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

    .line 581
    :cond_e
    new-array v0, v3, [B

    .line 582
    nop

    .line 583
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    if-ge v3, v2, :cond_21

    aget-object v5, p0, v3

    .line 584
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    array-length v5, v5

    add-int/2addr v4, v5

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 587
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

    .line 479
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 480
    const/high16 p1, 0x10000

    new-array p2, p1, [B

    .line 481
    nop

    .line 482
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_23

    .line 483
    int-to-long v0, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 485
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    goto :goto_23

    .line 486
    :cond_1d
    invoke-virtual {p5, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 487
    int-to-long v0, v1

    sub-long/2addr p3, v0

    .line 488
    goto :goto_8

    .line 489
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

    .line 527
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    .line 530
    const-string v1, "06096086480165030402010500"

    invoke-static {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v1

    .line 531
    const-string v3, "06092a864886f70d0101010500"

    invoke-static {v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v3

    .line 533
    invoke-static {p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 534
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

    .line 535
    const/4 v5, 0x4

    invoke-static {v5, p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p2

    .line 537
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

    .line 538
    const/16 v3, 0x31

    invoke-static {v3, p2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p2

    .line 540
    const-string v8, "06092a864886f70d010701"

    invoke-static {v8}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 541
    invoke-static {v2, v8}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object v8

    .line 542
    const/16 v9, 0xa0

    invoke-static {v9, p1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p1

    .line 544
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

    .line 545
    invoke-static {v2, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    .line 546
    const-string p1, "06092a864886f70d010702"

    invoke-static {p1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 548
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

    .line 559
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 560
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->encodeTlv(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeTlv(I[B)[B
    .registers 9

    .line 564
    array-length v0, p1

    .line 566
    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v1, :cond_11

    .line 567
    new-array v1, v4, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    int-to-byte p0, v0

    aput-byte p0, v1, v2

    goto :goto_5b

    .line 568
    :cond_11
    const/16 v1, 0x100

    const/4 v5, 0x3

    if-ge v0, v1, :cond_23

    .line 569
    new-array v1, v5, [B

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    const/16 p0, -0x7f

    aput-byte p0, v1, v2

    int-to-byte p0, v0

    aput-byte p0, v1, v4

    goto :goto_5b

    .line 570
    :cond_23
    const/high16 v1, 0x10000

    const/4 v6, 0x4

    if-ge v0, v1, :cond_3e

    .line 571
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

    .line 573
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

    .line 575
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

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 592
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 593
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 594
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 595
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 593
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 597
    :cond_2a
    return-object v1
.end method

.method public static isMetaInfSignature(Ljava/lang/String;)Z
    .registers 3

    .line 301
    const/4 v0, 0x0

    if-eqz p0, :cond_44

    const-string v1, "META-INF/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_44

    .line 304
    :cond_c
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 305
    const-string v1, ".SF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 306
    const-string v1, ".RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 307
    const-string v1, ".DSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 308
    const-string v1, ".EC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 309
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 310
    const-string v1, "META-INF/SIG-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    :cond_42
    const/4 v0, 0x1

    .line 305
    :cond_43
    return v0

    .line 302
    :cond_44
    :goto_44
    return v0
.end method

.method public static loadSigningCredentials(Ljava/lang/String;)Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;
    .registers 6

    .line 57
    nop

    .line 58
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 61
    goto :goto_24

    .line 64
    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_3a

    .line 65
    new-instance p0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/MT2/keys/signature.key"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 67
    move-object v0, p0

    .line 71
    :cond_3a
    const-string p0, "X.509"

    const-string v1, "RSA"

    if-eqz v0, :cond_ae

    .line 72
    :try_start_40
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_ad

    .line 73
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 74
    const v3, -0x532ddc55

    if-ne v0, v3, :cond_9f

    .line 75
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 76
    new-array v0, v0, [B

    .line 77
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 78
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 79
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 80
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 81
    new-array v3, v3, [B

    .line 82
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 83
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 84
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 87
    new-instance v4, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;

    invoke-direct {v4}, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;-><init>()V

    .line 88
    iput-object v3, v4, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 89
    iput-object v0, v4, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->cert:Ljava/security/cert/X509Certificate;

    .line 90
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    iput-object v3, v4, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->certDer:[B

    .line 91
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, v4, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->pubKeyDer:[B
    :try_end_9a
    .catchall {:try_start_4a .. :try_end_9a} :catchall_a3

    .line 92
    nop

    .line 94
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 92
    return-object v4

    .line 94
    :cond_9f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_ad

    .line 95
    goto :goto_ae

    .line 72
    :catchall_a3
    move-exception v0

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v2

    :try_start_a9
    invoke-static {v0, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_ac
    throw v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_ad

    .line 94
    :catchall_ad
    move-exception v0

    .line 99
    :cond_ae
    :goto_ae
    :try_start_ae
    const-string v0, "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAECggEBAJV5THRnp+dYULZnXBLsmF5cIsGIwE/86MHpHbJkMgQSRXjxZySi/+tYt0Quqwh5n9D+B0DjuYxU+h3Lr1PlpINPBoWAT4uZLdzwfph/s8f99J/Fqv5LiUhLt4qdY5B6GZfO9+sbKouM/5MZ+YNC1qJOevYeo7oA6xcFIahdrmEoVprtbZjB4wRimbpDqdAktePxXOfsGe8vCXYflt/kV+VwjZmnnggwh3t6rm2A5LutVz0Zb3e1rALyX3J2lo/JpFZ1wNW5vXa0ba8u963DAzoq2fFS3Ag+rP5Bt34KJ4a3GPaGAGQUuzrucNQxDhuRz1BDrvpqZc1DTC5onK+j6uUCgYEA63+xyyGJiWvJYERJgUcP3wcBKKCPMRkqr6XFzRsoWG/dvEgrOMlWX560M5M8klb71512rEePlEcFLu1tW6zFCnIzYTAC5w4QUxoW5cGtsY8gxphL+enjXwixkq8QoMUlWMlwu6VR1NkuBxJjpUkCGDfoKvx9YFIVaEy9rG6uXd8CgYEA5Tq/5nX4cLuBfgx2fc3Br+HVFCUx/fGtdoRVi8YhyneURgWkztRoFtiWU6FN7dm9pDMl2jM3AMLk77EKOMwVyU22zZGPfA7PxPvcTyAtMEbjPXcrgHHe0LXMV4+sq+O0/G3e2D8kRL6aRwwW+9/ZQ08cupZ86uLiB308aKT/b0MCgYB3PhEoabLagllVBT6y1uiSZVmQ2LuogLW8epPNZxLmtL3xuBkqh8fUYuebtdHVx3V9l52fXhy1V8CoIlBdOv4KbAjYDRdrJxPdADjX3Vm1rmNKK5NM18DpPd2sCDjDLw/aBSWv3eWxgMZtjkImTvFgke5c1bwmKWnthe4EgYaIwQKBgCTZL9X1Ks28ZpGDoVyRwcvrKpyFaibfPboqhbHlVLM+S7iB2b9hx6W8hVXGPUe509FcY35S80mNCs45EGKW8/2bH4KmHoGbw+xvbDfP/VOgYZEU4gpQw7ebMdD1iJVNEl/trX/njoX6ecRn/h3ZGwzF3+FipYwAksMPb7GGrIUPAoGAF/wYSoZSADP/mCaRhjvKEBr0+f8brCtmQhn7bCDLeaHnT9M5r2R/jzO30dCRSMxxepRb1e/N5IVAyIB3dKKo68mPn8SRL4DHbxzz4XoDebi5++4u8mwcsJXsddZZ0hWFQAxt6/P8Oodk2AnAySF1OZ0bE4hWiZRpQHjlG238G9s="

    invoke-static {v0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    const-string v2, "MIICyDCCAbCgAwIBAgIENiws+DANBgkqhkiG9w0BAQsFADAlMQswCQYDVQQGEwJCRDEWMBQGA1UEAxMNTmF5ZW0gSG9zc2FpbjAgFw0yNTAyMjAxNjAxMjVaGA8yMTI1MDEyNzE2MDEyNVowJTELMAkGA1UEBhMCQkQxFjAUBgNVBAMTDU5heWVtIEhvc3NhaW4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDS30WBQ+vTRrrzAvvik5V7tnL+477pXPx+g6BrZzOIOIa+WD+8sWdglva4KuQbBzRAHFkzjt4XyYBl9UKjghJP01nuooQ+2R51VgOcBr8kjRPahIw8f95AYbFlpnDhcPbj6j4BxPek6p5/49rMaoshMnfzDDHBFQ/8eXAOuJGbzec1O+JwlS5FDyetwwtUn9zjwHrzjd4Ds8mXSQfsw5uU+BLhndYj1WsnDPNyln5MPAKFZkO1BlFITxP13JSUMGSC1D2ZX9alsz6b5Zxjbp/NWnDgN4AmmFm61i8mTvvSgC/Z8r5rRT5lplMl96nlw3ZjFAk5NG7WV7u2wojvd0JdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAI6U/sw5Te1J14jM02aIkYqP7h6jkhMuyjexkimZUGBl/pNqFEVrlqRtiQ7HN/k4o7UigAd1Z9XleKS1UIo9XI6cPdgJx3FtO+z0t0knnBTfXKVWYuuUz57gOEbYvhBa+10DHlvTELhuLQxWIlTjssFTkIOCoj8aCS0xJBCNxd9hW2UKha4VygA8gACHEt2VbMJbrJ5R1rUYi5lx0F3R+vkioRFkwky68S7r9SjgjBXlHWihTxnQUQBkAMTfx3QD1FABAT48uYxgg9hG16RC71eLSpypeV4fm2KXcJCfF5CsI1KJZHSAbXQDL81RtwFi1dlEd2NXS5tbusyuymMCcbQ="

    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 101
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 102
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 105
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 106
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 108
    new-instance v1, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;

    invoke-direct {v1}, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;-><init>()V

    .line 109
    iput-object v0, v1, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 110
    iput-object p0, v1, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->cert:Ljava/security/cert/X509Certificate;

    .line 111
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, v1, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->certDer:[B

    .line 112
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    iput-object p0, v1, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->pubKeyDer:[B
    :try_end_ef
    .catchall {:try_start_ae .. :try_end_ef} :catchall_f0

    .line 113
    return-object v1

    .line 114
    :catchall_f0
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize built-in stealth signing credentials"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static prefixLength([B)[B
    .registers 3

    .line 552
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 553
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 554
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static signApk(Ljava/io/File;)Z
    .registers 5

    .line 120
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v2, v0, Lcom/dex2c/plus/model/ProjectState;->signV1:Z

    goto :goto_b

    :cond_a
    const/4 v2, 0x1

    .line 122
    :goto_b
    if-eqz v0, :cond_10

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->signV2:Z

    goto :goto_11

    :cond_10
    const/4 v3, 0x1

    .line 123
    :goto_11
    if-eqz v0, :cond_15

    iget-boolean v1, v0, Lcom/dex2c/plus/model/ProjectState;->signV3:Z

    .line 124
    :cond_15
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/dex2c/plus/model/ProjectState;->customKeyPath:Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    const-string v0, "/storage/emulated/0/MT2/keys/signature.key"

    .line 125
    :goto_1c
    invoke-static {p0, v2, v3, v1, v0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->signApk(Ljava/io/File;ZZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static signApk(Ljava/io/File;ZZZLjava/lang/String;)Z
    .registers 27

    .line 129
    move-object/from16 v0, p0

    const-string v1, "\r\n"

    if-eqz v0, :cond_400

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_400

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x16

    cmp-long v7, v3, v5

    if-gez v7, :cond_19

    const/4 v1, 0x0

    goto/16 :goto_401

    .line 133
    :cond_19
    if-nez p1, :cond_25

    if-nez p2, :cond_25

    if-nez p3, :cond_25

    .line 134
    nop

    .line 135
    nop

    .line 136
    const/4 v4, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_2b

    .line 139
    :cond_25
    move/from16 v4, p1

    move/from16 v10, p2

    move/from16 v11, p3

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 140
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".v1."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".v2."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    :try_start_77
    invoke-static/range {p4 .. p4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->loadSigningCredentials(Ljava/lang/String;)Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;

    move-result-object v5

    .line 145
    iget-object v7, v5, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 146
    iget-object v6, v5, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->cert:Ljava/security/cert/X509Certificate;

    .line 147
    iget-object v8, v5, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->certDer:[B

    .line 148
    iget-object v9, v5, Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;->pubKeyDer:[B

    .line 150
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 151
    const-string v14, "SHA-256"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 152
    const/high16 v15, 0x10000

    new-array v3, v15, [B

    .line 154
    new-instance v15, Ljava/util/zip/ZipFile;

    invoke-direct {v15, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_97
    .catchall {:try_start_77 .. :try_end_97} :catchall_3e8

    .line 155
    :try_start_97
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v16

    .line 156
    :goto_9b
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_3d6

    if-eqz v17, :cond_107

    .line 157
    :try_start_a1
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 158
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b6

    .line 160
    move-object/from16 v0, p0

    goto :goto_9b

    .line 162
    :cond_b6
    invoke-virtual {v14}, Ljava/security/MessageDigest;->reset()V

    .line 163
    invoke-virtual {v15, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_bd
    .catchall {:try_start_a1 .. :try_end_bd} :catchall_fc

    .line 165
    :goto_bd
    move-object/from16 v17, v9

    :try_start_bf
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_ea

    move-object/from16 p3, v13

    const/4 v13, -0x1

    if-eq v9, v13, :cond_d3

    .line 166
    const/4 v13, 0x0

    :try_start_c9
    invoke-virtual {v14, v3, v13, v9}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_d1

    move-object/from16 v13, p3

    move-object/from16 v9, v17

    goto :goto_bd

    .line 163
    :catchall_d1
    move-exception v0

    goto :goto_ed

    .line 168
    :cond_d3
    if-eqz v2, :cond_d8

    :try_start_d5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 169
    :cond_d8
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e3
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_fa

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v13, p3

    move-object/from16 v9, v17

    goto :goto_9b

    .line 163
    :catchall_ea
    move-exception v0

    move-object/from16 p3, v13

    :goto_ed
    move-object v1, v0

    if-eqz v2, :cond_f9

    :try_start_f0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    goto :goto_f9

    :catchall_f4
    move-exception v0

    move-object v2, v0

    :try_start_f6
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_f9
    :goto_f9
    throw v1
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_fa

    .line 154
    :catchall_fa
    move-exception v0

    goto :goto_ff

    :catchall_fc
    move-exception v0

    move-object/from16 p3, v13

    :goto_ff
    move-object/from16 v1, p3

    move-object v3, v0

    move-object/from16 p1, v12

    move-object v2, v15

    goto/16 :goto_3dc

    .line 172
    :cond_107
    move-object/from16 v17, v9

    move-object/from16 p3, v13

    :try_start_10b
    new-instance v0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v13, 0x10000

    invoke-direct {v2, v9, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2}, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_3d0

    .line 175
    if-eqz v4, :cond_2a3

    .line 177
    :try_start_123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v9, "Manifest-Version: 1.0\r\nCreated-By: 1.0 (Android SignApk)\r\n\r\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_13a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_13e
    .catchall {:try_start_123 .. :try_end_13e} :catchall_296

    move-object/from16 p1, v12

    const-string v12, "\r\n\r\n"

    move-object/from16 p4, v3

    const-string v3, "\r\nSHA-256-Digest: "

    move-object/from16 v18, v0

    const-string v0, "Name: "

    if-eqz v16, :cond_1b0

    :try_start_14c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 182
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    check-cast v13, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19
    :try_end_160
    .catchall {:try_start_14c .. :try_end_160} :catchall_1a4

    move-object/from16 v21, v15

    :try_start_162
    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;
    :try_end_166
    .catchall {:try_start_162 .. :try_end_166} :catchall_1a0

    move-object/from16 v19, v2

    :try_start_168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_191
    .catchall {:try_start_168 .. :try_end_191} :catchall_19e

    .line 185
    move-object/from16 v12, p1

    move-object/from16 v3, p4

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v13, v20

    move-object/from16 v15, v21

    goto :goto_13a

    .line 174
    :catchall_19e
    move-exception v0

    goto :goto_1a9

    :catchall_1a0
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_1a9

    :catchall_1a4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v15

    :goto_1a9
    move-object/from16 v1, p3

    move-object v3, v0

    move-object/from16 v4, v19

    goto/16 :goto_29f

    .line 186
    :cond_1b0
    move-object/from16 v19, v2

    move-object/from16 v21, v15

    :try_start_1b4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 189
    invoke-virtual {v14}, Ljava/security/MessageDigest;->reset()V

    .line 190
    invoke-virtual {v14, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 191
    invoke-static {v4}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v4

    .line 193
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v15, "Signature-Version: 1.0\r\nCreated-By: 1.0 (Android SignApk)\r\nSHA-256-Digest-Manifest: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 195
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1db
    .catchall {:try_start_1b4 .. :try_end_1db} :catchall_292

    .line 198
    if-eqz v10, :cond_1e5

    if-eqz v11, :cond_1e5

    .line 199
    :try_start_1df
    const-string v1, "X-Android-APK-Signed: 2, 3\r\n\r\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f8

    .line 200
    :cond_1e5
    if-eqz v10, :cond_1ed

    .line 201
    const-string v1, "X-Android-APK-Signed: 2\r\n\r\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f8

    .line 202
    :cond_1ed
    if-eqz v11, :cond_1f5

    .line 203
    const-string v1, "X-Android-APK-Signed: 3\r\n\r\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f4
    .catchall {:try_start_1df .. :try_end_1f4} :catchall_19e

    goto :goto_1f8

    .line 205
    :cond_1f5
    :try_start_1f5
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_1f8
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_200
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_204
    .catchall {:try_start_1f5 .. :try_end_204} :catchall_292

    if-eqz v4, :cond_241

    :try_start_206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 210
    invoke-virtual {v14}, Ljava/security/MessageDigest;->reset()V

    .line 211
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 212
    invoke-static {v5}, Lcom/dex2c/plus/engine/ApkSignerHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_240
    .catchall {:try_start_206 .. :try_end_240} :catchall_19e

    .line 214
    goto :goto_200

    .line 215
    :cond_241
    :try_start_241
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 218
    const-string v1, "SHA256withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 220
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 221
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 222
    invoke-static {v6, v8, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper;->createPkcs7SignedData(Ljava/security/cert/X509Certificate;[B[B)[B

    move-result-object v1

    .line 224
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "META-INF/MANIFEST.MF"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_266
    .catchall {:try_start_241 .. :try_end_266} :catchall_292

    .line 225
    move-object/from16 v4, v19

    :try_start_268
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 226
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 227
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 229
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "META-INF/CERT.SF"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 231
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 232
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 234
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v2, "META-INF/CERT.RSA"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 236
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 237
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_291
    .catchall {:try_start_268 .. :try_end_291} :catchall_2e1

    goto :goto_2ac

    .line 174
    :catchall_292
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_29c

    :catchall_296
    move-exception v0

    move-object v4, v2

    move-object/from16 p1, v12

    move-object/from16 v21, v15

    :goto_29c
    move-object/from16 v1, p3

    move-object v3, v0

    :goto_29f
    move-object/from16 v2, v21

    goto/16 :goto_3c4

    .line 175
    :cond_2a3
    move-object/from16 v18, v0

    move-object v4, v2

    move-object/from16 p4, v3

    move-object/from16 p1, v12

    move-object/from16 v21, v15

    .line 240
    :goto_2ac
    :try_start_2ac
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 241
    :goto_2b0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1
    :try_end_2b4
    .catchall {:try_start_2ac .. :try_end_2b4} :catchall_3be

    if-eqz v1, :cond_383

    .line 242
    :try_start_2b6
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 243
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->isMetaInfSignature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c7

    .line 245
    goto :goto_2b0

    .line 247
    :cond_2c7
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 249
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v5
    :try_end_2d7
    .catchall {:try_start_2b6 .. :try_end_2d7} :catchall_37f

    if-eqz v5, :cond_2e3

    :try_start_2d9
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V
    :try_end_2e0
    .catchall {:try_start_2d9 .. :try_end_2e0} :catchall_2e1

    goto :goto_2e3

    .line 174
    :catchall_2e1
    move-exception v0

    goto :goto_29c

    .line 251
    :cond_2e3
    :goto_2e3
    :try_start_2e3
    const-string v5, "lib/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2e9
    .catchall {:try_start_2e3 .. :try_end_2e9} :catchall_37f

    if-nez v5, :cond_2f6

    :try_start_2eb
    const-string v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f4

    goto :goto_2f6

    :cond_2f4
    const/4 v5, 0x0

    goto :goto_2f7

    :cond_2f6
    :goto_2f6
    const/4 v5, 0x1

    .line 252
    :goto_2f7
    if-nez v5, :cond_302

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6

    if-nez v6, :cond_300

    goto :goto_302

    :cond_300
    const/4 v6, 0x0

    goto :goto_303

    :cond_302
    :goto_302
    const/4 v6, 0x1

    .line 253
    :goto_303
    if-eqz v6, :cond_334

    .line 254
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 255
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 256
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 257
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 258
    if-eqz v5, :cond_323

    const/16 v5, 0x1000

    goto :goto_324

    :cond_323
    const/4 v5, 0x4

    .line 259
    :goto_324
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->getCount()J

    move-result-wide v12

    invoke-static {v6, v12, v13, v2, v5}, Lcom/dex2c/plus/engine/FastZipModifier;->buildAlignedExtra([BJLjava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V
    :try_end_333
    .catchall {:try_start_2eb .. :try_end_333} :catchall_2e1

    .line 260
    goto :goto_34a

    .line 261
    :cond_334
    const/16 v2, 0x8

    :try_start_336
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 262
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2
    :try_end_33d
    .catchall {:try_start_336 .. :try_end_33d} :catchall_37f

    if-eqz v2, :cond_34a

    .line 263
    :try_start_33f
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dex2c/plus/engine/FastZipModifier;->cleanAlignmentExtra([B)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V
    :try_end_34a
    .catchall {:try_start_33f .. :try_end_34a} :catchall_2e1

    .line 266
    :cond_34a
    :goto_34a
    :try_start_34a
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_34d
    .catchall {:try_start_34a .. :try_end_34d} :catchall_37f

    .line 267
    move-object/from16 v2, v21

    :try_start_34f
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_353
    .catchall {:try_start_34f .. :try_end_353} :catchall_3ba

    .line 269
    :goto_353
    move-object/from16 v3, p4

    :try_start_355
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_363

    .line 270
    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_360
    .catchall {:try_start_355 .. :try_end_360} :catchall_371

    move-object/from16 p4, v3

    goto :goto_353

    .line 272
    :cond_363
    if-eqz v1, :cond_368

    :try_start_365
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 273
    :cond_368
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_36b
    .catchall {:try_start_365 .. :try_end_36b} :catchall_3ba

    .line 274
    move-object/from16 v21, v2

    move-object/from16 p4, v3

    goto/16 :goto_2b0

    .line 267
    :catchall_371
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_37e

    :try_start_375
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_378
    .catchall {:try_start_375 .. :try_end_378} :catchall_379

    goto :goto_37e

    :catchall_379
    move-exception v0

    move-object v1, v0

    :try_start_37b
    invoke-static {v3, v1}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_37e
    :goto_37e
    throw v3

    .line 174
    :catchall_37f
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_3bb

    .line 275
    :cond_383
    move-object/from16 v2, v21

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_388
    .catchall {:try_start_37b .. :try_end_388} :catchall_3ba

    .line 276
    :try_start_388
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_38b
    .catchall {:try_start_388 .. :try_end_38b} :catchall_3b6

    .line 277
    :try_start_38b
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 279
    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v9, v17

    invoke-static/range {v5 .. v11}, Lcom/dex2c/plus/engine/ApkSignerHelper;->applyApkSigningBlock(Ljava/io/File;Ljava/io/File;Ljava/security/PrivateKey;[B[BZZ)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 284
    :cond_3a0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a9

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z
    :try_end_3a9
    .catchall {:try_start_38b .. :try_end_3a9} :catchall_3b2

    .line 287
    :cond_3a9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    :try_start_3ad
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_3b1
    .catchall {:try_start_3ad .. :try_end_3b1} :catchall_3e6

    return v0

    .line 289
    :catchall_3b2
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_3ec

    .line 154
    :catchall_3b6
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_3db

    .line 174
    :catchall_3ba
    move-exception v0

    :goto_3bb
    move-object/from16 v1, p3

    goto :goto_3c3

    :catchall_3be
    move-exception v0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    :goto_3c3
    move-object v3, v0

    :goto_3c4
    :try_start_3c4
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3c7
    .catchall {:try_start_3c4 .. :try_end_3c7} :catchall_3c8

    goto :goto_3cd

    :catchall_3c8
    move-exception v0

    move-object v4, v0

    :try_start_3ca
    invoke-static {v3, v4}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3cd
    throw v3
    :try_end_3ce
    .catchall {:try_start_3ca .. :try_end_3ce} :catchall_3ce

    .line 154
    :catchall_3ce
    move-exception v0

    goto :goto_3db

    :catchall_3d0
    move-exception v0

    move-object/from16 v1, p3

    move-object/from16 p1, v12

    goto :goto_3da

    :catchall_3d6
    move-exception v0

    move-object/from16 p1, v12

    move-object v1, v13

    :goto_3da
    move-object v2, v15

    :goto_3db
    move-object v3, v0

    :goto_3dc
    :try_start_3dc
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3df
    .catchall {:try_start_3dc .. :try_end_3df} :catchall_3e0

    goto :goto_3e5

    :catchall_3e0
    move-exception v0

    move-object v2, v0

    :try_start_3e2
    invoke-static {v3, v2}, Lcom/dex2c/plus/engine/ApkSignerHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3e5
    throw v3
    :try_end_3e6
    .catchall {:try_start_3e2 .. :try_end_3e6} :catchall_3e6

    .line 289
    :catchall_3e6
    move-exception v0

    goto :goto_3ec

    :catchall_3e8
    move-exception v0

    move-object/from16 p1, v12

    move-object v1, v13

    .line 290
    :goto_3ec
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3f5

    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 293
    :cond_3f5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3fe

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 296
    :cond_3fe
    const/4 v1, 0x0

    return v1

    .line 129
    :cond_400
    const/4 v1, 0x0

    .line 130
    :goto_401
    return v1
.end method
