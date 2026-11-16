.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;
.super Ljava/lang/Object;
.source "DexBackedClassDef.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods(Z)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final methodAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

.field final parameterAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

.field final synthetic val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

.field final synthetic val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

.field final synthetic val$methodsStartOffset:I

.field final synthetic val$skipDuplicates:Z


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$methodsStartOffset:I

    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    iput-boolean p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$skipDuplicates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getMethodAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->methodAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    .line 396
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getParameterAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->parameterAnnotationIterator:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 401
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 402
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;->val$methodsStartOffset:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$5;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V

    return-object v0
.end method
