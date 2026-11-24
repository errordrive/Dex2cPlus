.class public Lcom/dex2c/plus/engine/Dex2CTranslator;
.super Ljava/lang/Object;
.source "Dex2CTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/engine/Dex2CTranslator$Result;,
        Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;,
        Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;
    }
.end annotation


# static fields
.field private static final MAX_METHODS_PER_BATCH_UNIT:I = 0x15e


# direct methods
.method static bridge synthetic -$$Nest$smescapeCpp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->escapeCpp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoModifiedUtf8Bytes(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toModifiedUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildJniSignature(Lcom/android/tools/smali/dexlib2/iface/Method;)Ljava/lang/String;
    .locals 3

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2641
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2642
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildJniSignature(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;
    .locals 3

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2648
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2649
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildStandardJniName(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/Method;Z)Ljava/lang/String;
    .locals 2

    .line 2625
    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Java_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2627
    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->mangleJniIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    .line 2628
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2629
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->mangleJniIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 2631
    const-string p0, "__"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 2633
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->mangleJniIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2636
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static countParamRegisters(Lcom/android/tools/smali/dexlib2/iface/Method;)I
    .locals 4

    .line 380
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 381
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 382
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    .line 383
    const-string v3, "J"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "D"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x2

    :goto_2
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V
    .locals 9

    .line 1713
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].d));\n"

    const-string v2, "].d, regs["

    const-string v3, "], __builtin_fmod(regs["

    const-string v4, "].d);\n"

    const-string v5, " regs["

    const-string v6, "].d "

    const-string v7, "], regs["

    const-string v8, "    dex2c_set_double(regs["

    if-eqz v0, :cond_1

    .line 1714
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    if-eqz p3, :cond_0

    .line 1716
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1719
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1723
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_3

    .line 1724
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz p3, :cond_2

    .line 1726
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1729
    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private static emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V
    .locals 9

    .line 1689
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].f));\n"

    const-string v2, "].f, regs["

    const-string v3, "], __builtin_fmodf(regs["

    const-string v4, "].f);\n"

    const-string v5, " regs["

    const-string v6, "].f "

    const-string v7, "], regs["

    const-string v8, "    dex2c_set_float(regs["

    if-eqz v0, :cond_1

    .line 1690
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    if-eqz p3, :cond_0

    .line 1692
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1695
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1699
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_3

    .line 1700
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz p3, :cond_2

    .line 1702
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1705
    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private static emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V
    .locals 6

    .line 1601
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].i));\n"

    const-string v2, " (uint32_t)regs["

    const-string v3, "].i "

    const-string v4, "], (jint)((uint32_t)regs["

    const-string v5, "    dex2c_set_int(regs["

    if-eqz v0, :cond_0

    .line 1602
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1603
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1606
    :cond_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_1

    .line 1607
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1608
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V
    .locals 6

    .line 1645
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].j));\n"

    const-string v2, " (uint64_t)regs["

    const-string v3, "].j "

    const-string v4, "], (jlong)((uint64_t)regs["

    const-string v5, "    dex2c_set_long(regs["

    if-eqz v0, :cond_0

    .line 1646
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1647
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1650
    :cond_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_1

    .line 1651
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1652
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static emitDivRemInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 6

    if-eqz p5, :cond_0

    .line 1616
    const-string p5, "dex2c_div_int"

    goto :goto_0

    :cond_0
    const-string p5, "dex2c_rem_int"

    .line 1617
    :goto_0
    instance-of v0, p4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].i));\n"

    const-string v2, "].i, regs["

    const-string v3, "(env, regs["

    const-string v4, "], "

    const-string v5, "    dex2c_set_int(regs["

    if-eqz v0, :cond_1

    .line 1618
    check-cast p4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1619
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p5

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1621
    :cond_1
    instance-of v0, p4, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_2

    .line 1622
    check-cast p4, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1623
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p5

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3, p6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void
.end method

.method private static emitDivRemLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 6

    if-eqz p5, :cond_0

    .line 1660
    const-string p5, "dex2c_div_long"

    goto :goto_0

    :cond_0
    const-string p5, "dex2c_rem_long"

    .line 1661
    :goto_0
    instance-of v0, p4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].j));\n"

    const-string v2, "].j, regs["

    const-string v3, "(env, regs["

    const-string v4, "], "

    const-string v5, "    dex2c_set_long(regs["

    if-eqz v0, :cond_1

    .line 1662
    check-cast p4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1663
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p5

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1665
    :cond_1
    instance-of v0, p4, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_2

    .line 1666
    check-cast p4, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1667
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p5

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3, p6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void
.end method

