.class Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$1;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;
.source "CallSiteUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;->getValue()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;->val$callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    return-object v0
.end method
