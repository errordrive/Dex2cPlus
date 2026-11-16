.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "ClassProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReparentedMethod"
.end annotation


# instance fields
.field private final definingClass:Ljava/lang/String;

.field private final method:Lcom/android/tools/smali/dexlib2/iface/Method;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/Method;Ljava/lang/String;)V
    .locals 0

    .line 1273
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 1274
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 1275
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->definingClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1311
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

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

    .line 1287
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$ReparentedMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
