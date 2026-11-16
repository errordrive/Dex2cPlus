.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction10x.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format10x:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction10x;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
