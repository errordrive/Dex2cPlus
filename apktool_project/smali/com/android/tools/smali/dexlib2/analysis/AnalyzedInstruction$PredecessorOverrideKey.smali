.class Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;
.super Ljava/lang/Object;
.source "AnalyzedInstruction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PredecessorOverrideKey"
.end annotation


# instance fields
.field public final analyzedInstruction:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

.field public final registerNumber:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;I)V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 663
    iput p2, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 668
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    .line 670
    iget v2, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    .line 671
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
