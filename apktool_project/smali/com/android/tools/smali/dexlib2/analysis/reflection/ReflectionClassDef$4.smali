.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;
.super Ljava/lang/Object;
.source "ReflectionClassDef.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getDirectMethods()Ljava/lang/Iterable;
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

    .line 162
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
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

    .line 164
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 166
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    .line 173
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 174
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$2;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;)V

    .line 173
    invoke-static {v1, v2}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    new-instance v3, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$3;

    invoke-direct {v3, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4$3;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$4;)V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    .line 188
    new-instance v1, Lcom/android/tools/smali/util/ChainedIterable$ChainedIterator;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/smali/util/ChainedIterable$ChainedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v1
.end method
