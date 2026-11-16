.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;
.super Ljava/util/AbstractSet;
.source "ReflectionClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->getFields()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 145
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    .line 146
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef$3;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
