.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderMethodEncodedValue"
.end annotation


# instance fields
.field final methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 211
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    return-object v0
.end method
