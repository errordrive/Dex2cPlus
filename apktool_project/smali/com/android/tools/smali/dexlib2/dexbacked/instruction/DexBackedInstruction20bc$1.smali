.class Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;
.super Ljava/lang/Object;
.source "DexBackedInstruction20bc.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/Reference;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;

.field final synthetic val$ex:Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;

.field final synthetic val$referenceIndex:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->val$ex:Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->val$referenceIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateReference()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->val$ex:Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;->getReferenceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->val$referenceIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "%d@%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction20bc$1;->val$ex:Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
