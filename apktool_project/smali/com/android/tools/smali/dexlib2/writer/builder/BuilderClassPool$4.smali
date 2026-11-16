.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$4;
.super Ljava/lang/Object;
.source "BuilderClassPool.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;)Z
    .locals 0

    .line 247
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 244
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$4;->test(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;)Z

    move-result p1

    return p1
.end method
