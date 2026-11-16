.class Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$5;
.super Ljava/lang/Object;
.source "ClassPool.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;->getParameterNames(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$5;->this$0:Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 408
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 406
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/ClassPool$5;->apply(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
