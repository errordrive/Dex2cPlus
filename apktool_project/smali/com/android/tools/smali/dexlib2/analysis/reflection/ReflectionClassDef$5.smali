.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;
.super Ljava/lang/Object;
.source "ReflectionClassDef.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getVirtualMethods()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 197
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;)V

    .line 196
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5$2;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$5;)V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v1
.end method
