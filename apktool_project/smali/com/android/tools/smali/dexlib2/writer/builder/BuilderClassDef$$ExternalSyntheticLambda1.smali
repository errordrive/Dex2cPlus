.class public final synthetic Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->lambda$getInterfaces$0(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
