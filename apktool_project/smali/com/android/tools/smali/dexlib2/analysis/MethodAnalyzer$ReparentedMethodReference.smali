.class Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "MethodAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReparentedMethodReference"
.end annotation


# instance fields
.field private final baseReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

.field private final definingClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Ljava/lang/String;)V
    .locals 0

    .line 2033
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 2034
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 2035
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->definingClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 2043
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 2047
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
