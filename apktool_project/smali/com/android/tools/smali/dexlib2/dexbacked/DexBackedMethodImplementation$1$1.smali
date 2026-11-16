.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.source "DexBackedMethodImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;->val$endOffset:I

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    return-object p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;->readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    .line 98
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;->val$endOffset:I

    if-gt p1, v1, :cond_1

    if-ltz p1, :cond_1

    return-object v0

    .line 99
    :cond_1
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "The last instruction in method %s is truncated"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation$1$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    move-result-object p1

    return-object p1
.end method
