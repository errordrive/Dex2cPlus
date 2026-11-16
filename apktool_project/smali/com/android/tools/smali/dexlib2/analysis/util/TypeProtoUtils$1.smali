.class Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;
.super Ljava/lang/Object;
.source "TypeProtoUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassChain(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/smali/dexlib2/analysis/TypeProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$typeProto:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/TypeProto;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;->val$typeProto:Lcom/android/tools/smali/dexlib2/analysis/TypeProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/analysis/TypeProto;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1$1;-><init>(Lcom/android/tools/smali/dexlib2/analysis/util/TypeProtoUtils$1;)V

    return-object v0
.end method
