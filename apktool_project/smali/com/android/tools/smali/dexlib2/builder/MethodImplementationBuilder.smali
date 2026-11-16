.class public Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;
.super Ljava/lang/Object;
.source "MethodImplementationBuilder.java"


# instance fields
.field private currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

.field private final impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final labels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/builder/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->labels:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    .line 52
    iget-object p1, v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-void
.end method


# virtual methods
.method public addCatch(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addCatch(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-void
.end method

.method public addCatch(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 107
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addCatch(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-void
.end method

.method public addCatch(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addCatch(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-void
.end method

.method public addEndLocal(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addEndLocal(I)V

    return-void
.end method

.method public addEpilogue()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addEpilogue()V

    return-void
.end method

.method public addInstruction(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->addInstruction(Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;)V

    .line 150
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    return-void
.end method

.method public addLabel(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/Label;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->isPlaced()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is already a label with that name."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addNewLabel()Lcom/android/tools/smali/dexlib2/builder/Label;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->labels:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public addLineNumber(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addLineNumber(I)V

    return-void
.end method

.method public addPrologue()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addPrologue()V

    return-void
.end method

.method public addRestartLocal(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addRestartLocal(I)V

    return-void
.end method

.method public addSetSourceFile(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addSetSourceFile(Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    return-void
.end method

.method public addStartLocal(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V
    .locals 1
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

    .line 125
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->currentLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->addStartLocal(ILcom/android/tools/smali/dexlib2/iface/reference/StringReference;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;)V

    return-void
.end method

.method public getLabel(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/builder/Label;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->labels:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getMethodImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/MethodImplementationBuilder;->impl:Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;

    return-object v0
.end method
