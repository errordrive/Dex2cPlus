.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderMethodHandleEncodedValue"
.end annotation


# instance fields
.field final methodHandleReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 275
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;->methodHandleReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodHandleEncodedValue;->methodHandleReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodHandleReference;

    return-object v0
.end method
