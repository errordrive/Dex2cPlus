.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;
.super Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;
.source "BuilderEncodedValues.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderCharEncodedValue"
.end annotation


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-void
.end method
