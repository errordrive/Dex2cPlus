.class public Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;
.source "BuilderLineNumber.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;


# instance fields
.field private final lineNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderDebugItem;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;->lineNumber:I

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/debug/BuilderLineNumber;->lineNumber:I

    return v0
.end method
