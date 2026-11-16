.class Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "BaseExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getExceptionTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;

.field final synthetic val$exceptionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;->this$0:Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;->val$exceptionType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;->val$exceptionType:Ljava/lang/String;

    return-object v0
.end method
