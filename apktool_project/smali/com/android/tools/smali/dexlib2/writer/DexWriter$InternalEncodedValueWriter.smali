.class public Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
.super Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;
.source "DexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalEncodedValueWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter<",
        "TStringKey;TTypeKey;TFieldRefKey;TMethodRefKey;TAnnotationElement;TProtoRefKey;TMethodHandleKey;TEncodedValue;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/DexWriter;


# direct methods
.method private constructor <init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/DexWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 296
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->this$0:Lcom/android/tools/smali/dexlib2/writer/DexWriter;

    .line 297
    iget-object v2, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    iget-object v3, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    iget-object v4, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->fieldSection:Lcom/android/tools/smali/dexlib2/writer/FieldSection;

    iget-object v5, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodSection:Lcom/android/tools/smali/dexlib2/writer/MethodSection;

    iget-object v6, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    iget-object v7, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->methodHandleSection:Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;

    iget-object v8, p1, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/writer/EncodedValueWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/StringSection;Lcom/android/tools/smali/dexlib2/writer/TypeSection;Lcom/android/tools/smali/dexlib2/writer/FieldSection;Lcom/android/tools/smali/dexlib2/writer/MethodSection;Lcom/android/tools/smali/dexlib2/writer/ProtoSection;Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;Lcom/android/tools/smali/dexlib2/writer/DexWriter$1;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lcom/android/tools/smali/dexlib2/writer/DexWriter;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;)V

    return-void
.end method


# virtual methods
.method protected writeEncodedValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEncodedValue;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->this$0:Lcom/android/tools/smali/dexlib2/writer/DexWriter;

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->writeEncodedValue(Lcom/android/tools/smali/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    return-void
.end method