.method private static emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 4

    .line 1540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    .line 1542
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v2

    .line 1543
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v3

    add-int/2addr v3, v2

    if-lt p3, v2, :cond_0

    if-ge p3, v3, :cond_0

    .line 1545
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1549
    :cond_1
    const-string p1, "V"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "return;"

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "return ("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toJniType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")0;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1550
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string p3, "\n"

    if-eqz p2, :cond_3

    .line 1551
    const-string p2, "    if (env->ExceptionCheck()) "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1555
    :cond_3
    const-string p2, "    if (env->ExceptionCheck()) {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string p2, "        __pending_exc = env->ExceptionOccurred();\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const-string p2, "        env->ExceptionClear();\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 1560
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    .line 1561
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    .line 1562
    const-string v2, ";\n"

    if-nez v1, :cond_4

    .line 1563
    const-string p1, "        goto L_pc_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1567
    :cond_4
    const-string v3, "        if (dex2c_instance_of(env, __pending_exc, "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-static {v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") != 0) goto L_pc_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1573
    :cond_5
    const-string p2, "        env->Throw(__pending_exc);\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string p2, "        "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :goto_3
    const-string p1, "    }\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitInstanceFieldGet(Ljava/lang/StringBuilder;IILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 6

    .line 1448
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1451
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p3

    .line 1452
    const-string v2, "F"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "));\n"

    const-string v4, "].l, "

    const-string v5, ", "

    if-eqz v2, :cond_0

    .line 1453
    const-string p3, "    dex2c_set_float(regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_iget_float(env, regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1455
    :cond_0
    const-string v2, "D"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    const-string p3, "    dex2c_set_double(regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_iget_double(env, regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1458
    :cond_1
    const-string v2, "J"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1459
    const-string p3, "    dex2c_set_long(regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_iget_long(env, regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1461
    :cond_2
    const-string v2, "L"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "["

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 1465
    :cond_3
    const-string p3, "    dex2c_set_int(regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_iget_int_like(env, regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1466
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1462
    :cond_4
    :goto_0
    const-string p3, "    dex2c_set_obj(regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_iget_object(env, regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitInstanceFieldPut(Ljava/lang/StringBuilder;IILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 6

    .line 1471
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1474
    invoke-interface {p3}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p3

    .line 1475
    const-string v2, "F"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", regs["

    const-string v4, "].l, "

    const-string v5, ", "

    if-eqz v2, :cond_0

    .line 1476
    const-string p3, "    dex2c_iput_float(env, regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].f);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1478
    :cond_0
    const-string v2, "D"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    const-string p3, "    dex2c_iput_double(env, regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].d);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1481
    :cond_1
    const-string v2, "J"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1482
    const-string p3, "    dex2c_iput_long(env, regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].j);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1484
    :cond_2
    const-string v2, "L"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "["

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 1488
    :cond_3
    const-string p3, "    dex2c_iput_int_like(env, regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].i);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1485
    :cond_4
    :goto_0
    const-string p3, "    dex2c_iput_object(env, regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].l);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitInvokeInstruction(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1290
    move-object/from16 v3, p2

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 1291
    invoke-static/range {p2 .. p2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->extractInvokeRegisters(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)[I

    move-result-object v4

    .line 1293
    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v5, :cond_1

    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 1294
    :goto_1
    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_SUPER:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v8, :cond_3

    sget-object v8, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_SUPER_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    .line 1295
    :goto_3
    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq v1, v9, :cond_5

    sget-object v9, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_DIRECT_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v1, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 1297
    :goto_5
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1298
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1299
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_6
    move-object v11, v9

    .line 1300
    :goto_6
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1301
    invoke-static {v3}, Lcom/dex2c/plus/engine/Dex2CTranslator;->buildJniSignature(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v13

    .line 1302
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v14

    const/16 p2, 0x0

    if-nez v5, :cond_8

    .line 1307
    array-length v6, v4

    if-nez v6, :cond_7

    return-void

    .line 1308
    :cond_7
    aget v6, v4, p2

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, -0x1

    const/16 v16, 0x0

    .line 1312
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v15, v16

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move/from16 p3, v1

    const-string v1, ", "

    if-eqz v16, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v18, v3

    .line 1314
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v16, v5

    .line 1315
    array-length v5, v4

    if-ge v15, v5, :cond_9

    aget v5, v4, v15

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    .line 1316
    :goto_9
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_a
    const/4 v1, -0x1

    goto/16 :goto_b

    :sswitch_0
    const-string v1, "Z"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    const/4 v1, 0x7

    goto :goto_b

    :sswitch_1
    const-string v1, "S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v1, 0x6

    goto :goto_b

    :sswitch_2
    const-string v1, "J"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    const/4 v1, 0x5

    goto :goto_b

    :sswitch_3
    const-string v1, "I"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    const/4 v1, 0x4

    goto :goto_b

    :sswitch_4
    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    const/4 v1, 0x3

    goto :goto_b

    :sswitch_5
    const-string v1, "D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    :cond_f
    const/4 v1, 0x2

    goto :goto_b

    :sswitch_6
    const-string v1, "C"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_a

    :cond_10
    const/4 v1, 0x1

    goto :goto_b

    :sswitch_7
    const-string v1, "B"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 1351
    :goto_b
    const-string v3, "].i"

    packed-switch v1, :pswitch_data_0

    const-string v1, "(jobject)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1319
    :pswitch_0
    const-string v1, "(jboolean)(regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i != 0 ? JNI_TRUE : JNI_FALSE)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 1331
    :pswitch_1
    const-string v1, "(jshort)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1343
    :pswitch_2
    const-string v1, "(jlong)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].j"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v15, v15, 0x2

    goto :goto_e

    .line 1335
    :pswitch_3
    const-string v1, "(jint)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1339
    :pswitch_4
    const-string v1, "(jfloat)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1347
    :pswitch_5
    const-string v1, "(jdouble)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1327
    :pswitch_6
    const-string v1, "(jchar)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1323
    :pswitch_7
    const-string v1, "(jbyte)regs["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :goto_e
    move/from16 v1, p3

    move/from16 v5, v16

    move-object/from16 v3, v18

    goto/16 :goto_8

    :cond_12
    move/from16 v16, v5

    .line 1357
    invoke-static {v14}, Lcom/dex2c/plus/engine/Dex2CTranslator;->jniCallSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1359
    const-string v4, "    }\n"

    const-string v5, ")"

    if-eqz v16, :cond_13

    .line 1360
    const-string v6, "    jclass _cls = nullptr;\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    const-string v6, "    jmethodID _mid = dex2c_resolve_static_method(env, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {v2, v12}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {v2, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", &_cls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    const-string v1, "    if (_mid != nullptr && _cls != nullptr) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "env->CallStatic"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Method(_cls, _mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v14, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStoreCallResult(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v1, "        env->DeleteLocalRef(_cls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1369
    :cond_13
    const-string v15, "env->CallNonvirtual"

    move/from16 p2, v8

    const-string v8, "        }\n"

    move-object/from16 p1, v4

    const-string v4, "); } else {\n"

    move-object/from16 v16, v8

    const-string v8, "java/lang/NullPointerException"

    move-object/from16 v17, v14

    const-string v14, "    if (_obj == nullptr) { dex2c_throw_ex(env, "

    move-object/from16 v18, v5

    const-string v5, "].l;\n"

    move-object/from16 v19, v7

    const-string v7, "    jobject _obj = regs["

    if-eqz p2, :cond_14

    .line 1370
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v2, v8}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "null super receiver"

    .line 1373
    invoke-virtual {v2, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    const-string v4, "        jclass _scls = nullptr;\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    const-string v4, "        jmethodID _mid = dex2c_resolve_super_method(env, _obj, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v2, v11}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v2, v10}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v2, v12}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {v2, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", &_scls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v1, "        if (_mid != nullptr && _scls != nullptr) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Method(_obj, _scls, _mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v19

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStoreCallResult(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v1, "            env->DeleteLocalRef(_scls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_14
    move-object/from16 v22, p1

    move-object/from16 v21, v16

    move-object/from16 v20, v17

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    if-eqz p3, :cond_15

    .line 1387
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v2, v8}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "null direct receiver"

    .line 1390
    invoke-virtual {v2, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    const-string v4, "        jclass _dcls = nullptr;\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    const-string v4, "        jmethodID _mid = dex2c_resolve_direct_method(env, _obj, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    invoke-virtual {v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v2, v12}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v2, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", &_dcls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    const-string v1, "        if (_mid != nullptr && _dcls != nullptr) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Method(_obj, _dcls, _mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v20

    invoke-static {v0, v15, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStoreCallResult(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v1, "            env->DeleteLocalRef(_dcls);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    .line 1399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_15
    move-object/from16 v15, v20

    move-object/from16 v23, v21

    move-object/from16 v24, v22

    .line 1403
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v2, v8}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "null virtual receiver"

    .line 1406
    invoke-virtual {v2, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    const-string v4, "        jmethodID _mid = dex2c_resolve_virtual_method(env, _obj, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {v2, v12}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {v2, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    const-string v1, "        if (_mid != nullptr) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "env->Call"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Method(_obj, _mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v15, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStoreCallResult(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    .line 1413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    .line 1414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4a -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static emitJniOnLoad(Ljava/io/File;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1749
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1750
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;

    .line 1751
    iget-object v3, v2, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->classDesc:Ljava/lang/String;

    new-instance v4, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1754
    :cond_0
    new-instance v1, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;

    invoke-direct {v1, p2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;-><init>(Z)V

    .line 1755
    new-instance p2, Ljava/lang/StringBuilder;

    const v2, 0x8000

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1756
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;

    .line 1757
    const-string v3, "extern \"C\" JNIEXPORT void JNICALL "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->cFuncName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "();\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1759
    :cond_1
    const-string p1, "\nJNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {\n    JNIEnv* env = nullptr;\n    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return JNI_ERR;\n    dex2c_check_signature(env, nullptr);\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1764
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1765
    const-string v4, "    {\n        jclass c = env->FindClass("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v1, v3}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");\n        if (env->ExceptionCheck()) {\n            env->ExceptionClear();\n        } else if (c != nullptr) {\n            JNINativeMethod methods_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "[] = {\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;

    .line 1772
    const-string v5, "                {const_cast<char*>("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), const_cast<char*>("

    .line 1773
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->jniSig:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), (void*)&"

    .line 1774
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->cFuncName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "},\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1776
    :cond_2
    const-string v3, "            };\n            env->RegisterNatives(c, methods_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ");\n            if (env->ExceptionCheck()) env->ExceptionClear();\n            env->DeleteLocalRef(c);\n        }\n    }\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1785
    :cond_3
    const-string p1, "    return JNI_VERSION_1_6;\n}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    invoke-direct {p1, v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1789
    :try_start_0
    const-string p0, "#include \"dex2c_runtime.h\"\n\n"

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v1, p1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->writeDefinitions(Ljava/io/Writer;)V

    .line 1791
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 1788
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method private static emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V
    .locals 2

    .line 1737
    move-object v0, p1

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1738
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result p1

    .line 1739
    const-string v1, "    dex2c_set_int(regs["

    if-eqz p3, :cond_0

    .line 1740
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], (jint)((uint32_t)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - (uint32_t)regs["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].i));\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1743
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "], (jint)((uint32_t)regs["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "].i "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (uint32_t)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "));\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitMethodCpp(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;IILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 13

    .line 390
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-static {v6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toJniType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 392
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    .line 394
    const-string v1, "extern \"C\" JNIEXPORT "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " JNICALL "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    .line 395
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(JNIEnv* env, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v1, "jclass clazz"

    goto :goto_0

    :cond_0
    const-string v1, "jobject thiz"

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 399
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toJniType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " p"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_1

    .line 401
    :cond_1
    const-string v1, ") {\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "    if (env->EnsureLocalCapacity(512) < 0) { env->ExceptionClear(); }\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "    dex2c_init_classloader(env, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v1, "(jobject)clazz"

    goto :goto_2

    :cond_2
    const-string v1, "thiz"

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v1, "true"

    goto :goto_3

    :cond_3
    const-string v1, "false"

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v3, "    DexReg regs["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p5, 0x1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = {};\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v3, "    DexReg __res = {};\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v3, "    jthrowable __pending_exc = nullptr;\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, p5, p6

    .line 409
    const-string v4, "    dex2c_set_obj(regs["

    if-nez v0, :cond_4

    .line 410
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], thiz);\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    .line 413
    :cond_4
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    .line 414
    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v7

    .line 415
    const-string v8, "J"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "], p"

    if-eqz v8, :cond_5

    .line 416
    const-string v7, "    dex2c_set_long(regs["

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v3, v3, 0x2

    :goto_6
    move v5, v7

    goto :goto_4

    .line 418
    :cond_5
    const-string v8, "D"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 419
    const-string v7, "    dex2c_set_double(regs["

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 421
    :cond_6
    const-string v8, "F"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 422
    const-string v7, "    dex2c_set_float(regs["

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 424
    :cond_7
    const-string v8, "Z"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "B"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "C"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "S"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "I"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_8

    .line 428
    :cond_8
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 425
    :cond_9
    :goto_8
    const-string v7, "    dex2c_set_int(regs["

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], (jint)p"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 434
    :cond_a
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 436
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_9

    .line 442
    :cond_b
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v8, 0x0

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 443
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v5

    .line 444
    const-string v0, "L_pc_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v7, p5

    move-object/from16 v10, p7

    .line 445
    invoke-static/range {v0 .. v10}, Lcom/dex2c/plus/engine/Dex2CTranslator;->translateInstruction(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Lcom/android/tools/smali/dexlib2/Opcode;Ljava/lang/String;IILjava/util/Map;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 446
    const-string v1, "}\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v1

    add-int/2addr v8, v1

    goto :goto_a

    .line 450
    :cond_c
    const-string p1, "V"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 451
    const-string p1, "    return ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")0;\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_d
    const-string p1, "}\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitShiftInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 1630
    const-string p3, "(uint32_t)"

    goto :goto_0

    :cond_0
    const-string p3, "(jint)"

    .line 1631
    :goto_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].i & 0x1f)));\n"

    const-string v2, " (regs["

    const-string v3, "].i "

    const-string v4, "regs["

    const-string v5, "], (jint)("

    const-string v6, "    dex2c_set_int(regs["

    if-eqz v0, :cond_1

    .line 1632
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1633
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1636
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_2

    .line 1637
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1638
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private static emitShiftLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 1674
    const-string p3, "(uint64_t)"

    goto :goto_0

    :cond_0
    const-string p3, "(jlong)"

    .line 1675
    :goto_0
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    const-string v1, "].i & 0x3f)));\n"

    const-string v2, " (regs["

    const-string v3, "].j "

    const-string v4, "regs["

    const-string v5, "], (jlong)("

    const-string v6, "    dex2c_set_long(regs["

    if-eqz v0, :cond_1

    .line 1676
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 1677
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1680
    :cond_1
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_2

    .line 1681
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1682
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private static emitStaticFieldGet(Ljava/lang/StringBuilder;ILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 5

    .line 1494
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1497
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p2

    .line 1498
    const-string v2, "F"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "));\n"

    const-string v4, ", "

    if-eqz v2, :cond_0

    .line 1499
    const-string p2, "    dex2c_set_float(regs["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_sget_float(env, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1501
    :cond_0
    const-string v2, "D"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    const-string p2, "    dex2c_set_double(regs["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_sget_double(env, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1504
    :cond_1
    const-string v2, "J"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1505
    const-string p2, "    dex2c_set_long(regs["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_sget_long(env, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1507
    :cond_2
    const-string v2, "L"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1511
    :cond_3
    const-string p2, "    dex2c_set_int(regs["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_sget_int_like(env, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1508
    :cond_4
    :goto_0
    const-string p2, "    dex2c_set_obj(regs["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], dex2c_sget_object(env, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitStaticFieldPut(Ljava/lang/StringBuilder;ILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 5

    .line 1517
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1520
    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p2

    .line 1521
    const-string v2, "F"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", regs["

    const-string v4, ", "

    if-eqz v2, :cond_0

    .line 1522
    const-string p2, "    dex2c_sput_float(env, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].f);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1524
    :cond_0
    const-string v2, "D"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1525
    const-string p2, "    dex2c_sput_double(env, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].d);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1527
    :cond_1
    const-string v2, "J"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1528
    const-string p2, "    dex2c_sput_long(env, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].j);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1530
    :cond_2
    const-string v2, "L"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1534
    :cond_3
    const-string p2, "    dex2c_sput_int_like(env, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].i);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1531
    :cond_4
    :goto_0
    const-string p2, "    dex2c_sput_object(env, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "].l);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static emitStoreCallResult(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "J"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 1442
    :goto_0
    const-string p1, ");\n"

    packed-switch v1, :pswitch_data_0

    const-string v0, "                dex2c_set_obj(__res, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1424
    :pswitch_0
    const-string p1, "                dex2c_set_int(__res, ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " == JNI_TRUE) ? 1 : 0);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1421
    :pswitch_1
    const-string p1, "                "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1436
    :pswitch_2
    const-string v0, "                dex2c_set_long(__res, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1433
    :pswitch_3
    const-string v0, "                dex2c_set_float(__res, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1439
    :pswitch_4
    const-string v0, "                dex2c_set_double(__res, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1430
    :pswitch_5
    const-string v0, "                dex2c_set_int(__res, (jint)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeCpp(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    .line 2654
    const-string p0, ""

    return-object p0

    .line 2655
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2656
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 2657
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_1

    .line 2670
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x7f

    const/4 v5, 0x1

    if-gt v3, v4, :cond_2

    .line 2672
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "\\%03o"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x7ff

    const/4 v6, 0x2

    if-gt v3, v4, :cond_3

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 2676
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v3, v6, v5

    const-string v3, "\\%03o\\%03o"

    invoke-static {v7, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    shr-int/lit8 v7, v3, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 2681
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v1

    aput-object v7, v9, v5

    aput-object v3, v9, v6

    const-string v3, "\\%03o\\%03o\\%03o"

    invoke-static {v8, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2661
    :cond_4
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2663
    :cond_5
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2659
    :cond_6
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2660
    :cond_7
    const-string v3, "\\\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2662
    :cond_8
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2666
    :cond_9
    const-string v3, "\\300\\200"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2686
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractInvokeRegisters(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)[I
    .locals 6

    .line 1580
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1581
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;

    .line 1582
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterCount()I

    move-result v0

    .line 1583
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v3

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterE()I

    move-result v4

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterF()I

    move-result v5

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterG()I

    move-result p0

    filled-new-array {v2, v3, v4, v5, p0}, [I

    move-result-object p0

    .line 1584
    new-array v2, v0, [I

    .line 1585
    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 1587
    :cond_0
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    if-eqz v0, :cond_2

    .line 1588
    check-cast p0, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;

    .line 1589
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getRegisterCount()I

    move-result v0

    .line 1590
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result p0

    .line 1591
    new-array v2, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v3, p0, v1

    .line 1593
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 1597
    :cond_2
    new-array p0, v1, [I

    return-object p0
.end method

.method private static findOverloadedMethodNames(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 370
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 371
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 372
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static flushBatchUnit(Ljava/io/File;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;Ljava/lang/StringBuilder;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "dex2c_unit_%03d.cpp"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 277
    :try_start_0
    const-string p1, "#include \"dex2c_runtime.h\"\n\n"

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->writeDefinitions(Ljava/io/Writer;)V

    .line 279
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 276
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static isClassTranslatable(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 286
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v1

    .line 287
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->INTERFACE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->ANNOTATION:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 291
    invoke-static {v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isTranslatable(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isOpcodeSupported(Lcom/android/tools/smali/dexlib2/Opcode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 352
    :cond_0
    sget-object v1, Lcom/dex2c/plus/engine/Dex2CTranslator$1;->$SwitchMap$com$android$tools$smali$dexlib2$Opcode:[I

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/Opcode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 364
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/Opcode;->odexOnly()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isTranslatable(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 298
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    .line 299
    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->ABSTRACT:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->NATIVE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 300
    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 301
    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 304
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v3, "<init>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "<clinit>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Dex2C"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 309
    :cond_2
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v2

    .line 310
    sget-object v3, Lcom/android/tools/smali/dexlib2/AccessFlags;->BRIDGE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v3, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    .line 311
    sget-object v4, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNTHETIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v4, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v4

    .line 312
    sget-object v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v5, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/tools/smali/dexlib2/AccessFlags;->DECLARED_SYNCHRONIZED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 313
    invoke-virtual {v5, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    .line 314
    :goto_1
    sget-object v7, Lcom/android/tools/smali/dexlib2/AccessFlags;->VARARGS:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v7, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v7

    .line 315
    sget-object v8, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v8, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v8

    .line 316
    sget-object v9, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v9, v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result v1

    if-eqz v3, :cond_5

    .line 318
    iget-boolean v9, v2, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    if-nez v9, :cond_5

    return v0

    :cond_5
    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 319
    iget-boolean v9, v2, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    if-nez v9, :cond_6

    return v0

    :cond_6
    if-eqz v5, :cond_7

    .line 320
    iget-boolean v5, v2, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    if-nez v5, :cond_7

    return v0

    :cond_7
    if-eqz v7, :cond_8

    .line 321
    iget-boolean v5, v2, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    if-nez v5, :cond_8

    return v0

    :cond_8
    if-nez v4, :cond_b

    if-nez v3, :cond_b

    if-eqz v8, :cond_9

    .line 325
    iget-boolean v1, v2, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    if-nez v1, :cond_b

    return v0

    :cond_9
    if-eqz v1, :cond_a

    .line 327
    iget-boolean v1, v2, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    if-nez v1, :cond_b

    return v0

    .line 329
    :cond_a
    iget-boolean v1, v2, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    if-nez v1, :cond_b

    return v0

    .line 332
    :cond_b
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    .line 335
    :cond_c
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v2

    .line 336
    invoke-static {p0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->countParamRegisters(Lcom/android/tools/smali/dexlib2/iface/Method;)I

    move-result p0

    if-le p0, v2, :cond_d

    return v0

    .line 341
    :cond_d
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 342
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isOpcodeSupported(Lcom/android/tools/smali/dexlib2/Opcode;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_f
    return v6

    :cond_10
    :goto_2
    return v0
.end method

.method private static jniCallSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2564
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2574
    const-string p0, "Object"

    return-object p0

    .line 2566
    :pswitch_0
    const-string p0, "Boolean"

    return-object p0

    .line 2565
    :pswitch_1
    const-string p0, "Void"

    return-object p0

    .line 2569
    :pswitch_2
    const-string p0, "Short"

    return-object p0

    .line 2571
    :pswitch_3
    const-string p0, "Long"

    return-object p0

    .line 2570
    :pswitch_4
    const-string p0, "Int"

    return-object p0

    .line 2572
    :pswitch_5
    const-string p0, "Float"

    return-object p0

    .line 2573
    :pswitch_6
    const-string p0, "Double"

    return-object p0

    .line 2568
    :pswitch_7
    const-string p0, "Char"

    return-object p0

    .line 2567
    :pswitch_8
    const-string p0, "Byte"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method static synthetic lambda$emitJniOnLoad$2(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1751
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$translate$0(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 152
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$translate$1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 157
    const-string v0, "classes.dex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 158
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static mangleJniIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2605
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 2606
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const/16 v5, 0x5f

    if-ne v3, v4, :cond_0

    .line 2608
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-ne v3, v5, :cond_1

    .line 2610
    const-string v3, "_1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    .line 2612
    const-string v3, "_2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    .line 2614
    const-string v3, "_3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v4, 0x61

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7a

    if-le v3, v4, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v3, v4, :cond_5

    const/16 v4, 0x5a

    if-le v3, v4, :cond_6

    :cond_5
    const/16 v4, 0x30

    if-lt v3, v4, :cond_7

    const/16 v4, 0x39

    if-gt v3, v4, :cond_7

    .line 2616
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2618
    :cond_7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "_0%04x"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2621
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toFindClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 2579
    const-string p0, ""

    return-object p0

    .line 2580
    :cond_0
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2581
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static toJniType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2587
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Ljava/lang/Class;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Ljava/lang/String;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2599
    const-string p0, "jobject"

    return-object p0

    .line 2598
    :pswitch_0
    const-string p0, "jclass"

    return-object p0

    .line 2597
    :pswitch_1
    const-string p0, "jstring"

    return-object p0

    .line 2589
    :pswitch_2
    const-string p0, "jboolean"

    return-object p0

    .line 2588
    :pswitch_3
    const-string p0, "void"

    return-object p0

    .line 2592
    :pswitch_4
    const-string p0, "jshort"

    return-object p0

    .line 2594
    :pswitch_5
    const-string p0, "jlong"

    return-object p0

    .line 2593
    :pswitch_6
    const-string p0, "jint"

    return-object p0

    .line 2595
    :pswitch_7
    const-string p0, "jfloat"

    return-object p0

    .line 2596
    :pswitch_8
    const-string p0, "jdouble"

    return-object p0

    .line 2591
    :pswitch_9
    const-string p0, "jchar"

    return-object p0

    .line 2590
    :pswitch_a
    const-string p0, "jbyte"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x56 -> :sswitch_3
        0x5a -> :sswitch_2
        0x523beb0a -> :sswitch_1
        0x5a7e2503 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method private static toModifiedUtf8Bytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1796
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1797
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1798
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1799
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc0

    const/16 v4, 0x80

    if-nez v2, :cond_1

    .line 1801
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1802
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x7f

    if-gt v2, v5, :cond_2

    .line 1804
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x7ff

    if-gt v2, v5, :cond_3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/2addr v3, v5

    .line 1806
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    .line 1807
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    .line 1809
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    .line 1810
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    .line 1811
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1814
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1796
    :cond_5
    :goto_2
    new-array p0, v0, [B

    return-object p0
.end method

.method public static translate(Ljava/io/File;Ljava/util/List;Ljava/io/File;ZZ)Lcom/dex2c/plus/engine/Dex2CTranslator$Result;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/dex2c/plus/model/DexClassItem;",
            ">;",
            "Ljava/io/File;",
            "ZZ)",
            "Lcom/dex2c/plus/engine/Dex2CTranslator$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 136
    const-string v3, "[^a-zA-Z0-9_]"

    const-string v4, "_"

    new-instance v5, Ljava/io/File;

    const-string v6, "jni"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "dex2c_runtime.h"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/dex2c/plus/engine/Dex2CTranslator;->writeRuntimeHeader(Ljava/io/File;Ljava/io/File;)V

    .line 140
    new-instance v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;

    invoke-direct {v6}, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;-><init>()V

    if-eqz v0, :cond_1c

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_11

    .line 146
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dex2c/plus/model/ProjectState;->getLoaderClassDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 149
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 150
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dex2c/plus/model/DexClassItem;

    .line 151
    iget-object v11, v10, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    iget-object v11, v10, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    new-instance v12, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v8, v11, v12}, Lcom/dex2c/plus/StorageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    iget-object v10, v10, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    new-instance v10, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/dex2c/plus/engine/Dex2CTranslator$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 164
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_1

    :cond_4
    const/4 v10, 0x1

    .line 166
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 168
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "STEP_CONVERT"

    const-string v11, "Dex2c Converting..."

    invoke-virtual {v13, v15, v11, v14}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v13, Ljava/lang/StringBuilder;

    const/high16 v14, 0x10000

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    new-instance v14, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;

    invoke-direct {v14, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;-><init>(Z)V

    .line 175
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const/16 v25, 0x1

    const-string v10, "/"

    if-eqz v18, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v26, v9

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v18

    if-eqz v18, :cond_5

    goto/16 :goto_10

    .line 177
    :cond_5
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v8

    move-object/from16 v8, v18

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_18

    .line 178
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    goto/16 :goto_d

    :cond_6
    move-object/from16 v18, v13

    .line 180
    new-instance v13, Ljava/io/File;

    move-object/from16 v19, v14

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v2, "stream_"

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    :try_start_0
    invoke-static {v0, v9, v13}, Lcom/dex2c/plus/engine/ApkDexManager;->extractSingleDexToFile(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_8

    .line 249
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_7
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v7

    move-object/from16 v7, v18

    move/from16 v4, p4

    goto/16 :goto_e

    :cond_8
    const/4 v2, 0x0

    .line 187
    :try_start_1
    invoke-static {v13, v2}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 189
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/android/tools/smali/dexlib2/Opcodes;->getDefault()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v2

    .line 192
    :goto_3
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v14, v19

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 193
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v19

    if-eqz v19, :cond_9

    goto/16 :goto_b

    .line 194
    :cond_9
    invoke-interface {v9}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    goto/16 :goto_a

    :cond_a
    add-int/lit8 v1, v17, 0x1

    .line 199
    invoke-static {v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isClassTranslatable(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 200
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v15, v11, v9}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p2

    goto :goto_4

    :cond_b
    move-object/from16 v28, v2

    .line 205
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move/from16 v17, v2

    if-eqz v17, :cond_c

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v29, v7

    const/4 v7, 0x2

    if-le v2, v7, :cond_d

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x2f

    move-object/from16 v30, v8

    const/16 v8, 0x2e

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object/from16 v29, v7

    :cond_d
    move-object/from16 v30, v8

    move-object v2, v0

    :goto_5
    const/16 v7, 0x5f

    const/16 v8, 0x2e

    .line 207
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x24

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->findOverloadedMethodNames(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Ljava/util/Set;

    move-result-object v7

    .line 212
    invoke-interface {v9}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v31, v8

    move-object/from16 v19, v9

    move-object/from16 v23, v14

    move/from16 v14, v16

    move/from16 v8, v24

    const/4 v9, 0x0

    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v32, v13

    :try_start_3
    move-object/from16 v13, v16

    check-cast v13, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 213
    invoke-static {v13}, Lcom/dex2c/plus/engine/Dex2CTranslator;->isTranslatable(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v16

    if-nez v16, :cond_e

    move-object/from16 v17, v19

    goto :goto_7

    :cond_e
    move-object/from16 v17, v19

    .line 215
    invoke-interface {v13}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v19

    if-nez v19, :cond_f

    :goto_7
    move-object/from16 v19, v17

    move-object/from16 v13, v32

    goto :goto_6

    .line 218
    :cond_f
    invoke-interface/range {v19 .. v19}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v21

    .line 219
    invoke-static {v13}, Lcom/dex2c/plus/engine/Dex2CTranslator;->countParamRegisters(Lcom/android/tools/smali/dexlib2/iface/Method;)I

    move-result v22

    move/from16 v24, v14

    .line 221
    invoke-interface {v13}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz p3, :cond_10

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v7

    const-string v7, "dex2c_"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_10
    move-object/from16 v33, v7

    .line 224
    invoke-static {v0, v13, v14}, Lcom/dex2c/plus/engine/Dex2CTranslator;->buildStandardJniName(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/Method;Z)Ljava/lang/String;

    move-result-object v7

    :goto_8
    move-object/from16 v20, v7

    move-object/from16 v16, v18

    move-object/from16 v18, v13

    .line 226
    invoke-static/range {v16 .. v23}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitMethodCpp(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;IILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    move-object/from16 v7, v16

    move-object/from16 v13, v20

    move-object/from16 v14, v23

    move-object/from16 v19, v2

    .line 227
    iget-object v2, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->registeredMethods:Ljava/util/List;

    move-object/from16 v20, v3

    new-instance v3, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;

    move-object/from16 v21, v4

    .line 228
    invoke-interface/range {v18 .. v18}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v9

    invoke-static/range {v18 .. v18}, Lcom/dex2c/plus/engine/Dex2CTranslator;->buildJniSignature(Lcom/android/tools/smali/dexlib2/iface/Method;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v0, v4, v9, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v16, 0x1

    add-int/lit8 v2, v24, 0x1

    .line 231
    iget v3, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedMethods:I

    const/16 v25, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedMethods:I

    const/16 v3, 0x15e

    if-lt v2, v3, :cond_11

    add-int/lit8 v2, v8, 0x1

    .line 234
    invoke-static {v5, v8, v14, v7}, Lcom/dex2c/plus/engine/Dex2CTranslator;->flushBatchUnit(Ljava/io/File;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;Ljava/lang/StringBuilder;)Ljava/io/File;

    move-result-object v3

    .line 235
    iget-object v4, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 238
    new-instance v3, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;

    move/from16 v4, p4

    invoke-direct {v3, v4}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;-><init>(Z)V

    move v8, v2

    move-object/from16 v23, v3

    const/4 v14, 0x0

    goto :goto_9

    :cond_11
    move/from16 v4, p4

    move-object/from16 v23, v14

    move v14, v2

    :goto_9
    move-object/from16 v18, v7

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v13, v32

    move-object/from16 v7, v33

    move-object/from16 v19, v17

    goto/16 :goto_6

    :cond_12
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v16, v9

    move-object/from16 v32, v13

    move/from16 v24, v14

    move-object/from16 v7, v18

    move-object/from16 v14, v23

    const/16 v25, 0x1

    move/from16 v4, p4

    if-lez v16, :cond_13

    .line 243
    iget-object v2, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedClassDescriptors:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_13
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v11, v2}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v18, v7

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v16, v24

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v13, v32

    move-object/from16 v1, p2

    move/from16 v24, v8

    move-object/from16 v8, v30

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_14
    :goto_a
    move-object/from16 v28, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v32, v13

    move-object/from16 v7, v18

    move/from16 v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v18, v7

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v13, v32

    goto/16 :goto_4

    :cond_15
    :goto_b
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v7

    move-object/from16 v32, v13

    move-object/from16 v7, v18

    move/from16 v4, p4

    .line 249
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 250
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v13, v7

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v32, v13

    .line 249
    :goto_c
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 250
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 252
    :cond_17
    throw v0

    :cond_18
    :goto_d
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v7

    move-object v7, v13

    move-object/from16 v19, v14

    move v4, v2

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    move-object v13, v7

    move-object/from16 v14, v19

    :goto_f
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v9, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v29

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_19
    :goto_10
    move v4, v2

    move-object v7, v13

    move-object/from16 v19, v14

    if-lez v16, :cond_1a

    .line 255
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v0

    if-nez v0, :cond_1a

    move-object/from16 v14, v19

    move/from16 v0, v24

    .line 256
    invoke-static {v5, v0, v14, v7}, Lcom/dex2c/plus/engine/Dex2CTranslator;->flushBatchUnit(Ljava/io/File;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;Ljava/lang/StringBuilder;)Ljava/io/File;

    move-result-object v0

    .line 257
    iget-object v1, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 258
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1a
    if-eqz p3, :cond_1b

    .line 261
    iget-object v0, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->registeredMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 262
    new-instance v0, Ljava/io/File;

    const-string v1, "dex2c_loader.cpp"

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    iget-object v1, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->registeredMethods:Ljava/util/List;

    invoke-static {v0, v1, v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitJniOnLoad(Ljava/io/File;Ljava/util/List;Z)V

    .line 264
    iget-object v1, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1b
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->isCancelRequested()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, v6, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedMethods:I

    if-lez v0, :cond_1c

    .line 268
    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger;->get()Lcom/dex2c/plus/ConsoleLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v11, v1}, Lcom/dex2c/plus/ConsoleLogger;->updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_11
    return-object v6
.end method

.method private static translateInstruction(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Lcom/android/tools/smali/dexlib2/Opcode;Ljava/lang/String;IILjava/util/Map;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            "Lcom/android/tools/smali/dexlib2/Opcode;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;",
            "Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v3, p6

    move/from16 v5, p8

    move-object/from16 v7, p10

    .line 460
    sget-object v8, Lcom/dex2c/plus/engine/Dex2CTranslator$1;->$SwitchMap$com$android$tools$smali$dexlib2$Opcode:[I

    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/smali/dexlib2/Opcode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const-string v9, ">>"

    const-string v10, "    dex2c_set_double(regs["

    const-string v11, "    dex2c_set_float(regs["

    const-string v12, "])) goto L_pc_"

    const-string v13, "*"

    const-string v14, "-"

    const-string v15, "+"

    move/from16 p2, v8

    const-string v8, "].j);\n"

    const-string v6, "].l);\n"

    move-object/from16 p7, v12

    const-string v12, ");\n"

    move-object/from16 v16, v6

    const-string v6, "].i, regs["

    move-object/from16 v17, v6

    const-string v6, "    dex2c_set_obj(regs["

    move-object/from16 v18, v6

    const-string v6, "].i));\n"

    const-string v2, ";\n"

    move-object/from16 v19, v2

    const-string v2, "));\n"

    move-object/from16 v20, v6

    const-string v6, "    dex2c_set_long(regs["

    move-object/from16 v21, v8

    const-string v8, "].l, regs["

    move-object/from16 v22, v8

    const-string v8, "].i);\n"

    move-object/from16 v23, v10

    const-string v10, "    dex2c_set_int(regs["

    packed-switch p2, :pswitch_data_0

    move-object/from16 v2, p5

    .line 1284
    const-string v1, "    // Unhandled Dalvik op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/tools/smali/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1276
    :pswitch_0
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1277
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    .line 1278
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], (jint)(((uint32_t)regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i) >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1269
    :pswitch_1
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1270
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    .line 1271
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], regs["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1262
    :pswitch_2
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1263
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    .line 1264
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], (jint)((uint32_t)regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i << "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1259
    :pswitch_3
    const-string v1, "^"

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_4
    const/4 v2, 0x0

    .line 1255
    const-string v1, "|"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_5
    const/4 v2, 0x0

    .line 1251
    const-string v1, "&"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    .line 1242
    :pswitch_6
    move-object v6, v4

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1243
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v4

    .line 1244
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], dex2c_rem_int(env, regs["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "].i, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-static {v0, v1, v3, v5, v7}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    .line 1233
    :pswitch_7
    move-object v6, v4

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1234
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v4

    .line 1235
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], dex2c_div_int(env, regs["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-interface {v6}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "].i, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-static {v0, v1, v3, v5, v7}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_8
    const/4 v2, 0x0

    .line 1229
    invoke-static {v0, v4, v13, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_9
    const/4 v1, 0x1

    .line 1225
    invoke-static {v0, v4, v14, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_a
    const/4 v2, 0x0

    .line 1221
    invoke-static {v0, v4, v15, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitLitInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_b
    const/4 v1, 0x1

    .line 1215
    const-string v2, "%"

    invoke-static {v0, v4, v2, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_c
    const/4 v2, 0x0

    .line 1211
    const-string v1, "/"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_d
    const/4 v2, 0x0

    .line 1207
    invoke-static {v0, v4, v13, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_e
    const/4 v2, 0x0

    .line 1203
    invoke-static {v0, v4, v14, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_f
    const/4 v2, 0x0

    .line 1199
    invoke-static {v0, v4, v15, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinDouble(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    .line 1195
    :pswitch_10
    const-string v1, "%"

    const/4 v2, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_11
    const/4 v2, 0x0

    .line 1191
    const-string v1, "/"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_12
    const/4 v2, 0x0

    .line 1187
    invoke-static {v0, v4, v13, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_13
    const/4 v2, 0x0

    .line 1183
    invoke-static {v0, v4, v14, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_14
    const/4 v2, 0x0

    .line 1179
    invoke-static {v0, v4, v15, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinFloat(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_15
    const/4 v2, 0x1

    .line 1173
    invoke-static {v0, v4, v9, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_16
    const/4 v2, 0x0

    .line 1169
    invoke-static {v0, v4, v9, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_17
    const/4 v2, 0x0

    .line 1165
    const-string v1, "<<"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    .line 1161
    :pswitch_18
    const-string v1, "^"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1157
    :pswitch_19
    const-string v1, "|"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1153
    :pswitch_1a
    const-string v1, "&"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    :pswitch_1b
    const/4 v5, 0x0

    move-object v2, v3

    move-object v6, v7

    move/from16 v3, p8

    .line 1149
    invoke-static/range {v0 .. v6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitDivRemLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_1c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v6, p10

    .line 1145
    invoke-static/range {v0 .. v6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitDivRemLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    .line 1141
    :pswitch_1d
    invoke-static {v0, v4, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1137
    :pswitch_1e
    invoke-static {v0, v4, v14}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1133
    :pswitch_1f
    invoke-static {v0, v4, v15}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinLong(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    :pswitch_20
    const/4 v1, 0x1

    .line 1127
    invoke-static {v0, v4, v9, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_21
    const/4 v2, 0x0

    .line 1123
    invoke-static {v0, v4, v9, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    :pswitch_22
    const/4 v2, 0x0

    .line 1119
    const-string v1, "<<"

    invoke-static {v0, v4, v1, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitShiftInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;Z)V

    return-void

    .line 1115
    :pswitch_23
    const-string v1, "^"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1111
    :pswitch_24
    const-string v1, "|"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1107
    :pswitch_25
    const-string v1, "&"

    invoke-static {v0, v4, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    :pswitch_26
    const/4 v5, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v6, p10

    .line 1103
    invoke-static/range {v0 .. v6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitDivRemInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_27
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v6, p10

    .line 1099
    invoke-static/range {v0 .. v6}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitDivRemInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/instruction/Instruction;ZLcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    .line 1095
    :pswitch_28
    invoke-static {v0, v4, v13}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1091
    :pswitch_29
    invoke-static {v0, v4, v14}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1087
    :pswitch_2a
    invoke-static {v0, v4, v15}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitBinInt(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Ljava/lang/String;)V

    return-void

    .line 1079
    :pswitch_2b
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1080
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jint)(jshort)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1074
    :pswitch_2c
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1075
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jint)(jchar)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1069
    :pswitch_2d
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1070
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jint)(jbyte)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1064
    :pswitch_2e
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1065
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jfloat)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1059
    :pswitch_2f
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1060
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_double_to_long(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1054
    :pswitch_30
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1055
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_double_to_int(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1049
    :pswitch_31
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    move-object/from16 v2, v23

    .line 1050
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jdouble)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1044
    :pswitch_32
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1045
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_float_to_long(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1039
    :pswitch_33
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1040
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_float_to_int(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_34
    move-object/from16 v2, v23

    .line 1034
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1035
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jdouble)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_35
    move-object/from16 v1, v21

    .line 1029
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1030
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], (jfloat)regs["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_36
    move-object/from16 v1, v21

    .line 1024
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1025
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], (jint)regs["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_37
    move-object/from16 v2, v23

    .line 1019
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1020
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jdouble)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1014
    :pswitch_38
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1015
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jfloat)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1009
    :pswitch_39
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1010
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jlong)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3a
    move-object/from16 v2, v23

    .line 1004
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1005
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], -regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 999
    :pswitch_3b
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 1000
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], -regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3c
    move-object/from16 v1, v21

    .line 994
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 995
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ~regs["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 989
    :pswitch_3d
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 990
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jlong)(-(uint64_t)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].j));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 984
    :pswitch_3e
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 985
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], ~regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 979
    :pswitch_3f
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 980
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], (jint)(-(uint32_t)regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_40
    move-object/from16 v2, p5

    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, p1

    .line 972
    invoke-static {v0, v1, v4, v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitInvokeInstruction(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/ClassDef;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;Lcom/android/tools/smali/dexlib2/Opcode;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 973
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_41
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 954
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 955
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 956
    invoke-static {v0, v1, v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStaticFieldPut(Ljava/lang/StringBuilder;ILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 957
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_42
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 941
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 942
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 943
    invoke-static {v0, v1, v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitStaticFieldGet(Ljava/lang/StringBuilder;ILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 944
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_43
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 926
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 927
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 928
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-static {v0, v4, v1, v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitInstanceFieldPut(Ljava/lang/StringBuilder;IILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 929
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_44
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 913
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 914
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 915
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-static {v0, v4, v1, v2, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitInstanceFieldGet(Ljava/lang/StringBuilder;IILcom/android/tools/smali/dexlib2/iface/reference/FieldReference;Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 916
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_45
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 898
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 899
    const-string v2, "    dex2c_aput_short(env, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_46
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 891
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 892
    const-string v4, "    dex2c_aput_char(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_47
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 884
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 885
    const-string v4, "    dex2c_aput_byte(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_48
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 877
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 878
    const-string v4, "    dex2c_aput_boolean(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_49
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 870
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 871
    const-string v4, "    dex2c_aput_object(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4a
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v21

    .line 863
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 864
    const-string v8, "    dex2c_aput_64(env, regs["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4b
    move-object v9, v7

    move-object/from16 v6, v17

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 856
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 857
    const-string v4, "    dex2c_aput_32(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4c
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 849
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 850
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_short(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4d
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 842
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 843
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_char(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4e
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 835
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 836
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_byte(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_4f
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 828
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 829
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_boolean(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_50
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 821
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    move-object/from16 v6, v18

    .line 822
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_object(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_51
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 814
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 815
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_64(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_52
    move-object v9, v7

    move-object/from16 v2, v22

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 807
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 808
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_aget_32(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_53
    move-object/from16 v2, p5

    move v7, v5

    .line 798
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 799
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v3

    add-int/2addr v3, v7

    .line 800
    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IF_LTZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v4, :cond_0

    const-string v2, "<"

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IF_GEZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v4, :cond_1

    const-string v2, ">="

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/tools/smali/dexlib2/Opcode;->IF_GTZ:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v4, :cond_2

    const-string v2, ">"

    goto :goto_0

    :cond_2
    const-string v2, "<="

    .line 801
    :goto_0
    const-string v4, "    if (regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 0) goto L_pc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_54
    move v7, v5

    move-object/from16 v1, v19

    .line 789
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 790
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v3

    add-int/2addr v3, v7

    .line 791
    const-string v4, "    if (!dex2c_is_zero(regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_55
    move-object/from16 v2, p7

    move v7, v5

    move-object/from16 v1, v19

    .line 783
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v3

    .line 784
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v4

    add-int/2addr v4, v7

    .line 785
    const-string v5, "    if (dex2c_is_zero(regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_56
    move-object/from16 v2, p5

    move v7, v5

    move-object/from16 v1, v19

    .line 773
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 774
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v4

    add-int/2addr v4, v7

    .line 775
    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->IF_LT:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v5, :cond_3

    const-string v2, "<"

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->IF_GE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v5, :cond_4

    const-string v2, ">="

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/tools/smali/dexlib2/Opcode;->IF_GT:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne v2, v5, :cond_5

    const-string v2, ">"

    goto :goto_1

    :cond_5
    const-string v2, "<="

    .line 776
    :goto_1
    const-string v5, "    if (regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "].i "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " regs["

    .line 777
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].i) goto L_pc_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_57
    move-object/from16 v2, p7

    move v7, v5

    move-object/from16 v1, v19

    .line 763
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 764
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v4

    add-int/2addr v4, v7

    .line 765
    const-string v5, "    if (!dex2c_is_eq(env, regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_58
    move-object/from16 v2, p7

    move v7, v5

    move-object/from16 v1, v19

    .line 756
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 757
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v4

    add-int/2addr v4, v7

    .line 758
    const-string v5, "    if (dex2c_is_eq(env, regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], regs["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 748
    :pswitch_59
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 749
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_cmp_long(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].j, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].j));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 742
    :pswitch_5a
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 743
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_cmp_double(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].d, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d, 1));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 736
    :pswitch_5b
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 737
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_cmp_double(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].d, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d, -1));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 730
    :pswitch_5c
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 731
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_cmp_float(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].f, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f, 1));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 724
    :pswitch_5d
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;

    .line 725
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_cmp_float(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].f, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f, -1));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_5e
    move v7, v5

    move-object/from16 v1, v19

    .line 706
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 707
    move-object v3, v4

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v3

    add-int/2addr v3, v7

    .line 708
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, p9

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 709
    instance-of v4, v3, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;

    if-eqz v4, :cond_1f

    .line 710
    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;

    .line 711
    const-string v4, "    switch (regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].i) {\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    .line 713
    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v4

    add-int/2addr v4, v7

    .line 714
    const-string v5, "        case "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": goto L_pc_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 716
    :cond_6
    const-string v1, "        default: break;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_5f
    move v7, v5

    move-object/from16 v1, v19

    .line 700
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v2

    add-int/2addr v2, v7

    .line 701
    const-string v3, "    goto L_pc_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_60
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 690
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 691
    const-string v4, "    dex2c_throw(env, (jthrowable)regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_61
    move-object/from16 v6, p9

    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 655
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 656
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v2

    add-int/2addr v2, v7

    .line 657
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 658
    instance-of v4, v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    if-eqz v4, :cond_1f

    .line 659
    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;

    .line 660
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v4

    .line 661
    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v2

    .line 662
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 664
    const-string v2, "    if (regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_7
    const/4 v8, 0x1

    if-eq v4, v8, :cond_9

    const/4 v8, 0x2

    if-eq v4, v8, :cond_8

    const/4 v8, 0x4

    if-eq v4, v8, :cond_8

    const/16 v8, 0x8

    if-ne v4, v8, :cond_12

    :cond_8
    const/4 v8, 0x1

    :cond_9
    if-ne v4, v8, :cond_a

    .line 666
    const-string v8, "uint8_t"

    goto :goto_3

    :cond_a
    const/4 v8, 0x2

    if-ne v4, v8, :cond_b

    const-string v8, "uint16_t"

    goto :goto_3

    :cond_b
    const/4 v8, 0x4

    if-ne v4, v8, :cond_c

    const-string v8, "uint32_t"

    goto :goto_3

    :cond_c
    const-string v8, "uint64_t"

    .line 667
    :goto_3
    const-string v10, "    static const "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " _fad_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] = {"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_11

    if-lez v8, :cond_d

    .line 669
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_d
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    const/4 v13, 0x1

    if-ne v4, v13, :cond_e

    .line 672
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v11, v10

    and-int/lit16 v10, v11, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v10, v11, v24

    const-string v10, "0x%02XU"

    invoke-static {v14, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0x0

    goto :goto_5

    :cond_e
    const/4 v13, 0x2

    if-ne v4, v13, :cond_f

    .line 674
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v11, v10

    const v10, 0xffff

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v10, v11, v24

    const-string v10, "0x%04XU"

    invoke-static {v13, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    const/4 v14, 0x1

    const/16 v24, 0x0

    const/4 v13, 0x4

    if-ne v4, v13, :cond_10

    .line 676
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v24

    const-string v10, "0x%08XU"

    invoke-static {v13, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 678
    :cond_10
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v24

    const-string v10, "0x%016XULL"

    invoke-static {v13, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 681
    :cond_11
    const-string v2, "};\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, "    dex2c_fill_array_data(env, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l, _fad_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_12
    :goto_6
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_62
    move-object v9, v7

    const/16 v24, 0x0

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 629
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->extractInvokeRegisters(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;)[I

    move-result-object v4

    .line 631
    const-string v6, "    jobject _farr = dex2c_new_array(env, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 632
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    .line 634
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_13
    const-string v2, "I"

    :goto_7
    const/4 v10, 0x0

    .line 635
    :goto_8
    array-length v6, v4

    if-ge v10, v6, :cond_1a

    .line 636
    const-string v6, "L"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v11, ", regs["

    if-nez v6, :cond_19

    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_9

    .line 638
    :cond_14
    const-string v6, "Z"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 639
    const-string v6, "    dex2c_aput_boolean(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 640
    :cond_15
    const-string v6, "B"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 641
    const-string v6, "    dex2c_aput_byte(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 642
    :cond_16
    const-string v6, "C"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 643
    const-string v6, "    dex2c_aput_char(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 644
    :cond_17
    const-string v6, "S"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 645
    const-string v6, "    dex2c_aput_short(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 647
    :cond_18
    const-string v6, "    dex2c_aput_32(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 637
    :cond_19
    :goto_9
    const-string v6, "    dex2c_aput_object(env, _farr, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 650
    :cond_1a
    const-string v1, "    dex2c_set_obj(__res, _farr);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_63
    move-object v9, v7

    move-object/from16 v6, v18

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 620
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 621
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_new_array(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_64
    move-object v9, v7

    move-object/from16 v6, v18

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 612
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 613
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v4

    .line 614
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], dex2c_alloc_object(env, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-static {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_65
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 605
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 606
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], dex2c_array_length(env, regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_66
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 597
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 598
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], dex2c_instance_of(env, regs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_67
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 589
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 590
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v2

    .line 591
    const-string v4, "    dex2c_check_cast(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v2}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_68
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 583
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 584
    const-string v4, "    dex2c_monitor_exit(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_69
    move-object v9, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 577
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    .line 578
    const-string v4, "    dex2c_monitor_enter(env, regs["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_6a
    move-object v9, v7

    move-object/from16 v6, v18

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 567
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 568
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], dex2c_find_class(env, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {v4}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toFindClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    :pswitch_6b
    move-object v9, v7

    move-object/from16 v6, v18

    move v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 559
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 560
    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    invoke-interface {v4}, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], env->NewStringUTF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v9, v4}, Lcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;->ref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {v0, v3, v5, v7, v9}, Lcom/dex2c/plus/engine/Dex2CTranslator;->emitExceptionCheck(Ljava/lang/StringBuilder;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;Ljava/lang/String;ILcom/dex2c/plus/engine/Dex2CTranslator$UnitStringPool;)V

    return-void

    .line 548
    :pswitch_6c
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 549
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/WideLiteralInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/WideLiteralInstruction;->getWideLiteral()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v7, v2, v4

    if-nez v7, :cond_1b

    .line 551
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], (-9223372036854775807LL - 1LL));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 553
    :cond_1b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "LL);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 539
    :pswitch_6d
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 540
    move-object v2, v4

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v2

    .line 541
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_6e
    move-object v5, v3

    .line 529
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 530
    const-string v2, "    return ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toJniType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].l;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_6f
    move-object v5, v3

    .line 520
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 521
    const-string v2, "D"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 522
    const-string v2, "    return regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].d;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 524
    :cond_1c
    const-string v2, "    return regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].j;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_70
    move-object v5, v3

    .line 509
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 510
    const-string v2, "F"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 511
    const-string v2, "    return regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].f;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 512
    :cond_1d
    const-string v2, "Z"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 513
    const-string v2, "    return (jboolean)(regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i != 0 ? JNI_TRUE : JNI_FALSE);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 515
    :cond_1e
    const-string v2, "    return ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/dex2c/plus/engine/Dex2CTranslator;->toJniType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].i;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 506
    :pswitch_71
    const-string v1, "    return;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_72
    move-object/from16 v6, v18

    .line 497
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 498
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], __pending_exc);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, "    __pending_exc = nullptr;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_73
    move-object/from16 v6, v18

    .line 492
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 493
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], __res.l);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 487
    :pswitch_74
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 488
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], __res.j);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 482
    :pswitch_75
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    .line 483
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], __res.i);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 477
    :pswitch_76
    move-object v1, v4

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;

    .line 478
    const-string v2, "    regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = regs["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    :pswitch_77
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6b
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5e
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extractApkSignaturesSha256(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "e9a6b59111a9c2e0110b10060f09a62de5d7064071c8ff2824cb1b6f604e1f61"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_out
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :cond_zip

    :cond_out
    return-object v0

    :cond_zip
    :try_start_all
    new-instance v1, Ljava/util/zip/ZipFile;
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string p0, "X.509"
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    move-result-object p0

    const-string v2, "SHA-256"
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    move-result-object v3

    :goto_loop
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    move-result v4
    if-nez v4, :cond_has_entry
    goto :cond_zip_close

    :cond_has_entry
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    move-result-object v5

    const-string v6, "META-INF/"
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :cond_check_rsa
    goto :goto_loop

    :cond_check_rsa
    const-string v6, ".RSA"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :cond_parse_entry

    const-string v6, ".DSA"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :cond_parse_entry

    const-string v6, ".EC"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :cond_parse_entry
    goto :goto_loop

    :cond_parse_entry
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    move-result-object v4
    if-nez v4, :cond_has_is
    goto :goto_loop

    :cond_has_is
    invoke-virtual {p0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    move-result-object v5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-nez v5, :cond_has_certs
    goto :goto_loop

    :cond_has_certs
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v4

    :goto_certs
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-nez v5, :cond_process_cert
    goto :goto_loop

    :cond_process_cert
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B
    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B
    move-result-object v5

    invoke-static {v5}, Lcom/dex2c/plus/engine/FastZipModifier;->bytesToHexNative([B)Ljava/lang/String;
    move-result-object v5

    if-eqz v5, :cond_goto_certs

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :cond_goto_certs

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_goto_certs
    goto :goto_certs

    :cond_zip_close
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_all
    .catchall {:try_start_all .. :try_end_all} :catch_ignored

    :catch_ignored
    return-object v0
.end method


.method private static writeRuntimeHeader(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/dex2c/plus/engine/Dex2CTranslator;->extractApkSignaturesSha256(Ljava/io/File;)Ljava/util/List;
    move-result-object p1

    new-instance v0, Ljava/io/FileWriter;
    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string p0, "#pragma once\n\n#include <jni.h>\n#include <string.h>\n#include <stdint.h>\n#include <stdio.h>\n#include <stdlib.h>\n#include <strings.h>\n\nstatic volatile bool g_dex2c_sig_verified = false;\n\nstatic inline void dex2c_check_signature(JNIEnv* env, jobject refContext = nullptr) {\n    if (g_dex2c_sig_verified || env == nullptr) return;\n\n    static const char* const s_auth_hashes[] = {\n"
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_hashes_done
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1

    :goto_hash_loop
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result p0
    if-eqz p0, :cond_hashes_done

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;

    const-string v1, "        \""
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    const-string p0, "\",\n"
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    goto :goto_hash_loop

    :cond_hashes_done
    const-string p0, "        nullptr\n    };\n\n    jobject ctx = nullptr;\n    jclass atCls = env->FindClass(\"android/app/ActivityThread\");\n    if (atCls) {\n        jmethodID curAppMid = env->GetStaticMethodID(atCls, \"currentApplication\", \"()Landroid/app/Application;\");\n        if (curAppMid) {\n            ctx = env->CallStaticObjectMethod(atCls, curAppMid);\n        }\n        if (env->ExceptionCheck()) env->ExceptionClear();\n        env->DeleteLocalRef(atCls);\n    }\n    if (!ctx && refContext != nullptr) {\n        jclass ctxBaseCls = env->FindClass(\"android/content/Context\");\n        if (ctxBaseCls) {\n            if (env->IsInstanceOf(refContext, ctxBaseCls) == JNI_TRUE) {\n                ctx = refContext;\n            }\n            env->DeleteLocalRef(ctxBaseCls);\n        }\n        if (env->ExceptionCheck()) env->ExceptionClear();\n    }\n    if (!ctx) return;\n\n    jclass ctxCls = env->GetObjectClass(ctx);\n    jmethodID getPmMid = env->GetMethodID(ctxCls, \"getPackageManager\", \"()Landroid/content/pm/PackageManager;\");\n    jmethodID getPkgMid = env->GetMethodID(ctxCls, \"getPackageName\", \"()Ljava/lang/String;\");\n    if (!getPmMid || !getPkgMid) { if (env->ExceptionCheck()) env->ExceptionClear(); env->DeleteLocalRef(ctxCls); return; }\n    jobject pm = env->CallObjectMethod(ctx, getPmMid);\n    jstring pkgName = static_cast<jstring>(env->CallObjectMethod(ctx, getPkgMid));\n    if (!pm || !pkgName) { if (env->ExceptionCheck()) env->ExceptionClear(); env->DeleteLocalRef(ctxCls); return; }\n\n    jclass pmCls = env->GetObjectClass(pm);\n    jmethodID getPkgInfoMid = env->GetMethodID(pmCls, \"getPackageInfo\", \"(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;\");\n    if (!getPkgInfoMid) { if (env->ExceptionCheck()) env->ExceptionClear(); env->DeleteLocalRef(pmCls); env->DeleteLocalRef(ctxCls); return; }\n\n    jobject pkgInfo = env->CallObjectMethod(pm, getPkgInfoMid, pkgName, (jint)64);\n    if (env->ExceptionCheck()) { env->ExceptionClear(); pkgInfo = nullptr; }\n\n    jobjectArray sigs = nullptr;\n    if (pkgInfo != nullptr) {\n        jclass piCls = env->GetObjectClass(pkgInfo);\n        jfieldID sigsFid = env->GetFieldID(piCls, \"signatures\", \"[Landroid/content/pm/Signature;\");\n        if (sigsFid) {\n            sigs = static_cast<jobjectArray>(env->GetObjectField(pkgInfo, sigsFid));\n        }\n        if (sigs == nullptr || env->GetArrayLength(sigs) == 0) {\n            if (env->ExceptionCheck()) env->ExceptionClear();\n            jfieldID siFid = env->GetFieldID(piCls, \"signingInfo\", \"Landroid/content/pm/SigningInfo;\");\n            if (siFid) {\n                jobject signingInfo = env->GetObjectField(pkgInfo, siFid);\n                if (signingInfo != nullptr) {\n                    jclass siCls = env->GetObjectClass(signingInfo);\n                    jmethodID hasMult = env->GetMethodID(siCls, \"hasMultipleSigners\", \"()Z\");\n                    jboolean mult = env->CallBooleanMethod(signingInfo, hasMult);\n                    if (mult) {\n                        jmethodID getSigners = env->GetMethodID(siCls, \"getApkContentsSigners\", \"()[Landroid/content/pm/Signature;\");\n                        sigs = static_cast<jobjectArray>(env->CallObjectMethod(signingInfo, getSigners));\n                    } else {\n                        jmethodID getHist = env->GetMethodID(siCls, \"getSigningCertificateHistory\", \"()[Landroid/content/pm/Signature;\");\n                        sigs = static_cast<jobjectArray>(env->CallObjectMethod(signingInfo, getHist));\n                    }\n                    env->DeleteLocalRef(siCls);\n                    env->DeleteLocalRef(signingInfo);\n                }\n            }\n        }\n        env->DeleteLocalRef(piCls);\n        env->DeleteLocalRef(pkgInfo);\n    }\n    env->DeleteLocalRef(pmCls);\n    env->DeleteLocalRef(pm);\n    env->DeleteLocalRef(pkgName);\n\n    if (sigs != nullptr && env->GetArrayLength(sigs) > 0) {\n        jobject sig0 = env->GetObjectArrayElement(sigs, 0);\n        if (sig0 != nullptr) {\n            jclass sigCls = env->GetObjectClass(sig0);\n            jmethodID toBytesMid = env->GetMethodID(sigCls, \"toByteArray\", \"()[B\");\n            jbyteArray rawBytes = static_cast<jbyteArray>(env->CallObjectMethod(sig0, toBytesMid));\n            env->DeleteLocalRef(sigCls);\n            env->DeleteLocalRef(sig0);\n\n            if (rawBytes != nullptr) {\n                jclass mdCls = env->FindClass(\"java/security/MessageDigest\");\n                if (mdCls) {\n                    jmethodID mdGetInst = env->GetStaticMethodID(mdCls, \"getInstance\", \"(Ljava/lang/String;)Ljava/security/MessageDigest;\");\n                    jstring algStr = env->NewStringUTF(\"SHA-256\");\n                    jobject md = env->CallStaticObjectMethod(mdCls, mdGetInst, algStr);\n                    env->DeleteLocalRef(algStr);\n                    if (md) {\n                        jmethodID mdDigest = env->GetMethodID(mdCls, \"digest\", \"([B)[B\");\n                        jbyteArray digest = static_cast<jbyteArray>(env->CallObjectMethod(md, mdDigest, rawBytes));\n                        if (digest) {\n                            jsize dlen = env->GetArrayLength(digest);\n                            jbyte* dbuf = env->GetByteArrayElements(digest, nullptr);\n                            char hex[65];\n                            for (int i = 0; i < dlen && i < 32; ++i) {\n                                sprintf(hex + i * 2, \"%02x\", static_cast<unsigned char>(dbuf[i]));\n                            }\n                            hex[64] = '\\0';\n                            env->ReleaseByteArrayElements(digest, dbuf, JNI_ABORT);\n                            env->DeleteLocalRef(digest);\n\n                            bool matched = false;\n                            for (int h = 0; s_auth_hashes[h] != nullptr; ++h) {\n                                if (strcasecmp(hex, s_auth_hashes[h]) == 0) {\n                                    matched = true;\n                                    break;\n                                }\n                            }\n\n                            if (matched) {\n                                g_dex2c_sig_verified = true;\n                                env->DeleteLocalRef(md);\n                                env->DeleteLocalRef(mdCls);\n                                env->DeleteLocalRef(rawBytes);\n                                env->DeleteLocalRef(sigs);\n                                env->DeleteLocalRef(ctxCls);\n                                return;\n                            }\n                        }\n                        env->DeleteLocalRef(md);\n                    }\n                    env->DeleteLocalRef(mdCls);\n                }\n                env->DeleteLocalRef(rawBytes);\n            }\n        }\n        env->DeleteLocalRef(sigs);\n    }\n\n    // Tampered: open https://t.me/errordrive\n    jclass uriCls = env->FindClass(\"android/net/Uri\");\n    if (uriCls) {\n        jmethodID parseMid = env->GetStaticMethodID(uriCls, \"parse\", \"(Ljava/lang/String;)Landroid/net/Uri;\");\n        jstring urlStr = env->NewStringUTF(\"https://t.me/errordrive\");\n        jobject uri = env->CallStaticObjectMethod(uriCls, parseMid, urlStr);\n        env->DeleteLocalRef(urlStr);\n\n        jclass intentCls = env->FindClass(\"android/content/Intent\");\n        if (intentCls && uri) {\n            jstring actView = env->NewStringUTF(\"android.intent.action.VIEW\");\n            jmethodID intentInit = env->GetMethodID(intentCls, \"<init>\", \"(Ljava/lang/String;Landroid/net/Uri;)V\");\n            jobject intent = env->NewObject(intentCls, intentInit, actView, uri);\n            env->DeleteLocalRef(actView);\n            env->DeleteLocalRef(uri);\n\n            if (intent) {\n                jmethodID addFlags = env->GetMethodID(intentCls, \"addFlags\", \"(I)Landroid/content/Intent;\");\n                if (addFlags) {\n                    env->CallObjectMethod(intent, addFlags, static_cast<jint>(0x10000000));\n                }\n                jmethodID startAct = env->GetMethodID(ctxCls, \"startActivity\", \"(Landroid/content/Intent;)V\");\n                if (startAct) {\n                    env->CallVoidMethod(ctx, startAct, intent);\n                }\n                env->DeleteLocalRef(intent);\n            }\n            env->DeleteLocalRef(intentCls);\n        }\n        env->DeleteLocalRef(uriCls);\n    }\n    if (env->ExceptionCheck()) env->ExceptionClear();\n\n    jclass procCls = env->FindClass(\"android/os/Process\");\n    if (procCls) {\n        jmethodID myPidMid = env->GetStaticMethodID(procCls, \"myPid\", \"()I\");\n        jmethodID killProcMid = env->GetStaticMethodID(procCls, \"killProcess\", \"(I)V\");\n        if (myPidMid && killProcMid) {\n            jint pid = env->CallStaticIntMethod(procCls, myPidMid);\n            env->CallStaticVoidMethod(procCls, killProcMid, pid);\n        }\n        env->DeleteLocalRef(procCls);\n    }\n    exit(0);\n}\n\nstruct DexReg {\n    union {\n        jint i;\n        uint32_t u;\n        jfloat f;\n        jlong j;\n        uint64_t uj;\n        jdouble d;\n    };\n    jobject l;\n    bool isObj;\n};\n\nstatic inline void dex2c_set_int(DexReg& r, jint v) {\n    r.j = 0;\n    r.i = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_float(DexReg& r, jfloat v) {\n    r.j = 0;\n    r.f = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_long(DexReg& r, jlong v) {\n    r.j = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_double(DexReg& r, jdouble v) {\n    r.d = v;\n    r.l = nullptr;\n    r.isObj = false;\n}\n\nstatic inline void dex2c_set_obj(DexReg& r, jobject obj) {\n    r.j = 0;\n    r.l = obj;\n    r.isObj = (obj != nullptr);\n}\n\nstatic inline bool dex2c_is_zero(const DexReg& r) {\n    return r.isObj ? (r.l == nullptr) : (r.i == 0);\n}\n\nstatic inline bool dex2c_is_eq(JNIEnv* env, const DexReg& a, const DexReg& b) {\n    if (a.isObj || b.isObj) {\n        return env->IsSameObject(a.l, b.l) == JNI_TRUE;\n    }\n    return a.i == b.i;\n}\n\nstatic jobject g_dex2c_class_loader = nullptr;\nstatic jmethodID g_dex2c_for_name_mid = nullptr;\nstatic jclass g_dex2c_class_cls = nullptr;\n\nstatic inline void dex2c_init_classloader(JNIEnv* env, jobject refObj, bool isClassObj) {\n    dex2c_check_signature(env, isClassObj ? nullptr : refObj);\n    if (g_dex2c_class_loader != nullptr || refObj == nullptr) return;\n    jclass targetCls = isClassObj ? static_cast<jclass>(env->NewLocalRef(refObj)) : env->GetObjectClass(refObj);\n    if (targetCls == nullptr) { env->ExceptionClear(); return; }\n    jclass classCls = env->FindClass(\"java/lang/Class\");\n    if (classCls != nullptr) {\n        jmethodID getClMid = env->GetMethodID(classCls, \"getClassLoader\", \"()Ljava/lang/ClassLoader;\");\n        jmethodID forNameMid = env->GetStaticMethodID(classCls, \"forName\", \"(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;\");\n        if (!env->ExceptionCheck() && getClMid != nullptr && forNameMid != nullptr) {\n            jobject cl = env->CallObjectMethod(targetCls, getClMid);\n            if (!env->ExceptionCheck() && cl != nullptr) {\n                g_dex2c_class_loader = env->NewGlobalRef(cl);\n                g_dex2c_class_cls = static_cast<jclass>(env->NewGlobalRef(classCls));\n                g_dex2c_for_name_mid = forNameMid;\n                env->DeleteLocalRef(cl);\n            }\n        }\n        env->ExceptionClear();\n        env->DeleteLocalRef(classCls);\n    }\n    env->ExceptionClear();\n    env->DeleteLocalRef(targetCls);\n}\n\nstatic inline jclass dex2c_find_class(JNIEnv* env, const char* clsName) {\n    if (clsName == nullptr || clsName[0] == '\\0') return nullptr;\n    jclass c = env->FindClass(clsName);\n    if (!env->ExceptionCheck() && c != nullptr) return c;\n    env->ExceptionClear();\n    if (g_dex2c_class_loader != nullptr && g_dex2c_class_cls != nullptr && g_dex2c_for_name_mid != nullptr) {\n        char dotted[512];\n        size_t len = strlen(clsName);\n        if (len >= sizeof(dotted)) len = sizeof(dotted) - 1;\n        for (size_t i = 0; i < len; ++i) {\n            dotted[i] = (clsName[i] == '/') ? '.' : clsName[i];\n        }\n        dotted[len] = '\\0';\n        jstring jName = env->NewStringUTF(dotted);\n        if (jName != nullptr) {\n            jclass loaded = static_cast<jclass>(env->CallStaticObjectMethod(g_dex2c_class_cls, g_dex2c_for_name_mid, jName, JNI_FALSE, g_dex2c_class_loader));\n            env->DeleteLocalRef(jName);\n            if (!env->ExceptionCheck() && loaded != nullptr) return loaded;\n            env->ExceptionClear();\n        }\n    }\n    return nullptr;\n}\n\nstatic inline void dex2c_throw_ex(JNIEnv* env, const char* clsName, const char* msg) {\n    jclass c = dex2c_find_class(env, clsName);\n    if (c != nullptr) {\n        env->ThrowNew(c, msg ? msg : \"\");\n        env->DeleteLocalRef(c);\n    }\n}\n\nstatic inline void dex2c_throw(JNIEnv* env, jthrowable t) {\n    if (t == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"throw null\");\n    } else {\n        env->Throw(t);\n    }\n}\n\nstatic inline void dex2c_monitor_enter(JNIEnv* env, jobject obj) {\n    if (obj == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"monitor-enter null\");\n    else env->MonitorEnter(obj);\n}\n\nstatic inline void dex2c_monitor_exit(JNIEnv* env, jobject obj) {\n    if (obj == nullptr) dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"monitor-exit null\");\n    else env->MonitorExit(obj);\n}\n\nstatic inline jint dex2c_instance_of(JNIEnv* env, jobject obj, const char* clsName) {\n    if (obj == nullptr) return 0;\n    jclass c = dex2c_find_class(env, clsName);\n    if (env->ExceptionCheck() || c == nullptr) { env->ExceptionClear(); return 0; }\n    jboolean res = env->IsInstanceOf(obj, c);\n    env->DeleteLocalRef(c);\n    return res == JNI_TRUE ? 1 : 0;\n}\n\nstatic inline void dex2c_check_cast(JNIEnv* env, jobject obj, const char* clsName) {\n    if (obj == nullptr) return;\n    jclass c = dex2c_find_class(env, clsName);\n    if (c == nullptr) return;\n    jboolean ok = env->IsInstanceOf(obj, c);\n    env->DeleteLocalRef(c);\n    if (ok != JNI_TRUE) {\n        dex2c_throw_ex(env, \"java/lang/ClassCastException\", clsName);\n    }\n}\n\nstatic inline jobject dex2c_alloc_object(JNIEnv* env, const char* clsName) {\n    jclass c = dex2c_find_class(env, clsName);\n    if (c == nullptr) return nullptr;\n    jobject obj = env->AllocObject(c);\n    env->DeleteLocalRef(c);\n    return obj;\n}\n\nstatic inline jint dex2c_array_length(JNIEnv* env, jobject arr) {\n    if (arr == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"array-length on null\");\n        return 0;\n    }\n    return env->GetArrayLength(static_cast<jarray>(arr));\n}\n\nstatic inline jobject dex2c_new_array(JNIEnv* env, jint len, const char* arrDesc) {\n    if (len < 0) {\n        dex2c_throw_ex(env, \"java/lang/NegativeArraySizeException\", \"negative size\");\n        return nullptr;\n    }\n    if (arrDesc == nullptr || arrDesc[0] != '[') return nullptr;\n    const char* elem = arrDesc + 1;\n    switch (elem[0]) {\n        case 'Z': return env->NewBooleanArray(len);\n        case 'B': return env->NewByteArray(len);\n        case 'C': return env->NewCharArray(len);\n        case 'S': return env->NewShortArray(len);\n        case 'I': return env->NewIntArray(len);\n        case 'J': return env->NewLongArray(len);\n        case 'F': return env->NewFloatArray(len);\n        case 'D': return env->NewDoubleArray(len);\n        case 'L': {\n            size_t n = strlen(elem);\n            char buf[512];\n            size_t copyLen = (n >= 2 && elem[n - 1] == ';') ? (n - 2) : (n - 1);\n            if (copyLen >= sizeof(buf)) copyLen = sizeof(buf) - 1;\n            memcpy(buf, elem + 1, copyLen);\n            buf[copyLen] = '\\0';\n            jclass ec = dex2c_find_class(env, buf);\n            if (ec == nullptr) return nullptr;\n            jobjectArray oa = env->NewObjectArray(len, ec, nullptr);\n            env->DeleteLocalRef(ec);\n            return oa;\n        }\n        case '[': {\n            jclass ec = dex2c_find_class(env, elem);\n            if (ec == nullptr) return nullptr;\n            jobjectArray oa = env->NewObjectArray(len, ec, nullptr);\n            env->DeleteLocalRef(ec);\n            return oa;\n        }\n        default: return nullptr;\n    }\n}\n\nstatic inline jmethodID dex2c_resolve_super_method(JNIEnv* env, jobject obj, const char* superClsName, const char* refClsName, const char* selfClsName, const char* name, const char* sig, jclass* outTargetCls) {\n    *outTargetCls = nullptr;\n    // 1. Always check direct superClsName FIRST so inherited concrete methods (e.g. AppCompatActivity -> ContextWrapper.getApplicationContext) are resolved instead of abstract base class methods (e.g. Context.getApplicationContext)\n    if (superClsName != nullptr && superClsName[0] != '\\0') {\n        jclass sc = dex2c_find_class(env, superClsName);\n        if (!env->ExceptionCheck() && sc != nullptr) {\n            jmethodID m = env->GetMethodID(sc, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = sc;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(sc);\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    // 2. If superClsName does not have the method (e.g. superClsName is java/lang/Object and invoke-super targets a Java 8+ default interface method like DefaultLifecycleObserver.super.onStart), check refClsName\n    if (refClsName != nullptr && refClsName[0] != '\\0' && (selfClsName == nullptr || strcmp(refClsName, selfClsName) != 0) && (superClsName == nullptr || strcmp(refClsName, superClsName) != 0)) {\n        jclass rc = dex2c_find_class(env, refClsName);\n        if (!env->ExceptionCheck() && rc != nullptr) {\n            jmethodID m = env->GetMethodID(rc, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = rc;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(rc);\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    // 3. Walk runtime superclass chain above selfCls\n    jclass startCls = nullptr;\n    if (selfClsName != nullptr && selfClsName[0] != '\\0') {\n        startCls = dex2c_find_class(env, selfClsName);\n        if (env->ExceptionCheck()) { env->ExceptionClear(); startCls = nullptr; }\n    }\n    if (startCls == nullptr && obj != nullptr) {\n        startCls = env->GetObjectClass(obj);\n    }\n    if (startCls != nullptr) {\n        jclass cur = env->GetSuperclass(startCls);\n        env->DeleteLocalRef(startCls);\n        while (cur != nullptr) {\n            jmethodID m = env->GetMethodID(cur, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outTargetCls = cur;\n                return m;\n            }\n            env->ExceptionClear();\n            jclass next = env->GetSuperclass(cur);\n            env->DeleteLocalRef(cur);\n            cur = next;\n        }\n    }\n    env->ExceptionClear();\n    return nullptr;\n}\n\nstatic inline jclass dex2c_resolve_instance_class(JNIEnv* env, jobject obj, const char* clsName) {\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (!env->ExceptionCheck() && c != nullptr) return c;\n        env->ExceptionClear();\n    }\n    return obj != nullptr ? env->GetObjectClass(obj) : nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_static_method(JNIEnv* env, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    jclass cur = dex2c_find_class(env, clsName);\n    while (cur != nullptr) {\n        jmethodID m = env->GetStaticMethodID(cur, name, sig);\n        if (!env->ExceptionCheck() && m != nullptr) {\n            *outCls = cur;\n            return m;\n        }\n        env->ExceptionClear();\n        jclass next = env->GetSuperclass(cur);\n        env->DeleteLocalRef(cur);\n        cur = next;\n    }\n    return nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_direct_method(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (c != nullptr) {\n            jmethodID m = env->GetMethodID(c, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outCls = c;\n                return m;\n            }\n            env->ExceptionClear();\n            env->DeleteLocalRef(c);\n        }\n    }\n    if (obj != nullptr) {\n        jclass cur = env->GetObjectClass(obj);\n        while (cur != nullptr) {\n            jmethodID m = env->GetMethodID(cur, name, sig);\n            if (!env->ExceptionCheck() && m != nullptr) {\n                *outCls = cur;\n                return m;\n            }\n            env->ExceptionClear();\n            jclass next = env->GetSuperclass(cur);\n            env->DeleteLocalRef(cur);\n            cur = next;\n        }\n    }\n    return nullptr;\n}\n\nstatic inline jmethodID dex2c_resolve_virtual_method(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig) {\n    if (obj != nullptr) {\n        jclass dc = env->GetObjectClass(obj);\n        if (dc != nullptr) {\n            jmethodID m = env->GetMethodID(dc, name, sig);\n            env->DeleteLocalRef(dc);\n            if (!env->ExceptionCheck() && m != nullptr) return m;\n            env->ExceptionClear();\n        }\n    }\n    if (clsName != nullptr && clsName[0] != '\\0') {\n        jclass c = dex2c_find_class(env, clsName);\n        if (!env->ExceptionCheck() && c != nullptr) {\n            jmethodID m = env->GetMethodID(c, name, sig);\n            env->DeleteLocalRef(c);\n            if (!env->ExceptionCheck() && m != nullptr) return m;\n            env->ExceptionClear();\n        } else {\n            env->ExceptionClear();\n        }\n    }\n    return nullptr;\n}\n\nstatic inline jfieldID dex2c_resolve_field(JNIEnv* env, jobject obj, const char* clsName, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    if (obj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null field target\");\n        return nullptr;\n    }\n    jclass c = dex2c_resolve_instance_class(env, obj, clsName);\n    if (c == nullptr) return nullptr;\n    jfieldID fid = env->GetFieldID(c, name, sig);\n    if (env->ExceptionCheck() || fid == nullptr) {\n        env->ExceptionClear();\n        env->DeleteLocalRef(c);\n        c = env->GetObjectClass(obj);\n        if (c == nullptr) return nullptr;\n        fid = env->GetFieldID(c, name, sig);\n        if (env->ExceptionCheck() || fid == nullptr) {\n            env->ExceptionClear();\n            env->DeleteLocalRef(c);\n            return nullptr;\n        }\n    }\n    *outCls = c;\n    return fid;\n}\n\nstatic inline jint dex2c_iget_int_like(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0;\n    jint v = 0;\n    switch (sig[0]) {\n        case 'Z': v = (env->GetBooleanField(obj, fid) == JNI_TRUE) ? 1 : 0; break;\n        case 'B': v = (jint)env->GetByteField(obj, fid); break;\n        case 'C': v = (jint)env->GetCharField(obj, fid); break;\n        case 'S': v = (jint)env->GetShortField(obj, fid); break;\n        default:  v = env->GetIntField(obj, fid); break;\n    }\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jfloat dex2c_iget_float(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0f;\n    jfloat v = env->GetFloatField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jlong dex2c_iget_long(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0LL;\n    jlong v = env->GetLongField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jdouble dex2c_iget_double(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0;\n    jdouble v = env->GetDoubleField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jobject dex2c_iget_object(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return nullptr;\n    jobject v = env->GetObjectField(obj, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline void dex2c_iput_int_like(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jint val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    switch (sig[0]) {\n        case 'Z': env->SetBooleanField(obj, fid, val != 0 ? JNI_TRUE : JNI_FALSE); break;\n        case 'B': env->SetByteField(obj, fid, (jbyte)val); break;\n        case 'C': env->SetCharField(obj, fid, (jchar)val); break;\n        case 'S': env->SetShortField(obj, fid, (jshort)val); break;\n        default:  env->SetIntField(obj, fid, val); break;\n    }\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_float(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jfloat val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetFloatField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_long(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jlong val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetLongField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_double(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jdouble val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetDoubleField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_iput_object(JNIEnv* env, jobject obj, const char* cls, const char* name, const char* sig, jobject val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_field(env, obj, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetObjectField(obj, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline jfieldID dex2c_resolve_static_field(JNIEnv* env, const char* cls, const char* name, const char* sig, jclass* outCls) {\n    *outCls = nullptr;\n    jclass cur = dex2c_find_class(env, cls);\n    while (cur != nullptr) {\n        jfieldID fid = env->GetStaticFieldID(cur, name, sig);\n        if (!env->ExceptionCheck() && fid != nullptr) {\n            *outCls = cur;\n            return fid;\n        }\n        env->ExceptionClear();\n        jclass next = env->GetSuperclass(cur);\n        env->DeleteLocalRef(cur);\n        cur = next;\n    }\n    return nullptr;\n}\n\nstatic inline jint dex2c_sget_int_like(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0;\n    jint v = 0;\n    switch (sig[0]) {\n        case 'Z': v = (env->GetStaticBooleanField(c, fid) == JNI_TRUE) ? 1 : 0; break;\n        case 'B': v = (jint)env->GetStaticByteField(c, fid); break;\n        case 'C': v = (jint)env->GetStaticCharField(c, fid); break;\n        case 'S': v = (jint)env->GetStaticShortField(c, fid); break;\n        default:  v = env->GetStaticIntField(c, fid); break;\n    }\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jfloat dex2c_sget_float(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0f;\n    jfloat v = env->GetStaticFloatField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jlong dex2c_sget_long(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0LL;\n    jlong v = env->GetStaticLongField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jdouble dex2c_sget_double(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return 0.0;\n    jdouble v = env->GetStaticDoubleField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline jobject dex2c_sget_object(JNIEnv* env, const char* cls, const char* name, const char* sig) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return nullptr;\n    jobject v = env->GetStaticObjectField(c, fid);\n    env->DeleteLocalRef(c);\n    return v;\n}\n\nstatic inline void dex2c_sput_int_like(JNIEnv* env, const char* cls, const char* name, const char* sig, jint val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    switch (sig[0]) {\n        case 'Z': env->SetStaticBooleanField(c, fid, val != 0 ? JNI_TRUE : JNI_FALSE); break;\n        case 'B': env->SetStaticByteField(c, fid, (jbyte)val); break;\n        case 'C': env->SetStaticCharField(c, fid, (jchar)val); break;\n        case 'S': env->SetStaticShortField(c, fid, (jshort)val); break;\n        default:  env->SetStaticIntField(c, fid, val); break;\n    }\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_float(JNIEnv* env, const char* cls, const char* name, const char* sig, jfloat val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticFloatField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_long(JNIEnv* env, const char* cls, const char* name, const char* sig, jlong val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticLongField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_double(JNIEnv* env, const char* cls, const char* name, const char* sig, jdouble val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticDoubleField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline void dex2c_sput_object(JNIEnv* env, const char* cls, const char* name, const char* sig, jobject val) {\n    jclass c = nullptr;\n    jfieldID fid = dex2c_resolve_static_field(env, cls, name, sig, &c);\n    if (fid == nullptr) return;\n    env->SetStaticObjectField(c, fid, val);\n    env->DeleteLocalRef(c);\n}\n\nstatic inline bool dex2c_check_array_bounds(JNIEnv* env, jobject arrObj, jint idx) {\n    if (arrObj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array\");\n        return false;\n    }\n    jsize len = env->GetArrayLength(static_cast<jarray>(arrObj));\n    if (idx < 0 || idx >= len) {\n        dex2c_throw_ex(env, \"java/lang/ArrayIndexOutOfBoundsException\", \"index out of bounds\");\n        return false;\n    }\n    return true;\n}\n\nstatic inline jint dex2c_aget_32(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jint val = static_cast<jint*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return val;\n}\n\nstatic inline jlong dex2c_aget_64(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0LL;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0LL;\n    jlong val = static_cast<jlong*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return val;\n}\n\nstatic inline jint dex2c_aget_boolean(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    uint8_t v = static_cast<uint8_t*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return v != 0 ? 1 : 0;\n}\n\nstatic inline jint dex2c_aget_byte(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jbyte v = static_cast<jbyte*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jint dex2c_aget_char(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jchar v = static_cast<jchar*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jint dex2c_aget_short(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return 0;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return 0;\n    jshort v = static_cast<jshort*>(raw)[idx];\n    env->ReleasePrimitiveArrayCritical(arr, raw, JNI_ABORT);\n    return (jint)v;\n}\n\nstatic inline jobject dex2c_aget_object(JNIEnv* env, jobject arrObj, jint idx) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return nullptr;\n    return env->GetObjectArrayElement(static_cast<jobjectArray>(arrObj), idx);\n}\n\nstatic inline void dex2c_aput_32(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jint*>(raw)[idx] = val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_64(JNIEnv* env, jobject arrObj, jint idx, jlong val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jlong*>(raw)[idx] = val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_boolean(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<uint8_t*>(raw)[idx] = (val != 0 ? 1 : 0);\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_byte(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jbyte*>(raw)[idx] = (jbyte)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_char(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jchar*>(raw)[idx] = (jchar)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_short(JNIEnv* env, jobject arrObj, jint idx, jint val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    jarray arr = static_cast<jarray>(arrObj);\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    static_cast<jshort*>(raw)[idx] = (jshort)val;\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_fill_array_data(JNIEnv* env, jobject arrObj, const void* data, jsize elemCount, jsize elemWidth) {\n    if (arrObj == nullptr) {\n        dex2c_throw_ex(env, \"java/lang/NullPointerException\", \"null array in fill-array-data\");\n        return;\n    }\n    jarray arr = static_cast<jarray>(arrObj);\n    jsize len = env->GetArrayLength(arr);\n    if (elemCount > len) {\n        dex2c_throw_ex(env, \"java/lang/ArrayIndexOutOfBoundsException\", \"fill-array-data overflow\");\n        return;\n    }\n    void* raw = env->GetPrimitiveArrayCritical(arr, nullptr);\n    if (!raw) return;\n    memcpy(raw, data, (size_t)elemCount * (size_t)elemWidth);\n    env->ReleasePrimitiveArrayCritical(arr, raw, 0);\n}\n\nstatic inline void dex2c_aput_object(JNIEnv* env, jobject arrObj, jint idx, jobject val) {\n    if (!dex2c_check_array_bounds(env, arrObj, idx)) return;\n    env->SetObjectArrayElement(static_cast<jobjectArray>(arrObj), idx, val);\n}\n\nstatic inline jint dex2c_div_int(JNIEnv* env, jint a, jint b) {\n    if (b == 0) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0; }\n    if (a == INT32_MIN && b == -1) return INT32_MIN;\n    return a / b;\n}\n\nstatic inline jint dex2c_rem_int(JNIEnv* env, jint a, jint b) {\n    if (b == 0) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0; }\n    if (a == INT32_MIN && b == -1) return 0;\n    return a % b;\n}\n\nstatic inline jlong dex2c_div_long(JNIEnv* env, jlong a, jlong b) {\n    if (b == 0LL) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0LL; }\n    if (a == INT64_MIN && b == -1LL) return INT64_MIN;\n    return a / b;\n}\n\nstatic inline jlong dex2c_rem_long(JNIEnv* env, jlong a, jlong b) {\n    if (b == 0LL) { dex2c_throw_ex(env, \"java/lang/ArithmeticException\", \"divide by zero\"); return 0LL; }\n    if (a == INT64_MIN && b == -1LL) return 0LL;\n    return a % b;\n}\n\nstatic inline jint dex2c_cmp_float(jfloat a, jfloat b, jint nanBias) {\n    if ((a != a) || (b != b)) return nanBias;\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_cmp_double(jdouble a, jdouble b, jint nanBias) {\n    if ((a != a) || (b != b)) return nanBias;\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_cmp_long(jlong a, jlong b) {\n    return (a > b) ? 1 : ((a < b) ? -1 : 0);\n}\n\nstatic inline jint dex2c_float_to_int(jfloat v) {\n    if ((v != v)) return 0;\n    if (v >= (jfloat)INT32_MAX) return INT32_MAX;\n    if (v <= (jfloat)INT32_MIN) return INT32_MIN;\n    return (jint)v;\n}\n\nstatic inline jlong dex2c_float_to_long(jfloat v) {\n    if ((v != v)) return 0LL;\n    if (v >= (jfloat)INT64_MAX) return INT64_MAX;\n    if (v <= (jfloat)INT64_MIN) return INT64_MIN;\n    return (jlong)v;\n}\n\nstatic inline jint dex2c_double_to_int(jdouble v) {\n    if ((v != v)) return 0;\n    if (v >= (jdouble)INT32_MAX) return INT32_MAX;\n    if (v <= (jdouble)INT32_MIN) return INT32_MIN;\n    return (jint)v;\n}\n\nstatic inline jlong dex2c_double_to_long(jdouble v) {\n    if ((v != v)) return 0LL;\n    if (v >= (jdouble)INT64_MAX) return INT64_MAX;\n    if (v <= (jdouble)INT64_MIN) return INT64_MIN;\n    return (jlong)v;\n}\n"
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    return-void

    :catchall_0
    move-exception p0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    goto :goto_throw

    :catchall_1
    move-exception p1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_throw
    throw p0
.end method

