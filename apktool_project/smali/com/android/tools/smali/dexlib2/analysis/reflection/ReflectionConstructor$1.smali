.class Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;
.super Ljava/util/AbstractList;
.source "ReflectionConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor;->getParameters()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final parameters:[Ljava/lang/Class;

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor;

.field final synthetic val$method:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->val$method:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->parameters:[Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;)[Ljava/lang/Class;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->parameters:[Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
    .locals 1

    .line 63
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->get(I)Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/reflection/ReflectionConstructor$1;->parameters:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method
