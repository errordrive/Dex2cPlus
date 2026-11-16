.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap$1;
.super Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;
.source "ClassProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 678
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;-><init>(IILcom/android/tools/smali/dexlib2/analysis/ClassProto$1;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 680
    iget v0, p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->size:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 684
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap$1;->offset:I

    iget p1, p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 678
    check-cast p1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap$1;->compareTo(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$FieldGap;)I

    move-result p1

    return p1
.end method
