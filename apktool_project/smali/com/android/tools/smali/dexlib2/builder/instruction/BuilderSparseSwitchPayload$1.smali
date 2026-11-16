.class Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;
.super Ljava/lang/Object;
.source "BuilderSparseSwitchPayload.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;",
        "Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    return-void
.end method

.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->this$0:Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    iget v2, p1, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;->key:I

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;->target:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;-><init>(Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;ILcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 57
    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->apply(Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;)Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;

    move-result-object p1

    return-object p1
.end method
