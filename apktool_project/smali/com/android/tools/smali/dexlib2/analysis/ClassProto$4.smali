.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$4;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->getDirectInterfaces()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$4;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 303
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$4;->test(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Z

    move-result p1

    return p1
.end method
