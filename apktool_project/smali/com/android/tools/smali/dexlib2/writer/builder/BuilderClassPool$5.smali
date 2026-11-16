.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$5;
.super Ljava/lang/Object;
.source "BuilderClassPool.java"

# interfaces
.implements Ljava/util/function/Function;


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
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 0

    .line 255
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$5;->apply(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodParameter;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method
