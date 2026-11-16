.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$3;
.super Ljava/lang/Object;
.source "BuilderClassPool.java"

# interfaces
.implements Ljava/util/function/Function;


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
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 1

    .line 161
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->getInitialValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;->defaultValueForType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$3;->apply(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method
