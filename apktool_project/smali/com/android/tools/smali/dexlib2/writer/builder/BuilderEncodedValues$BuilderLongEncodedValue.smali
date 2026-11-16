.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderLongEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-void
.end method
