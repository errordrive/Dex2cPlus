.class Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.source "StaticInitializerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil;->getStaticInitializers(Ljava/util/SortedSet;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lastIndex:I

.field final synthetic val$sortedStaticFields:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->val$sortedStaticFields:Ljava/util/SortedSet;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;->val$lastIndex:I

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .locals 1
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

    .line 61
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/util/StaticInitializerUtil$1;)V

    return-object v0
.end method
