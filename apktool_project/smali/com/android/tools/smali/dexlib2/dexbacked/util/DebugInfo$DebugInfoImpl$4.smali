.class Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->getParameterNames(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 304
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOptional(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
