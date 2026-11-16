.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseBooleanEncodedValue;
.source "ImmutableBooleanEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# static fields
.field public static final FALSE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

.field public static final TRUE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;


# instance fields
.field protected final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;-><init>(Z)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->TRUE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    .line 38
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;-><init>(Z)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->FALSE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseBooleanEncodedValue;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->value:Z

    return-void
.end method

.method public static forBoolean(Z)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;
    .locals 0

    if-eqz p0, :cond_0

    .line 47
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->TRUE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->FALSE_VALUE:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;
    .locals 0

    .line 51
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->forBoolean(Z)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->value:Z

    return v0
.end method
