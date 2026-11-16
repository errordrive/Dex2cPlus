.class Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile$1;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;
.source "ImmutableSetSourceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->getSourceFileReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile$1;->this$0:Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-object v0
.end method
