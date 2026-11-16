.class Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
.source "VariableSizeCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->iterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 1
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
            ">;I)TT;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
