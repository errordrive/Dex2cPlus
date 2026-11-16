.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
.super Ljava/util/AbstractSet;
.source "BuilderAnnotationSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;


# instance fields
.field final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    .line 43
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;-><init>(Ljava/util/Set;)V

    sput-object v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
