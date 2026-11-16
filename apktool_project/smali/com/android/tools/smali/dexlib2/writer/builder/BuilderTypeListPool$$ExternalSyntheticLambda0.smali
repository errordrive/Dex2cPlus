.class public final synthetic Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$$ExternalSyntheticLambda0;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$$ExternalSyntheticLambda0;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->lambda$internTypeList$0$com-android-tools-smali-dexlib2-writer-builder-BuilderTypeListPool(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method
