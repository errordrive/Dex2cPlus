.class Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;
.super Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;
.source "ParameterIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;->next()Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;

.field final synthetic val$annotations:Ljava/util/Set;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$annotations:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/ParameterIterator$1;->val$type:Ljava/lang/String;

    return-object v0
.end method
