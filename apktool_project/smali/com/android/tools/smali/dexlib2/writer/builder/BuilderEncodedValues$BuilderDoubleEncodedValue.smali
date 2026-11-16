.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderDoubleEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-void
.end method
