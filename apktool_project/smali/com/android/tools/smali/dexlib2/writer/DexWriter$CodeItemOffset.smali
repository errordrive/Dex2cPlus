.class Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;
.super Ljava/lang/Object;
.source "DexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodeItemOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MethodKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field codeOffset:I

.field method:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMethodKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodKey;I)V"
        }
    .end annotation

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;->codeOffset:I

    .line 1045
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;->method:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/android/tools/smali/dexlib2/writer/DexWriter$1;)V
    .locals 0

    .line 1039
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$CodeItemOffset;-><init>(Ljava/lang/Object;I)V

    return-void
.end method
