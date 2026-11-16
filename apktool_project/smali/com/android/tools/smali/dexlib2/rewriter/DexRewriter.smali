.class public Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;
.super Ljava/lang/Object;
.source "DexRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;


# instance fields
.field private final annotationElementRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final callSiteReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
            ">;"
        }
    .end annotation
.end field

.field private final classDefRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;"
        }
    .end annotation
.end field

.field private final debugItemRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation
.end field

.field private final dexFileRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/DexFile;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValueRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandlerRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final instructionRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final methodImplementationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final methodParameterRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final methodReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            ">;"
        }
    .end annotation
.end field

.field private final methodRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final tryBlockRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getDexFileRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->dexFileRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 98
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getClassDefRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->classDefRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getFieldRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->fieldRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getMethodRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getMethodParameterRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodParameterRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getMethodImplementationRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodImplementationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getInstructionRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->instructionRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 104
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getTryBlockRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->tryBlockRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getExceptionHandlerRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->exceptionHandlerRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 106
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getDebugItemRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->debugItemRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getTypeRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 108
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getFieldReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->fieldReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getMethodReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 110
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getCallSiteReferenceRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->callSiteReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getAnnotationRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->annotationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getAnnotationElementRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->annotationElementRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterModule;->getEncodedValueRewriter(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->encodedValueRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-void
.end method


# virtual methods
.method public getAnnotationElementRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 131
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->annotationElementRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 130
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->annotationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getCallSiteReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 129
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->callSiteReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getClassDefRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 117
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->classDefRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getDebugItemRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 125
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->debugItemRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getDexFileRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->dexFileRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getEncodedValueRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 132
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->encodedValueRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getExceptionHandlerRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 124
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->exceptionHandlerRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->fieldReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getFieldRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 118
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->fieldRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getInstructionRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 122
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->instructionRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodImplementationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 121
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodImplementationRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodParameterRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodParameterRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 128
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodReferenceRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 119
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->methodRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getTryBlockRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 123
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->tryBlockRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
    .locals 1
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

    .line 126
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DexRewriter;->typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    return-object v0
.end method
