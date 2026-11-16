.class public interface abstract Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
.super Ljava/lang/Object;
.source "Rewriters.java"


# virtual methods
.method public abstract getAnnotationElementRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getCallSiteReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getClassDefRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getDebugItemRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getDexFileRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/DexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getEncodedValueRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getExceptionHandlerRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getInstructionRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodImplementationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodParameterRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTryBlockRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
