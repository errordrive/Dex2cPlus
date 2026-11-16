.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$2;
.super Ljava/lang/Object;
.source "BuilderClassPool.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/tools/smali/dexlib2/iface/Field;)Z
    .locals 0

    .line 152
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/EncodedValueUtils;->isDefaultValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 149
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$2;->test(Lcom/android/tools/smali/dexlib2/iface/Field;)Z

    move-result p1

    return p1
.end method
