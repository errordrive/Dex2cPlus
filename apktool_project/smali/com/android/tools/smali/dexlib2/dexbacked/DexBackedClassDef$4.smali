.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;
.super Ljava/lang/Object;
.source "DexBackedClassDef.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods(Z)Ljava/lang/Iterable;
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
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

.field final synthetic val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

.field final synthetic val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

.field final synthetic val$methodsStartOffset:I

.field final synthetic val$skipDuplicates:Z


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$methodsStartOffset:I

    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    iput-boolean p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$skipDuplicates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
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

    .line 329
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    .line 330
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getMethodAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object v5

    .line 331
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    .line 332
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getParameterAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object v6

    .line 334
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4$1;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 335
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;->val$methodsStartOffset:I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$4;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;ILcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V

    return-object v1
.end method
