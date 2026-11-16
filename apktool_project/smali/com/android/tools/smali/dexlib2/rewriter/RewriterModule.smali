.class public Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;
.super Ljava/lang/Object;
.source "RewriterModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotationElementRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 114
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getAnnotationRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 110
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getCallSiteReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 106
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getClassDefRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 58
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getDebugItemRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getDexFileRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/DexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DexFileRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getEncodedValueRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 118
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getExceptionHandlerRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 86
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getFieldReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 98
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getFieldRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getInstructionRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodImplementationRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodParameterRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 102
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getTryBlockRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getTypeRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;",
            ")",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    new-instance p1, Lcom/android/tools/smali/dexlib2/rewriter/TypeRewriter;

    invoke-direct {p1}, Lcom/android/tools/smali/dexlib2/rewriter/TypeRewriter;-><init>()V

    return-object p1
.end method
