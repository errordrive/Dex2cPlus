.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderByteEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V

    return-void
.end method
