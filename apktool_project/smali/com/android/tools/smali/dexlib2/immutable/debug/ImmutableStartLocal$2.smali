.class Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$2;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "ImmutableStartLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$2;->this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$2;->this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->type:Ljava/lang/String;

    return-object v0
.end method
