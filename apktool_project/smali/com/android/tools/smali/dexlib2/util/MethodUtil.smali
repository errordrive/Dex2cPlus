.class public final Lcom/android/tools/smali/dexlib2/util/MethodUtil;
.super Ljava/lang/Object;
.source "MethodUtil.java"


# static fields
.field public static METHOD_IS_DIRECT:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static METHOD_IS_VIRTUAL:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static directMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->CONSTRUCTOR:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->directMask:I

    .line 47
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_DIRECT:Ljava/util/function/Predicate;

    .line 53
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_VIRTUAL:Ljava/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterRegisterCount(Lcom/android/tools/smali/dexlib2/iface/Method;)I
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->isStatic(Lcom/android/tools/smali/dexlib2/iface/Method;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getParameterRegisterCount(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)I

    move-result p0

    return p0
.end method

.method public static getParameterRegisterCount(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Z)I
    .locals 0
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 82
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getParameterRegisterCount(Ljava/util/Collection;Z)I

    move-result p0

    return p0
.end method

.method public static getParameterRegisterCount(Ljava/util/Collection;Z)I
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 89
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x44

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method public static getShorty(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getShortyType(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 113
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getShortyType(Ljava/lang/CharSequence;)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShortyType(Ljava/lang/CharSequence;)C
    .locals 2

    .line 103
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 p0, 0x4c

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static isConstructor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 68
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<init>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDirect(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 60
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result p0

    sget v0, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->directMask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPackagePrivate(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 72
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result p0

    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->PRIVATE:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v0

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->PROTECTED:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/tools/smali/dexlib2/AccessFlags;->PUBLIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStatic(Lcom/android/tools/smali/dexlib2/iface/Method;)Z
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 64
    sget-object v0, Lcom/android/tools/smali/dexlib2/AccessFlags;->STATIC:Lcom/android/tools/smali/dexlib2/AccessFlags;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/AccessFlags;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public static methodSignaturesMatch(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Z
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 119
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/smali/util/CharSequenceUtils;->listEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
