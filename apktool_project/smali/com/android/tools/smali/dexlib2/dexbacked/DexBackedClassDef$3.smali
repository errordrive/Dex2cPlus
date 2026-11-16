.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;
.super Ljava/lang/Object;
.source "DexBackedClassDef.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields(Z)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

.field final synthetic val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

.field final synthetic val$fieldsStartOffset:I

.field final synthetic val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

.field final synthetic val$skipDuplicates:Z


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;ILjava/util/Iterator;Z)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$fieldsStartOffset:I

    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$hiddenApiRestrictionIterator:Ljava/util/Iterator;

    iput-boolean p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$skipDuplicates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$annotationsDirectory:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    .line 254
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getFieldAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3$1;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 257
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;->val$fieldsStartOffset:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$3;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;ILcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V

    return-object v1
.end method
