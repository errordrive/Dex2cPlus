.class public Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;
.super Ljava/lang/Object;
.source "SwitchLabelElement.java"


# instance fields
.field public final key:I

.field public final target:Lcom/android/tools/smali/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;->key:I

    .line 41
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/SwitchLabelElement;->target:Lcom/android/tools/smali/dexlib2/builder/Label;

    return-void
.end method
