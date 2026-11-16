.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
.super Ljava/lang/Object;
.source "EncodedArrayItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$EncodedArrayItemIteratorImpl;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 58
    sget-object p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$EncodedArrayItemIteratorImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$EncodedArrayItemIteratorImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getItemCount()I
.end method

.method public abstract getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getReaderOffset()I
.end method

.method public abstract skipNext()V
.end method
