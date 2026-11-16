.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderShortEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-void
.end method
