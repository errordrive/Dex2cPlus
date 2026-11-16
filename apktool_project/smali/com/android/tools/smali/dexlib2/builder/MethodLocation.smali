.class public Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
.super Ljava/lang/Object;
.source "MethodLocation.java"


# instance fields
.field codeAddress:I

.field private final debugItems:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/builder/LocatedItems<",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final labels:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/builder/LocatedItems<",
            "Lcom/android/tools/smali/dexlib2/builder/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;II)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/LocatedDebugItems;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedDebugItems;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->debugItems:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    .line 58
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/LocatedLabels;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/builder/LocatedLabels;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->labels:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    .line 60
    iput p2, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    .line 61
    iput p3, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    return-void
.end method


# virtual methods
.method public addEndLocal(I)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEndLocal;

    invoke-direct {v1, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEndLocal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEpilogue()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEpilogueBegin;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderEpilogueBegin;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLineNumber(I)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;

    invoke-direct {v1, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewLabel()Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;-><init>()V

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addPrologue()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderPrologueEnd;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderPrologueEnd;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRestartLocal(I)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;

    invoke-direct {v1, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderRestartLocal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSetSourceFile(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;

    invoke-direct {v1, p1}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderSetSourceFile;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStartLocal(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 2
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderStartLocal;-><init>(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCodeAddress()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->codeAddress:I

    return v0
.end method

.method public getDebugItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->debugItems:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getModifiableItems(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->index:I

    return v0
.end method

.method public getInstruction()Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->instruction:Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;

    return-object v0
.end method

.method public getLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/builder/Label;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->labels:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->getModifiableItems(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method mergeInto(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->labels:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->labels:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->mergeItemsIntoNext(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)V

    .line 79
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->debugItems:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    iget-object v1, p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->debugItems:Lcom/android/tools/smali/dexlib2/builder/LocatedItems;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/smali/dexlib2/builder/LocatedItems;->mergeItemsIntoNext(Lcom/android/tools/smali/dexlib2/builder/MethodLocation;Lcom/android/tools/smali/dexlib2/builder/LocatedItems;)V

    return-void
.end method
