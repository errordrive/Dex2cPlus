.class Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;
.super Lcom/android/tools/smali/dexlib2/builder/Label;
.source "MutableMethodImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchPayloadReferenceLabel"
.end annotation


# instance fields
.field public switchLocation:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/Label;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$1;)V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;-><init>()V

    return-void
.end method
