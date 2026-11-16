.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "CodeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodeItemAnnotator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private debugInfoAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    const-class v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method

.method private addDebugInfoIdentity(ILjava/lang/String;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->debugInfoAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private annotateArrayPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)V
    .locals 11
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 561
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v0

    .line 562
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    .line 564
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, p2, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    const-string p2, "element_width = %d"

    invoke-virtual {p1, v4, p2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    const/4 p2, 0x4

    const-string v6, "size = %d"

    invoke-virtual {p1, p2, v6, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 569
    const-string p2, "elements:"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 572
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x0

    .line 573
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_4

    const/16 v5, 0x8

    const/4 v6, 0x3

    .line 574
    const-string v7, "element[%d] = %d # %f"

    const-string v8, "element[%d] = %d"

    if-ne v1, v5, :cond_2

    .line 575
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 576
    invoke-static {v9, v10}, Lcom/android/tools/smali/util/NumberUtils;->isLikelyDouble(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v8, v6, v3

    aput-object v9, v6, v4

    invoke-virtual {p1, v1, v7, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 579
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    invoke-virtual {p1, v1, v8, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 582
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 583
    invoke-static {v5}, Lcom/android/tools/smali/util/NumberUtils;->isLikelyFloat(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 584
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v2

    aput-object v9, v6, v3

    aput-object v5, v6, v4

    invoke-virtual {p1, v1, v7, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 586
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v2

    aput-object v5, v7, v3

    invoke-virtual {p1, v1, v8, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 591
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p2

    rem-int/2addr p2, v4

    if-eqz p2, :cond_5

    .line 592
    const-string p2, "padding"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 594
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 595
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private annotateDefaultInstruction(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    if-eqz v1, :cond_0

    .line 498
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v1, :cond_2

    .line 500
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    if-eqz v1, :cond_2

    .line 502
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_0
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/VerificationErrorInstruction;

    if-eqz v1, :cond_2

    .line 506
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/VerificationErrorInstruction;

    .line 507
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/VerificationErrorInstruction;->getVerificationError()I

    move-result v1

    .line 506
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/VerificationError;->getVerificationErrorName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    :cond_1
    const-string v1, "invalid verification error type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    :goto_0
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 516
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 517
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v5

    .line 520
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v6

    if-nez v6, :cond_3

    .line 521
    sget-object v1, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    check-cast v5, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-virtual {v1, v5}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getQuotedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 523
    :cond_3
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 527
    :cond_4
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    if-eqz v1, :cond_6

    .line 528
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    if-ltz v1, :cond_5

    .line 529
    const-string v5, "+"

    goto :goto_2

    :cond_5
    const-string v5, "-"

    .line 530
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v3

    aput-object v1, v6, v4

    const-string v1, "%s0x%x"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 531
    :cond_6
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    const-string v5, "%d # %f"

    const-string v6, "%d"

    if-eqz v1, :cond_8

    .line 532
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v1

    .line 533
    invoke-static {v1}, Lcom/android/tools/smali/util/NumberUtils;->isLikelyFloat(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v3

    aput-object v1, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 536
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 538
    :cond_8
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/WideLiteralInstruction;

    if-eqz v1, :cond_a

    .line 539
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/WideLiteralInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/WideLiteralInstruction;->getWideLiteral()J

    move-result-wide v7

    .line 540
    invoke-static {v7, v8}, Lcom/android/tools/smali/util/NumberUtils;->isLikelyDouble(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 541
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 543
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 545
    :cond_a
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/FieldOffsetInstruction;

    if-eqz v1, :cond_b

    .line 546
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/FieldOffsetInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/FieldOffsetInstruction;->getFieldOffset()I

    move-result v1

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v1, "field@0x%x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 548
    :cond_b
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/VtableIndexInstruction;

    if-eqz v1, :cond_c

    .line 549
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/VtableIndexInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/VtableIndexInstruction;->getVtableIndex()I

    move-result v1

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v1, "vtable@%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 551
    :cond_c
    instance-of v1, p2, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;

    if-eqz v1, :cond_d

    .line 552
    move-object v1, p2

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result v1

    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v1, "inline@%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_d
    :goto_3
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 557
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const-string v5, ", "

    invoke-static {v0, v5}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object v0, v2, v4

    .line 556
    const-string p2, "%s %s"

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction10x(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 453
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction35c(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 461
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 463
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 466
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 470
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    .line 475
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_4
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const-string v5, ", "

    invoke-static {v0, v5}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    aput-object p2, v2, v3

    .line 482
    const-string p2, "%s {%s}, %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction3rc(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 487
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v0

    .line 488
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 490
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    .line 489
    const-string p2, "%s {%s .. %s}, %s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotatePackedSwitchPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 600
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v0

    .line 602
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 603
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "size = %d"

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v4, 0x4

    if-nez p2, :cond_0

    .line 607
    const-string p2, "first_key"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 609
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    const-string p2, "first_key = %d"

    invoke-virtual {p1, v4, p2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 610
    const-string p2, "targets:"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 611
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    .line 612
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 613
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v2

    const-string v5, "target[%d] = %d"

    invoke-virtual {p1, v4, v5, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 617
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private annotateSparseSwitchPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 622
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v0

    .line 624
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string p2, "size = %d"

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 627
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 628
    const-string p2, "keys:"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    .line 630
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge p2, v4, :cond_0

    .line 631
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v6, v7, v2

    const-string v4, "key[%d] = %d"

    invoke-virtual {p1, v5, v4, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 634
    const-string p2, "targets:"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 635
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    .line 636
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v6, v7, v2

    const-string v4, "target[%d] = %d"

    invoke-virtual {p1, v5, v4, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 641
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private formatRegister(I)Ljava/lang/String;
    .locals 2

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "v%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected annotateInstructions(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 302
    const-string v0, "instructions:"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 305
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr v2, p3

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->setLimit(II)V

    .line 307
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    add-int/2addr v0, p3

    .line 309
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    if-ge p3, v0, :cond_1

    .line 310
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p3, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;->readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object p3

    .line 313
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 314
    const-string p3, "truncated instruction"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p3, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$2;->$SwitchMap$com$android$tools$smali$dexlib2$Format:[I

    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/Format;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 337
    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateDefaultInstruction(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V

    goto :goto_0

    .line 334
    :pswitch_0
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateSparseSwitchPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V

    goto :goto_0

    .line 331
    :pswitch_1
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotatePackedSwitchPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V

    goto :goto_0

    .line 328
    :pswitch_2
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateArrayPayload(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;)V

    goto :goto_0

    .line 325
    :pswitch_3
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateInstruction3rc(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V

    goto :goto_0

    .line 322
    :pswitch_4
    check-cast p3, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateInstruction35c(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V

    goto :goto_0

    .line 319
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateInstruction10x(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)V
    :try_end_0
    .catch Lcom/android/tools/smali/util/ExceptionWithContext; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 350
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->clearLimit()V

    .line 351
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p3

    .line 345
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;->printStackTrace(Ljava/io/PrintStream;)V

    .line 346
    const-string v2, "annotation error: %s"

    invoke-virtual {p3}, Lcom/android/tools/smali/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 348
    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->clearLimit()V

    .line 351
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 352
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 438
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p2

    .line 440
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotatePreInstructionFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;

    move-result-object p3

    .line 441
    iget v0, p3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;->instructionSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotateInstructions(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    .line 442
    iget p3, p3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;->triesCount:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->annotatePostInstructionFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    :try_end_0
    .catch Lcom/android/tools/smali/util/ExceptionWithContext; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 444
    invoke-virtual {p2}, Lcom/android/tools/smali/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "annotation error: %s"

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected annotatePostInstructionFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 11
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)V"
        }
    .end annotation

    if-lez p3, :cond_7

    .line 359
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const/4 v1, 0x4

    rem-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    .line 361
    const-string v0, "padding"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    const-string v0, "try_items:"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v0, p3, :cond_1

    .line 368
    :try_start_0
    const-string v5, "try_item[%d]:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {p1, v3, v5, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUint()I

    move-result v5

    .line 372
    const-string v6, "start_addr = 0x%x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {p1, v1, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v5

    .line 375
    const-string v6, "insn_count = 0x%x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {p1, v2, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v5

    .line 378
    const-string v6, "handler_off = 0x%x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v6, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 381
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 384
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 385
    throw p2

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 387
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    .line 388
    const-string v0, "encoded_catch_handler_list:"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "size = %d"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_6

    .line 393
    :try_start_3
    const-string v2, "encoded_catch_handler[%d]"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p1, v3, v2, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 396
    :try_start_4
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v2

    .line 397
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {p1, v5, v1, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 399
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 401
    const-string v6, "handlers:"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_3

    .line 405
    :try_start_5
    const-string v7, "encoded_type_addr_pair[%d]"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-virtual {p1, v3, v7, v9}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 408
    :try_start_6
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v7

    .line 409
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v8

    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v9, v7}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v8, v7, v9}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v7

    .line 412
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v8

    const-string v9, "addr = 0x%x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v3

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 414
    :try_start_7
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 415
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    .line 418
    :try_start_8
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 419
    throw p2

    .line 418
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_4
    if-eqz v5, :cond_5

    .line 422
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v2

    .line 423
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    const-string v6, "catch_all_addr = 0x%x"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 426
    :cond_5
    :try_start_9
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catchall_4
    move-exception p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 427
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p2

    .line 430
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 431
    throw p2

    .line 430
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_7
    return-void
.end method

.method protected annotatePreInstructionFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;"
        }
    .end annotation

    .line 272
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v0

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v4, "registers_size = %d"

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "ins_size = %d"

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "outs_size = %d"

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "tries_size = %d"

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readInt()I

    move-result v0

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const/4 v4, 0x4

    const-string v6, "debug_info_off = 0x%x"

    invoke-virtual {p1, v4, v6, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_0

    .line 288
    invoke-direct {p0, v0, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;->addDebugInfoIdentity(ILjava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUint()I

    move-result p2

    .line 292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v3

    const-string p3, "insns_size = 0x%x"

    invoke-virtual {p1, v4, p3, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;

    invoke-direct {p1, p0, v2, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;II)V

    return-object p1
.end method

.method public getItemAlignment()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 252
    const-string v0, "code_item"

    return-object v0
.end method
