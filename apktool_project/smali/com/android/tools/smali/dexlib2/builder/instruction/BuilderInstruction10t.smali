.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;
.source "BuilderInstruction10t.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10t;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format10t:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/BuilderOffsetInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
