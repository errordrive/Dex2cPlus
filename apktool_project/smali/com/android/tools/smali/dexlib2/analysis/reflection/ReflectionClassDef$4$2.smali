.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$2;
.super Ljava/lang/Object;
.source "ReflectionClassDef.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$2;->this$1:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 175
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$2;->test(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/lang/reflect/Method;)Z
    .locals 0
    .param p1    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0xa

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
