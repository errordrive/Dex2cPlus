.class Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;
.super Ljava/lang/Object;
.source "AnnotatedBytes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationEndpoint"
.end annotation


# instance fields
.field public final pointAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$1;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>()V

    return-void
.end method
