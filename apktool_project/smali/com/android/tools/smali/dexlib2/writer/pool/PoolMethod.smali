.class Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "PoolMethod.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# static fields
.field public static final TRANSFORM:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected annotationSetRefListOffset:I

.field protected codeItemOffset:I

.field private final method:Lcom/android/tools/smali/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Ljava/util/function/Function;

    return-void
.end method

.method constructor <init>(Lcom/android/tools/smali/dexlib2/iface/Method;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->annotationSetRefListOffset:I

    .line 49
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->codeItemOffset:I

    .line 58
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

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

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

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

    .line 90
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

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

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

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

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
