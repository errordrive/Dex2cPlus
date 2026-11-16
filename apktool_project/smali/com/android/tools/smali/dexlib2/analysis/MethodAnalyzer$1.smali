.class Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$1;
.super Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
.source "MethodAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;-><init>(Lcom/android/tools/smali/dexlib2/analysis/ClassPath;Lcom/android/tools/smali/dexlib2/iface/Method;Lcom/android/tools/smali/dexlib2/analysis/InlineMethodResolver;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;II)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;II)V

    return-void
.end method


# virtual methods
.method protected addPredecessor(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;)Z
    .locals 0

    .line 144
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPredecessorRegisterType(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)Lcom/android/tools/smali/dexlib2/analysis/RegisterType;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 149
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
