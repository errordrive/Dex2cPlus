.class Lcom/android/tools/smali/dexlib2/Opcode$VersionConstraint;
.super Ljava/lang/Object;
.source "Opcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/Opcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionConstraint"
.end annotation


# instance fields
.field public final apiRange:Lcom/android/tools/smali/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final artVersionRange:Lcom/android/tools/smali/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final opcodeValue:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/util/Range;Lcom/android/tools/smali/util/Range;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/util/Range;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/util/Range;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/tools/smali/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/Opcode$VersionConstraint;->apiRange:Lcom/android/tools/smali/util/Range;

    .line 489
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/Opcode$VersionConstraint;->artVersionRange:Lcom/android/tools/smali/util/Range;

    .line 490
    iput p3, p0, Lcom/android/tools/smali/dexlib2/Opcode$VersionConstraint;->opcodeValue:I

    return-void
.end method
