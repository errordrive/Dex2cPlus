.class public final synthetic Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->lambda$internArrayEncodedValue$2$com-android-tools-smali-dexlib2-writer-builder-DexBuilder(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method
