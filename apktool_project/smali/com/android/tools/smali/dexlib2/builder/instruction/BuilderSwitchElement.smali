.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;
.super Ljava/lang/Object;
.source "BuilderSwitchElement.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;


# instance fields
.field private final key:I

.field parent:Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final target:Lcom/android/tools/smali/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;ILcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->parent:Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;

    .line 49
    iput p2, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->key:I

    .line 50
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lcom/android/tools/smali/dexlib2/builder/Label;

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->key:I

    return v0
.end method

.method public getOffset()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->parent:Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;->getReferrer()Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTarget()Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lcom/android/tools/smali/dexlib2/builder/Label;

    return-object v0
.end method
