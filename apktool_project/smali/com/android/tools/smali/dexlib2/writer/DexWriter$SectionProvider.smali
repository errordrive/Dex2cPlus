.class public abstract Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;
.super Ljava/lang/Object;
.source "DexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SectionProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/DexWriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;)V
    .locals 0

    .line 1642
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$SectionProvider;->this$0:Lcom/android/tools/smali/dexlib2/writer/DexWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnnotationSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnnotationSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getAnnotationSetSection()Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnnotationSetSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getCallSiteSection()Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCallSiteSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getClassSection()Lcom/android/tools/smali/dexlib2/writer/ClassSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TClassSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getEncodedArraySection()Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEncodedArraySectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldSection()Lcom/android/tools/smali/dexlib2/writer/FieldSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFieldSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodHandleSection()Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMethodHandleSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodSection()Lcom/android/tools/smali/dexlib2/writer/MethodSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMethodSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getProtoSection()Lcom/android/tools/smali/dexlib2/writer/ProtoSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TProtoSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getStringSection()Lcom/android/tools/smali/dexlib2/writer/StringSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStringSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTypeListSection()Lcom/android/tools/smali/dexlib2/writer/TypeListSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType",
            "ListSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTypeSection()Lcom/android/tools/smali/dexlib2/writer/TypeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeSectionType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
