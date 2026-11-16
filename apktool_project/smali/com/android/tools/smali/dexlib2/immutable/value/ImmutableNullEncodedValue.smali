.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseNullEncodedValue;
.source "ImmutableNullEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# static fields
.field public static final INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseNullEncodedValue;-><init>()V

    return-void
.end method
