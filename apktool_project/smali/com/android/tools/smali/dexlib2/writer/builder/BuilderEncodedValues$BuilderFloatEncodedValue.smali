.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderFloatEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-void
.end method
