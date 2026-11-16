.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;,
        Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 75
    sget-object p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;->INSTANCE:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;ILcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;)V

    return-object v0
.end method


# virtual methods
.method public abstract getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getSize()I
.end method
