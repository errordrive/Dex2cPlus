.class Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.source "CallSiteUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;->val$callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;->val$callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$2;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1$2;-><init>(Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil$1;->val$callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
