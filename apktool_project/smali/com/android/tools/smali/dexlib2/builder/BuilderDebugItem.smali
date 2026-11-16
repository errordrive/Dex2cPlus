.class public abstract Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
.super Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;
.source "BuilderDebugItem.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/ItemWithLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeAddress()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    return v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the address of a BuilderDebugItem that isn\'t associated with a method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
