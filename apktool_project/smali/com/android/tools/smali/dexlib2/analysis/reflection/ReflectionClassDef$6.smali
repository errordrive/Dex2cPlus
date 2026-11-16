.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;
.super Ljava/util/AbstractSet;
.source "ReflectionClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getMethods()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/android/tools/smali/dexlib2/iface/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

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

    .line 217
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 219
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    .line 226
    new-instance v1, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 228
    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$2;

    invoke-direct {v3, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6$2;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    .line 234
    new-instance v2, Lcom/android/tools/smali/util/ChainedIterable$ChainedIterator;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/smali/util/ChainedIterable$ChainedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public size()I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$6;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
