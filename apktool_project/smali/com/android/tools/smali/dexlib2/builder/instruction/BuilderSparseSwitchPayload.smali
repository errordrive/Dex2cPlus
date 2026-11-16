.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;
.source "BuilderSparseSwitchPayload.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/SparseSwitchPayload;


# static fields
.field public static final OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;


# instance fields
.field protected final switchElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lcom/android/tools/smali/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lcom/android/tools/smali/dexlib2/Opcode;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;",
            ">;)V"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderSwitchPayload;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;-><init>(Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;)V

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 62
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->OPCODE:Lcom/android/tools/smali/dexlib2/Opcode;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->format:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSwitchElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderSparseSwitchPayload;->switchElements:Ljava/util/List;

    return-object v0
.end method
