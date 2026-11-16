.class public Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;
.source "PoolMethodProto.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;


# instance fields
.field private final methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    return-void
.end method


# virtual methods
.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
