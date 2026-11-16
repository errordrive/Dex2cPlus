.class public Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;
.super Ljava/lang/Object;
.source "MemoizingSupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile delegate:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->delegate:Ljava/util/function/Supplier;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static memoize(Ljava/util/function/Supplier;)Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier<",
            "TT;>;"
        }
    .end annotation

    .line 67
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->delegate:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->delegate:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->delegate:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->delegate:Ljava/util/function/Supplier;

    .line 60
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/util/MemoizingSupplier;->value:Ljava/lang/Object;

    return-object v0
.end method
