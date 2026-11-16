.class public final synthetic Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$$ExternalSyntheticLambda2;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$$ExternalSyntheticLambda2;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->lambda$internAnnotationSet$0$com-android-tools-smali-dexlib2-writer-builder-BuilderAnnotationSetPool(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    move-result-object p1

    return-object p1
.end method
