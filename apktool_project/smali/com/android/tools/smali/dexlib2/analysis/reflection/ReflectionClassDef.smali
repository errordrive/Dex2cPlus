.class public Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "ReflectionClassDef.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# static fields
.field private static final DIRECT_MODIFIERS:I = 0xa


# instance fields
.field private final cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic lambda$getInterfaces$0(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

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

    .line 97
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 162
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 143
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 121
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 89
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 215
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 101
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Ljava/lang/Object;"

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 194
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method
