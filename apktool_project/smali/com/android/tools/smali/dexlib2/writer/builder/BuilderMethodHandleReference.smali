.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;
.source "BuilderMethodHandleReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;


# instance fields
.field index:I

.field final memberReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final methodHandleType:I


# direct methods
.method public constructor <init>(ILcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;)V
    .locals 1
    .param p2    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    .line 44
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->methodHandleType:I

    .line 45
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->memberReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    return v0
.end method

.method public bridge synthetic getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;

    move-result-object v0

    return-object v0
.end method

.method public getMemberReference()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->memberReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderReference;

    return-object v0
.end method

.method public getMethodHandleType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->methodHandleType:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;->index:I

    return-void
.end method
