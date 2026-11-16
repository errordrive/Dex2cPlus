.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$2;
.super Ljava/lang/Object;
.source "ReflectionClassDef.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/reflect/Method;",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$2;->this$1:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/reflect/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;
    .locals 1
    .param p1    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 231
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionMethod;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 229
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$2;->apply(Ljava/lang/reflect/Method;)Lcom/android/tools/smali/dexlib2/iface/Method;

    move-result-object p1

    return-object p1
.end method
