.class public Lcom/dex2c/plus/engine/DexRewriterEngine;
.super Ljava/lang/Object;
.source "DexRewriterEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;
    }
.end annotation


# static fields
.field public static final LOADER_INIT_METHOD:Ljava/lang/String; = "init"

.field private static final STREAM_BUF_SIZE:I = 0x10000


# direct methods
.method static bridge synthetic -$$Nest$smbuildCustomLoaderClassDef(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 0

    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->buildCustomLoaderClassDef(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smrewriteProtectedClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 0

    invoke-static {p0, p1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->rewriteProtectedClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDirToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 605
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_4

    .line 607
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 610
    invoke-static {v3, v4, p2, p3, p4}, Lcom/dex2c/plus/engine/DexRewriterEngine;->addDirToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;[B)V

    goto :goto_3

    .line 611
    :cond_2
    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 612
    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 615
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 617
    :goto_1
    :try_start_0
    invoke-virtual {v4, p4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p2, p4, v1, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 618
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 619
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 615
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private static buildCustomLoaderClassDef(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 21

    .line 263
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v10, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v11, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    .line 272
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v3, "init"

    const-string v4, "V"

    move-object/from16 v5, p0

    invoke-direct {v1, v5, v3, v2, v4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 266
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->RETURN_VOID:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 278
    new-instance v12, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 281
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 283
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    sget-object v6, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v6

    or-int v17, v0, v6

    .line 284
    sget-object v18, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 285
    sget-object v19, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v14, "<clinit>"

    const-string v16, "V"

    move-object/from16 v20, v1

    move-object v13, v5

    invoke-direct/range {v12 .. v20}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    .line 278
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v10, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v11, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    const-string v5, "<init>"

    .line 296
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v7, "Ljava/lang/Object;"

    invoke-direct {v1, v7, v5, v6, v4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 290
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->RETURN_VOID:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v5}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0, v3, v3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 302
    new-instance v12, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 305
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 307
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    sget-object v6, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v6

    or-int v17, v0, v6

    .line 308
    sget-object v18, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 309
    sget-object v19, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v14, "<init>"

    const-string v16, "V"

    move-object/from16 v13, p0

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    .line 302
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;

    sget-object v6, Lcom/android/tools/smali/dexlib2/Opcode;->CONST_STRING:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v7, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableStringReference;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v2, v7}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction21c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v10, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v11, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    const-string v2, "Ljava/lang/String;"

    .line 325
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "Ljava/lang/System;"

    const-string v7, "loadLibrary"

    invoke-direct {v1, v6, v7, v2, v4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 319
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->RETURN_VOID:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    invoke-direct {v1, v5, v0, v3, v3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 331
    new-instance v12, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 334
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 336
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v2

    or-int v17, v0, v2

    .line 337
    sget-object v18, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 338
    sget-object v19, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v14, "init"

    const-string v16, "V"

    move-object/from16 v13, p0

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    .line 331
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 344
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v2

    .line 346
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 348
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 349
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 350
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 352
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v3, "Ljava/lang/Object;"

    const-string v5, "Loader.java"

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static buildFreshClinitCallingLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 11

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v2, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v9, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    .line 426
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v4, "V"

    const-string v5, "init"

    invoke-direct {v9, p1, v5, v3, v4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance p1, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v1, Lcom/android/tools/smali/dexlib2/Opcode;->RETURN_VOID:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p1, v1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v10, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {v10, p1, v0, v1, v1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 433
    sget-object p1, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result p1

    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    or-int v7, p1, v0

    .line 434
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 437
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 440
    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 441
    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v4, "<clinit>"

    const-string v6, "V"

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v2
.end method

.method private static collectDirFilePairs(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 540
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 541
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 543
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    invoke-static {v2, v3, p2}, Lcom/dex2c/plus/engine/DexRewriterEngine;->collectDirFilePairs(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 548
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static containsClass(Lcom/android/tools/smali/dexlib2/iface/DexFile;Ljava/lang/String;)Z
    .locals 1

    .line 245
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 246
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static hasCompiledSoFiles(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 255
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 256
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static packageAndSaveToStorage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;",
            "Ljava/io/File;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v4, Ljava/io/File;

    const-string v5, "dex"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 75
    invoke-static/range {p6 .. p6}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static/range {p7 .. p7}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "L"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lib"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".so"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 80
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-static {v9, v7}, Lcom/dex2c/plus/engine/DexRewriterEngine;->hasCompiledSoFiles(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz p5, :cond_c

    if-eqz v1, :cond_c

    .line 84
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 85
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 87
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dex2c/plus/model/DexClassItem;

    .line 88
    iget-object v13, v12, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz v2, :cond_1

    iget-object v13, v12, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    .line 89
    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 90
    :cond_1
    iget-object v13, v12, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v13, v12, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 92
    iget-object v12, v12, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 98
    const-string v2, "classes.dex"

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 104
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "STEP_REWRITE"

    const-string v15, "Rewriting DEX..."

    invoke-virtual {v12, v14, v15, v13}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "/"

    if-eqz v12, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v16

    if-eqz v16, :cond_5

    goto/16 :goto_5

    .line 109
    :cond_5
    new-instance v7, Ljava/io/File;

    move-object/from16 p3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 p5, v11

    const-string v11, "in_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-static {v0, v12, v7}, Lcom/dex2c/plus/engine/ApkDexManager;->extractSingleDexToFile(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_7

    .line 171
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 172
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6
    move-object/from16 v8, p3

    move/from16 v11, p5

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 117
    :try_start_1
    invoke-static {v7, v8}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 119
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/android/tools/smali/dexlib2/Opcodes;->getDefault()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v11

    .line 122
    :goto_3
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v16, v2

    .line 124
    new-instance v2, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 p6, v7

    :try_start_3
    new-instance v7, Lcom/dex2c/plus/engine/DexRewriterEngine$1;

    invoke-direct {v7, v6, v5, v1}, Lcom/dex2c/plus/engine/DexRewriterEngine$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v2, v7}, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;)V

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->getDexFileRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/DexFile;

    if-eqz v8, :cond_8

    .line 144
    invoke-static {v2, v6}, Lcom/dex2c/plus/engine/DexRewriterEngine;->containsClass(Lcom/android/tools/smali/dexlib2/iface/DexFile;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 145
    invoke-static {v6, v5}, Lcom/dex2c/plus/engine/DexRewriterEngine;->buildCustomLoaderClassDef(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v7

    .line 146
    new-instance v8, Lcom/dex2c/plus/engine/DexRewriterEngine$2;

    invoke-direct {v8, v2, v7}, Lcom/dex2c/plus/engine/DexRewriterEngine$2;-><init>(Lcom/android/tools/smali/dexlib2/iface/DexFile;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V

    move-object v2, v8

    .line 165
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->writeDexFile(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    .line 167
    invoke-interface {v3, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, p5, 0x1

    .line 169
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v14, v15, v7}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->delete()Z

    :cond_9
    move-object/from16 v8, p3

    move-object/from16 v2, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 p6, v7

    .line 171
    :goto_4
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 172
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->delete()Z

    .line 174
    :cond_a
    throw v0

    .line 176
    :cond_b
    :goto_5
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v1

    if-nez v1, :cond_c

    .line 177
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_c
    invoke-static/range {p0 .. p1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->resolveOutputDirectory(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    move-object/from16 v2, p2

    .line 182
    invoke-static {v1, v2}, Lcom/dex2c/plus/engine/DexRewriterEngine;->resolveNextCompiledApkFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 184
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v4

    const-string v5, "0/1"

    const-string v6, "STEP_PACKAGE"

    const-string v7, "Packaging APK..."

    invoke-virtual {v4, v6, v7, v5}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v0, v2, v3, v9}, Lcom/dex2c/plus/engine/DexRewriterEngine;->rebuildApkWithNativeFastZip(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)V

    :try_start_sign
    invoke-static {v2}, Lcom/dex2c/plus/engine/ApkSignerHelper;->signApk(Ljava/io/File;)Z
    :try_end_sign
    .catch Ljava/lang/Throwable; {:try_start_sign .. :try_end_sign} :catch_sign

    :catch_sign

    .line 186
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v0

    if-nez v0, :cond_d

    .line 187
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    const-string v3, "1/1"

    invoke-virtual {v0, v6, v7, v3}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_d
    new-instance v0, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;

    invoke-direct {v0}, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;-><init>()V

    .line 191
    iput-object v1, v0, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->outputFolder:Ljava/io/File;

    .line 192
    iput-object v2, v0, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->protectedApk:Ljava/io/File;

    const/4 v8, 0x0

    .line 193
    iput-object v8, v0, Lcom/dex2c/plus/engine/DexRewriterEngine$OutputResult;->bundleZip:Ljava/io/File;

    return-object v0
.end method

.method private static prependLoaderCallToClinit(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 18

    move-object/from16 v0, p0

    .line 447
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 449
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dex2c/plus/engine/DexRewriterEngine;->buildFreshClinitCallingLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v0

    return-object v0

    .line 452
    :cond_0
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    new-instance v10, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    .line 458
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v5, "V"

    const-string v6, "init"

    invoke-direct {v10, v0, v6, v4, v5}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    .line 462
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v3, Lcom/android/tools/smali/dexlib2/Opcode;->NOP:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {v0, v3}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 463
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v3

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v4

    add-int/2addr v3, v4

    .line 465
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 469
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 474
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 476
    new-instance v9, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;

    .line 477
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v10

    .line 478
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v8

    add-int/2addr v8, v3

    invoke-direct {v9, v10, v8}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;-><init>(Ljava/lang/String;I)V

    .line 476
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 481
    :cond_2
    new-instance v7, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    .line 482
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v8

    add-int/2addr v8, v3

    .line 483
    invoke-interface {v5}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v5

    invoke-direct {v7, v8, v5, v6}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;-><init>(IILjava/util/List;)V

    .line 481
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    :cond_3
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    .line 489
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 494
    new-instance v9, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 495
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v10

    .line 496
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 497
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v12

    .line 498
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v13

    .line 499
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v14

    .line 500
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v15

    .line 501
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v9
.end method

.method private static rebuildApkStreamingFallback(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 555
    new-array v1, v0, [B

    .line 556
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 557
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 558
    :try_start_0
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 560
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 561
    const-string p1, "lib"

    invoke-static {p3, p1, p0, v2, v1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->addDirToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;[B)V

    .line 564
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 565
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 566
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_5

    .line 567
    :cond_2
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/zip/ZipEntry;

    .line 568
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 570
    :cond_3
    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ".SF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".DSA"

    .line 571
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 574
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 577
    new-instance p3, Ljava/util/zip/ZipEntry;

    invoke-direct {p3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 579
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 581
    :goto_1
    :try_start_2
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0, v1, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 582
    :cond_5
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 583
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 579
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 585
    :cond_6
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_7

    .line 587
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 588
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 589
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 590
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 592
    :cond_7
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 593
    invoke-virtual {v3, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 595
    :goto_3
    :try_start_6
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p0, v1, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    .line 596
    :try_start_7
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 597
    :cond_9
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    if-eqz p3, :cond_a

    .line 593
    :try_start_8
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 600
    :cond_b
    :goto_5
    :try_start_a
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_4
    move-exception p1

    .line 557
    :try_start_b
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0
.end method

.method private static rebuildApkWithNativeFastZip(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dex2c/plus/engine/FastZipModifier;->copyFileNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/engine/FastZipModifier;->sanitizeZipFakeEncryptionNative(Ljava/lang/String;)Z

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_1
    const-string v1, "lib"

    invoke-static {p3, v1, v0}, Lcom/dex2c/plus/engine/DexRewriterEngine;->collectDirFilePairs(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 525
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dex2c/plus/engine/FastZipModifier;->appendFilesNative(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 536
    :catchall_0
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/dex2c/plus/engine/DexRewriterEngine;->rebuildApkStreamingFallback(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)V

    return-void
.end method

.method private static resolveNextCompiledApkFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 220
    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 221
    :goto_0
    const-string v1, "(?i)\\.apk$"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string v1, "(?i)_?dex2c_(compiled(_\\d+)?|\\d+_\\d+)$"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    const-string v1, "(?i)_?dex2c$"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    const-string v0, "[^a-zA-Z0-9._-]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "target"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_dex2c_Compiled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 227
    :cond_2
    :goto_1
    const-string p1, "dex2c_Compiled"

    .line 230
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x2

    .line 236
    :goto_3
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static resolveOutputDirectory(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 198
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 199
    iget v1, v0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 200
    iget-object v1, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkSourceFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/dex2c/plus/model/ProjectState;->selectedApkSourceFile:Ljava/io/File;

    :cond_0
    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 208
    :cond_2
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->getDex2cPlusOutputDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object p0
.end method

.method private static rewriteProtectedClass(Lcom/android/tools/smali/dexlib2/iface/ClassDef;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 12

    .line 357
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 364
    const-string v4, "<clinit>"

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {v3}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isTranslatable(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-static {v3}, Lcom/dex2c/plus/engine/DexRewriterEngine;->toNativeMethod(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_1
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 374
    invoke-static {v3}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isTranslatable(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 375
    invoke-static {v3}, Lcom/dex2c/plus/engine/DexRewriterEngine;->toNativeMethod(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :cond_3
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 382
    invoke-static {p1, v2}, Lcom/dex2c/plus/engine/DexRewriterEngine;->prependLoaderCallToClinit(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object p1

    invoke-interface {v10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 384
    :cond_5
    invoke-static {v0, p1}, Lcom/dex2c/plus/engine/DexRewriterEngine;->buildFreshClinitCallingLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object p1

    invoke-interface {v10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_2
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;

    .line 388
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v3

    .line 390
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v5

    .line 392
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 394
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v8

    .line 395
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v9

    invoke-direct/range {v1 .. v11}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v1
.end method

.method private static toNativeMethod(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 11

    .line 402
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->NATIVE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->DECLARED_SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 403
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 404
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->STRICTFP:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 405
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    not-int v1, v1

    and-int v7, v0, v1

    .line 406
    new-instance v2, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 407
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v5

    .line 410
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    .line 413
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    move-object p0, v10

    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v2
.end method
