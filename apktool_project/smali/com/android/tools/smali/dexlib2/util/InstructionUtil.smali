.class public final Lcom/android/tools/smali/dexlib2/util/InstructionUtil;
.super Ljava/lang/Object;
.source "InstructionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvokePolymorphic(Lcom/android/tools/smali/dexlib2/Opcode;)Z
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_POLYMORPHIC:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_POLYMORPHIC_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isInvokeStatic(Lcom/android/tools/smali/dexlib2/Opcode;)Z
    .locals 1

    .line 37
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC:Lcom/android/tools/smali/dexlib2/Opcode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->INVOKE_STATIC_RANGE:Lcom/android/tools/smali/dexlib2/Opcode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
